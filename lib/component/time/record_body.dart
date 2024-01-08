import 'dart:async';
import 'dart:io';

import 'package:components/event/timeline_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/mixin/media_mixin.dart';
import 'package:components/model/album_models.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/time_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/widget/common/button.dart';
import 'package:components/widget/time/addition_media_button.dart';
import 'package:components/widget/time/content_box.dart';
import 'package:components/widget/time/naming_textfield.dart';
import 'package:components/widget/time/tag_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';

class RecordBody extends StatefulWidget {
  const RecordBody({this.moment, super.key, this.catalog});

  final CatalogType? catalog;
  final TimeMomentsModel? moment;

  @override
  State<RecordBody> createState() => _RecordBodyState();
}

class _RecordBodyState extends State<RecordBody> with AddMediaMixin {
  final _userService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _timeRepository = Get.find<RepositoryService>().timeRepository;

  final _textNamingController = TextEditingController();
  final _textContentController = TextEditingController();

  late String? timeMomentId = widget.moment?.timeMomentId;
  late CatalogType _catalog = widget.catalog ?? CatalogType.first;

  final _imgList = List<UploadFile>.empty(growable: true);
  final _audioList = List<UploadFile>.empty(growable: true);
  final _videoList = List<UploadFile>.empty(growable: true);

  bool get isEdit => timeMomentId != null;

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;

