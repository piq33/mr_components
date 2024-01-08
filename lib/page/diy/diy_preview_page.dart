import 'package:components/component/diy/diy_preview_body.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/mixin/diy_mixin.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:components/widget/diy/diy_loading_dialog.dart';
import 'package:components/widget/diy/template_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart' hide FirstWhereExt;

/// 模板预览界面，不支持编辑模板内页面资源
/// 可切换其他模板预览
class DiyPreviewPage extends StatefulWidget {
  const DiyPreviewPage({required this.templateId, super.key});

  final String? templateId;

  @override
  State<DiyPreviewPage> createState() => _DiyPreviewPageState();
}

enum Display { template, preview }

class _DiyPreviewPageState extends State<DiyPreviewPage> with DiyPickerMixin {
  final _repository = Get.find<RepositoryService>().diyRepository;

  final _cancelTokens = List<CancelToken>.empty(growable: true);
  var _loading = true;
  var _display = Display.template;
  var _list = List<TemplateModel>.empty();
  TemplateModel? _selectedTemplate;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(covariant DiyPreviewPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.templateId == widget.templateId) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  void _refresh() async {
    final templateId = widget.templateId;
    setState(() => _loading = true);
    if (templateId == null) {
      await _init();
    } else {
      await Future.wait([
        _init(),
        _fetchDetail(templateId),
      ]);
    }
    setState(() => _loading = false);
  }

  Future<void> _init() async {
    try {
      final cancelToken = CancelToken();
      final r = await _repository.fetchTemplateList(cancelToken);
      if (r.success) {
        List<TemplateModel> list = r.data;
        list.sort((t1, t2) => t1.usePeople.compareTo(t2.usePeople));
        _list = list;
      }
    } catch (e, stackTrace) {
      logError('请求模板列表异常: ${e.toString()}', e, stackTrace);
    } finally {
      setState(() {});
    }
  }

  Future<void> _fetchDetail(String templateId) async {
    try {
      SmartDialog.showLoading(msg: '正在处理...');
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchTemplate(templateId, cancelToken);
      if (r.success) _selectedTemplate = r.data;
    } catch (e, stackTrace) {
      logError('请求模板详情异常: ${e.toString()}', e, stackTrace);
      _selectedTemplate = null;
    } finally {
      SmartDialog.dismiss();
      setState(() {});
    }
  }

  void _onTemplatePressed(BuildContext context) async {
    final model = _selectedTemplate != null
        ? DiyProductModel.fromTemplate(_selectedTemplate!)
        : DiyProductModel();
    final success = await pickPhoto(context, model, maxCount: 30);
    if (!success) return;

    logDebug('已选择图片, 当前diy: $model');
    if (!context.mounted) return;
    await pickMusic(context, model);

    logDebug('已选择音乐, 当前diy: $model');
    if ((!model.validate)) return;

    await SmartDialog.showLoading(
      useAnimation: true,
      animationTime: const Duration(seconds: 3),
      animationBuilder: (
        AnimationController controller,
        Widget child,
        AnimationParam animationParam,
      ) {
        return DiyLoadingDialog(animation: controller, child: child);
      },
      builder: (context) =>
          Assets.diy.diyLoadingIcon.image(width: 106.w, height: 106.h),
      displayTime: const Duration(seconds: 2),
    );
    Get.offAndToNamed('diy/making', arguments: model);
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '制作相册',
        actions: [
          TextButton(
            onPressed: () => _onTemplatePressed(context),
            style: TextButton.styleFrom(padding: REdgeInsets.only(right: 23)),
            child: Text(
              '使用模板',
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: _display == Display.template
          ? TemplateList(
              selectedTemplate: _selectedTemplate,
              templates: _list,
              onNonTemplatePressed: () {
                setState(() => _selectedTemplate = null);
              },
              onTemplatePressed: (template) {
                final templateId = template.templateId;
                if (templateId == null) {
                  setState(() => _selectedTemplate = null);
                  return;
                }
                _fetchDetail(templateId);
              },
            )
          : null,
      body: AnimatedOpacity(
        opacity: _loading ? 0 : 1,
        duration: const Duration(milliseconds: 300),
        child: DiyPreviewBody(
          key: ValueKey(_selectedTemplate),
          template: _selectedTemplate,
          onPressed: () {
            if (_selectedTemplate == null) return;
            setState(() {
              _display = _display == Display.template
                  ? Display.preview
                  : Display.template;
            });
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var element in _cancelTokens) {
      element.cancel('dispose');
    }
    _cancelTokens.clear();
    super.dispose();
  }
}
