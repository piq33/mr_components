import 'package:bsl/component/diy/diy_edit_body.dart';
import 'package:bsl/component/diy/diy_view_body.dart';
import 'package:bsl/event/timeline_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:bsl/widget/common/list_loading.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

enum _PageStatus { view, edit }

class DiyViewPage extends StatefulWidget {
  const DiyViewPage({
    required this.onlyEdit,
    required this.studentAlbumId,
    super.key,
  });

  final bool onlyEdit;
  final String studentAlbumId;

  @override
  State<DiyViewPage> createState() => _DiyViewPageState();
}

class _DiyViewPageState extends State<DiyViewPage> {
  final _userService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _repository = Get.find<RepositoryService>().diyRepository;

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;

  late var _status = widget.onlyEdit ? _PageStatus.edit : _PageStatus.view;
  var _loading = true;
  TemplateDetailModel? _detail;
  DiyProductModel? _product;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(covariant DiyViewPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.studentAlbumId == widget.studentAlbumId) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  void _refresh() async {
    setState(() => _loading = true);
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTemplateDetail(
        widget.studentAlbumId,
        _cancelToken,
      );
      if (r.success) {
        TemplateDetailModel detail = r.data;
        _product = DiyProductModel.fromTemplateDetail(detail);
      }
    } catch (e, stackTrace) {
      logError('获取diy相册详情失败: ${e.toString()}', e, stackTrace);
    } finally {
      setState(() => _loading = false);
    }
  }

  void _submit() async {
    FocusScope.of(context).requestFocus(FocusNode());

    try {
      SmartDialog.showLoading(msg: '正在提交...');
      // 上传图片
      final files = await _uploadFiles();
      if (files.any((element) => !element.uploaded)) {
        SmartDialog.dismiss();
        Fluttertoast.showToast(msg: '图片上传失败, 请重试');
        return;
      }

      final template = _product?.template;
      final templateId = template?.templateId;
      _product?.syncTitle();

      BslResponse<EmptyObjectData> r;
      if (template == null || templateId == null || templateId.isEmpty) {
        r = await _repository.editNoTemplateDiy(
          studentAlbumId: widget.studentAlbumId,
          music: _product?.music,
          // 封面不包含在pages中
          uploadFiles: files,
          cancelToken: _cancelToken,
        );
      } else {
        r = await _repository.editTemplateDiy(
          studentAlbumId: widget.studentAlbumId,
          music: _product?.music,
          pages: template.pages,
          cancelToken: _cancelToken,
        );
      }

      if (r.success) {
        Fluttertoast.showToast(msg: '提交成功');
        // 通知时光刷新
        eventBus.fire(
          RefreshTimelineEvent(
            catalogs:
                _detail?.catalogType != null ? [_detail!.catalogType] : [],
            operation: OperationType.update,
          ),
        );

        widget.onlyEdit
            ? Get.back()
            : setState(() => _status = _PageStatus.view);
      }
    } catch (e, stackTrace) {
      logError('提交相册异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  Future<List<UploadFile>> _uploadFiles() async {
    final userId = _userService.user.value.userId;
    final files = List<UploadFile>.empty(growable: true);
    for (PageJsonModel page in _product?.template?.pages ?? []) {
      for (PageResource resource in page.resources) {
        final data = resource.data;
        if (data is! ResourceImageValue) continue;

        final value = data.value;
        if (value == null) continue;

        switch (data.type) {
          case ResourceValueType.url:
            files.add(UploadFile.fromRemote(FileType.image, value));
            break;
          case ResourceValueType.file:
            final file = UploadFile(type: FileType.image, local: value);
            _uploadCancelToken = UploadCancelToken();
            final url = await _storageService.upload(
              uniqueId: userId.toString(),
              filepath: file.local,
              cancelToken: _uploadCancelToken,
            );
            file.remote = url;
            file.uploaded = true;

            // 更新资源值
            resource.data = ResourceImageValue(
              type: ResourceValueType.url,
              value: url,
            );
            break;
          default:
            break;
        }
      }
    }
    return files;
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: 'DIY相册',
        actions: [
          if (_status == _PageStatus.view)
            AnimatedOpacity(
              opacity: _product == null ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: TextButton(
                onPressed: () {
                  setState(() => _status = _PageStatus.edit);
                },
                style: TextButton.styleFrom(
                  padding: REdgeInsets.only(right: 23),
                ),
                child: Text(
                  '编辑',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          if (_status == _PageStatus.edit)
            AnimatedOpacity(
              opacity: _product == null ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: TextButton(
                onPressed: _submit,
                style: TextButton.styleFrom(
                  padding: REdgeInsets.only(right: 23),
                ),
                child: Text(
                  '保存',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _loading
            ? const ListLoadingAnimation()
            : _status == _PageStatus.view
                ? DiyViewBody(key: ObjectKey(_detail), product: _product)
                : DiyEditBody(key: ObjectKey(_detail), product: _product),
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _uploadCancelToken?.cancel('dispose');
    super.dispose();
  }
}