  @override
  void initState() {
    super.initState();
    final moment = widget.moment;
    if (moment != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => _init(moment),
      );
    }
  }

  void _init(TimeMomentsModel moment) async {
    _textNamingController.text = moment.timeMomentName ?? '';
    _textContentController.text = moment.timeMomentContent ?? '';
    _catalog = moment.catalog;
    _imgList.addAll(moment.picUrls.map((e) {
      return UploadFile.fromRemote(FileType.image, e);
    }));
    _audioList.addAll(moment.audioUrls.map((e) {
      return UploadFile.fromRemote(FileType.audio, e);
    }));
    _videoList.addAll(moment.videoUrls.map((e) {
      return UploadFile.fromRemote(FileType.video, e);
    }));
    setState(() {});
  }

  // 跳转到剪影列表选择相片
  void _selectedPic4Images() async {
    // 当前已上传的图片
    final selectedPic =
        _imgList.where((i) => i.uploaded).map((i) => i.remote).toList();
    final res = await Get.toNamed(
      'album/picker',
      arguments: selectedPic,
    );

    if (!mounted) return;
    Navigator.of(context).pop();

    if (res is! AlbumPickerModel? || res == null) return;
    logInfo('select result: $res');

    final addPics = res.addPics;
    final dltPics = res.dltPics;
    var picList = _imgList.where((i) => !dltPics.contains(i.remote)).toList();
    picList.addAll(
      addPics.map((e) => UploadFile.fromRemote(FileType.image, e)),
    );
    _imgList.clear();
    _imgList.addAll(picList);
    setState(() {});
  }

  void _onSubmit() async {
    final timeMomentName = _textNamingController.text;
    final timeMomentContent = _textContentController.text;
    final catalog = _catalog;

    if (timeMomentName.isEmpty) {
      Fluttertoast.showToast(msg: '请输入时光名字');
      return;
    }

    if (timeMomentContent.isEmpty &&
        _imgList.isEmpty &&
        _audioList.isEmpty &&
        _videoList.isEmpty) {
      Fluttertoast.showToast(msg: '请输入内容、图片、视频或音频');
      return;
    }

    try {
      SmartDialog.showLoading(msg: '正在提交...');
      final attachs = await _uploadFiles();
      _cancelToken = CancelToken();

      if (isEdit) {
        var req = EditTimeLineReq(
          attachs: attachs,
          catalogType: catalog,
          timeMomentName: timeMomentName,
          timeMomentContent: timeMomentContent,
          timeMomentId: int.parse(timeMomentId as String),
        );
        final r = await _timeRepository.editTimeLine(
          req: req,
          cancelToken: _cancelToken,
        );
        if (r.success) {
          // 所选择类型有可能发生变动，因此需要刷新旧的时间线
          eventBus.fire(
            RefreshTimelineEvent(
              moment: widget.moment,
              catalogs: [widget.moment!.catalog, catalog],
              operation: OperationType.update,
            ),
          );
          Fluttertoast.showToast(msg: '修改成功');
          logDebug('时光编辑成功: $req');
          Get.back();
        }
      } else {
        var req = AddTimeLineReq(
          attachs: attachs,
          catalogType: catalog,
          timeMomentName: timeMomentName,
          timeMomentContent: timeMomentContent,
        );
        final r = await _timeRepository.addTimeLine(
          req: req,
          cancelToken: _cancelToken,
        );
        if (r.success) {
          eventBus.fire(
            RefreshTimelineEvent(
              catalogs: [catalog],
              operation: OperationType.add,
            ),
          );
          Fluttertoast.showToast(msg: '保存成功');
          logDebug('时光保存成功: $req');
          UmengCommonSdk.onEvent(
            '_publish',
            {
              'user': _userService.user.value.userId.toString(),
              'type': catalog.display,
            },
          );
          Get.back();
        }
      }
    } catch (e, stackTrace) {
      logError('编辑时光异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  Future<List<AttachsModel>> _uploadFiles() async {
    final userId = _userService.user.value.userId;
    final files = [..._imgList, ..._audioList, ..._videoList];
    for (var file in files) {
      // 跳过已上传的文件
      if (file.uploaded) continue;
      _uploadCancelToken = UploadCancelToken();
      final url = await _storageService.upload(
        uniqueId: userId.toString(),
        filepath: file.local,
        cancelToken: _uploadCancelToken,
      );
      file.remote = url;
      file.uploaded = true;
    }
    if (files.any((element) => !element.uploaded)) {
      Fluttertoast.showToast(msg: '上传失败，请重试');
      throw Exception('上传失败');
    }
    return files
        .map((e) => AttachsModel(fileType: e.type, url: e.remote))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: REdgeInsets.only(top: 25, right: 16, bottom: 30, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TagList(
                selectedTag: _catalog,
                onTap: (catalog) {
                  setState(() => _catalog = catalog);
                },
              ),
              SizedBox(height: 15.h),
              NamingTextField(controller: _textNamingController),
              SizedBox(height: 15.h),
              ContentBox(
                imgList: _imgList,
                audioList: _audioList,
                videoList: _videoList,
                controller: _textContentController,
                onAddPressed: (fileType) {
                  switch (fileType) {
                    case FileType.image:
                      _addImage(context);
                      break;
                    case FileType.video:
                      _addVideo(context);
                      break;
                    case FileType.audio:
                      _addVoice(context);
                      break;
                    default:
                      break;
                  }
                },
                onPreviewPressed: (file) {
                  switch (file.type) {
                    case FileType.image:
                      final parameters = {
                        'url': file.remote,
                        'path': file.local,
                        'tag': file.availableUrl,
                      };
                      Get.toNamed('image', parameters: parameters);
                      break;
                    case FileType.video:
                      final parameters = {
                        'url': file.remote,
                        'path': file.local
                      };
                      Get.toNamed('video', parameters: parameters);
                      break;
                    default:
                      break;
                  }
                },
                onDeletePressed: _removeFile,
              ),
            ],
          ),
        ),
        DefaultButton(
          height: 47.h,
          margin: REdgeInsets.symmetric(horizontal: 78),
          onTap: _onSubmit,
          child: Center(
            child: Text(
              isEdit ? "立即更新" : "立即发布",
              style: TextStyle(
                color: mainTheme?.mainButtonTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(height: 30.h)
      ],
    );
  }

  void _addImage(BuildContext context) async {
    var file = await addImage(
      AdditionMediaButton(
        text: "我的相册",
        onGalleryPressed: _selectedPic4Images,
      ),
    );
    if (file == null || !mounted) return;
    setState(() => _imgList.add(file));
  }

  void _addVoice(BuildContext context) async {
    var file = await addVoice();
    if (file == null || !mounted) return;
    setState(() => _audioList.add(file));
  }

  void _addVideo(BuildContext context) async {
    var file = await addVideo();
    if (file == null || !mounted) return;
    setState(() => _videoList.add(file));
  }

  void _removeFile(UploadFile file) async {
    try {
      if (file.temp) {
        await File(file.local).delete();
        logDebug('删除缓存文件: ${file.local}');
      }
    } catch (e, stackTrace) {
      logError('删除缓存文件: ${file.local}异常', e, stackTrace);
    } finally {
      switch (file.type) {
        case FileType.image:
          setState(() => _imgList.remove(file));
          break;
        case FileType.video:
          setState(() => _videoList.remove(file));
          break;
        case FileType.audio:
          setState(() => _audioList.remove(file));
          break;
        default:
          break;
      }
    }
  }

  @override
  void dispose() {
    // 清理缓存文件
    for (var file in (_imgList + _videoList + _audioList)) {
      try {
        if (file.temp) File(file.local).delete();
      } catch (e, stackTrace) {
        logError('删除缓存文件异常: $file', e, stackTrace);
      }
    }
    _cancelToken?.cancel('dispose');
    _uploadCancelToken?.cancel('dispose');
    super.dispose();
  }
}
