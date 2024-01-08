import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/album_models.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:bsl/repository/album_repository.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';

part 'album_picker_store.g.dart';

class AlbumPickerStore = AlbumPickerBase with _$AlbumPickerStore;

abstract class AlbumPickerBase with Store {
  AlbumPickerBase({
    required this.maxCount,
    required this.repository,
    required this.student,
    List<String>? initial,
  }) : defaultSelected = initial ?? [];

  final int maxCount;
  final AlbumRepository repository;
  final StudentModel student;
  // 默认选中
  final List<String> defaultSelected;

  final _cancelTokens = List<CancelToken>.empty(growable: true);

  @observable
  bool photosLoading = true;

  @observable
  bool clipsLoading = true;

  @observable
  ObservableList<ResourceWrapper> photos = ObservableList.of([]);

  @observable
  ObservableList<ResourceWrapper> clips = ObservableList.of([]);

  @observable
  ObservableList<String> selectedList = ObservableList.of([]);

  @action
  Future<void> refreshImages() async {
    await Future.wait([fetchPhotoList(), fetchClipList()]);
    return;
  }

  @action
  void onPicSelect(ResourceWrapper resource, bool checked) {
    if (checked) {
      if (selectedList.length >= maxCount) {
        Fluttertoast.showToast(msg: "最多能选择$maxCount张");
        return;
      }
      selectedList.add(resource.url);
    } else {
      selectedList.remove(resource.url);
    }
  }

  @action
  Future<AlbumPickerModel> submit() async {
    // 原始图片列表中要新增的
    var addPics =
        selectedList.where((pic) => !defaultSelected.contains(pic)).toList();
    // 在原始图片列表中要删除的
    var dltPics =
        defaultSelected.where((pic) => !selectedList.contains(pic)).toList();

    return AlbumPickerModel(addPics: addPics, dltPics: dltPics);
  }

  Future<void> fetchPhotoList() async {
    final leaveDate = student.leaveDate;
    photosLoading = true;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      var r = await repository.fetchPhotoList(leaveDate, cancelToken);
      if (!r.success) return;
      final random = Random();
      List<PhotoResourceModel> list = r.data;
      // 过滤视频
      photos = ObservableList.of(
        list.where((element) => !element.isVideo).map((e) {
          return ResourceWrapper.fromPhotoResource(
            e,
            '${random.nextInt(100000)} => $e',
          );
        }).toList(),
      );
      for (var resource in photos) {
        if (defaultSelected.contains(resource.url) &&
            selectedList.length < maxCount) {
          selectedList.add(resource.url);
        }
      }
    } catch (e, stackTrace) {
      logError('个人相册数据获取失败: ${e.toString()}', e, stackTrace);
    } finally {
      photosLoading = false;
    }
  }

  Future<void> fetchClipList() async {
    final leaveDate = student.leaveDate;
    clipsLoading = true;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      var r = await repository.fetchAllClipList(
        searchType: SearchType.all,
        leaveDate: leaveDate,
        cancelToken: cancelToken,
      );
      if (!r.success) return;
      final random = Random();
      List<ClipResourceModel> list = r.data;
      // 过滤视频
      clips = ObservableList.of(
        list.where((element) => !element.isVideo).map((e) {
          return ResourceWrapper.fromClipResource(
            e,
            '${random.nextInt(100000)} => $e',
          );
        }).toList(),
      );
      for (var resource in clips) {
        if (defaultSelected.contains(resource.url) &&
            selectedList.length < maxCount) {
          selectedList.add(resource.url);
        }
      }
    } catch (e, stackTrace) {
      logError('剪影相册数据获取失败: ${e.toString()}', e, stackTrace);
    } finally {
      clipsLoading = false;
    }
  }

  void dispose() {
    for (final cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();
  }
}
