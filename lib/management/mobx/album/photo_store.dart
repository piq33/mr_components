import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/album_models.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:bsl/repository/album_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'photo_store.g.dart';

class PhotoStore = PhotoBase with _$PhotoStore;

abstract class PhotoBase with Store {
  PhotoBase(this.repository);

  final AlbumRepository repository;

  CancelToken? _cancelToken;
  List<ResourceWrapper> data = [];

  @observable
  ObservableFuture<BslResponse<List<PhotoResourceModel>>?> fetchDataFuture =
      ObservableFuture.value(null);

  @computed
  ObservableList<ResourceWrapper> get images =>
      fetchDataFuture.status != FutureStatus.pending
          ? ObservableList.of(data.where((element) => !element.isVideo))
          : ObservableList.of([]);

  @action
  Future<List<ResourceWrapper>> fetchData({
    required StudentModel student,
  }) async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    data = [];
    _cancelToken = CancelToken();
    var future = repository.fetchPhotoList(student.leaveDate, _cancelToken);
    fetchDataFuture = ObservableFuture(future);

    try {
      final random = Random();
      final r = await future;
      List<PhotoResourceModel> photos = r.success ? r.data : List.empty();
      return data = photos
          .map(
            (e) => ResourceWrapper.fromPhotoResource(
              e,
              '${random.nextInt(100000)} => $e',
            ),
          )
          .toList();
    } catch (e, stackTrace) {
      logError('个人相册数据获取失败', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
