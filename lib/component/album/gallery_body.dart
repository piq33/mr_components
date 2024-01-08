import 'package:components/event/timeline_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/mixin/media_mixin.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/model/time_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/widget/album/gallery_card.dart';
import 'package:components/widget/common/button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class GalleryBody extends StatefulWidget {
  const GalleryBody({required this.studentAlbumId, super.key});

  final String studentAlbumId;

  @override
  State<GalleryBody> createState() => _GalleryBodyState();
}

class _GalleryBodyState extends State<GalleryBody> with AddMediaMixin {
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(covariant GalleryBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.studentAlbumId == widget.studentAlbumId) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  void _refresh() async {
    try {
      SmartDialog.showLoading(msg: '正在加载...');
      _cancelToken = CancelToken();
      final r = await _repository.fetchTemplateDetail(
        widget.studentAlbumId,
        _cancelToken,
      );
      if (r.success) {
        TemplateDetailModel detail = r.data;
        _titleController.text = detail.title;
        _contentController.text = detail.content;
        _catalogType = detail.catalogType;
        final cover = detail.cover ?? '';
        _cover =
            cover.isEmpty ? null : UploadFile.fromRemote(FileType.image, cover);
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取相册详情异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
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

      final r = await _repository.updateGallery(
        studentAlbumId: widget.studentAlbumId,
        title: title,
        content: content,
        cover: cover.remote,
        catalogType: catalogType,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        Fluttertoast.showToast(msg: '提交成功');
        // 通知时光刷新
        eventBus.fire(
          RefreshTimelineEvent(
            catalogs: [catalogType],
            operation: OperationType.add,
          ),
        );
        Get.back();
      }
    } catch (e, stackTrace) {
      logError('提交相册异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
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
              '修改',
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
