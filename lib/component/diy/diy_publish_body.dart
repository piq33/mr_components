import 'package:bsl/event/timeline_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/mixin/media_mixin.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/model/time_models.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/widget/album/gallery_card.dart';
import 'package:bsl/widget/common/button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DiyPublishBody extends StatefulWidget {
  const DiyPublishBody({required this.product, super.key});

  final DiyProductModel product;

  @override
  State<DiyPublishBody> createState() => _DiyPublishBodyState();
}

class _DiyPublishBodyState extends State<DiyPublishBody> with AddMediaMixin {
  final _userService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _repository = Get.find<RepositoryService>().diyRepository;
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;
  UploadFile? _cover;
  CatalogType? _catalogType;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.product.title ?? '';
  }

  @override
  void didUpdateWidget(covariant DiyPublishBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.text = widget.product.title ?? '';
  }

  void _submit() async {
    FocusScope.of(context).requestFocus(FocusNode());

    final title = _titleController.text;
    final content = _contentController.text;
    final cover = _cover;
    final catalogType = _catalogType;
    if (title.isEmpty) {
      Fluttertoast.showToast(msg: '请输入标题');
      return;
    }
    if (cover == null) {
      Fluttertoast.showToast(msg: '请选择封面');
      return;
    }
    if (catalogType == null) {
      Fluttertoast.showToast(msg: '请选择标签');
      return;
    }
    if (content.isEmpty) {
      Fluttertoast.showToast(msg: '请输入内容');
      return;
    }

    try {
      SmartDialog.showLoading(msg: '正在提交...');
      // 上传封面
      if (!cover.uploaded) {
        _uploadCancelToken = UploadCancelToken();
        final userId = _userService.user.value.userId;
        final url = await _storageService.upload(
          uniqueId: userId.toString(),
          filepath: cover.local,
          cancelToken: _uploadCancelToken,
        );
        cover.remote = url;
        cover.uploaded = true;
      }

      // 上传图片
      final files = await _uploadFiles();
      if (files.any((element) => !element.uploaded)) {
        SmartDialog.dismiss();
        Fluttertoast.showToast(msg: '图片上传失败, 请重试');
        return;
      }
      final template = widget.product.template;
      final templateId = template?.templateId;
      BslResponse<EmptyObjectData> r;
      if (template == null || templateId == null || templateId.isEmpty) {
        r = await _repository.addNoTemplateDiy(
          title: title,
          music: widget.product.music,
          content: content,
          cover: _cover,
          catalogType: _catalogType,
          uploadFiles: files,
          cancelToken: _cancelToken,
        );
      } else {
        r = await _repository.addTemplateDiy(
          templateId: templateId,
          title: title,
          music: widget.product.music,
          content: content,
          cover: _cover,
          catalogType: catalogType,
          pages: template.pages,
          cancelToken: _cancelToken,
        );
      }

      if (r.success) {
        Fluttertoast.showToast(msg: '提交成功');
        // 通知时光刷新
        eventBus.fire(
          RefreshTimelineEvent(
            catalogs: [catalogType],
            operation: OperationType.add,
          ),
        );
        // 通知making页面提交成功
        Get.back(result: true);
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
    for (PageJsonModel page in widget.product.template?.pages ?? []) {
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
            files.add(file);

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
    return Column(
      children: [
        GalleryCard(
          cover: _cover,
          catalogType: _catalogType,
          titleController: _titleController,
          contentController: _contentController,
          onCoverAdded: () async {
            final file = await addImage();
            if (file == null) return;
            setState(() => _cover = file);
          },
          onCoverDeleted: () => setState(() => _cover = null),
          onCatalogTypePressed: (catalogType) {
            setState(() => _catalogType = catalogType);
          },
        ),
        DefaultButton(
          height: 47.h,
          margin: REdgeInsets.symmetric(horizontal: 94, vertical: 36),
          onTap: _submit,
          child: Center(
            child: Text(
              '立即发布',
              style: TextStyle(
                color: mainTheme?.mainButtonTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _uploadCancelToken?.cancel('dispose');
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
