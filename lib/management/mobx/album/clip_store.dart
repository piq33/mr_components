import 'dart:math';

import 'package:components/log/global_log.dart';
import 'package:components/model/album_models.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/repository/album_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'clip_store.g.dart';

class ClipStore = ClipBase with _$ClipStore;

abstract class ClipBase with Store {
  ClipBase(this.repository);

  final AlbumRepository repository;

  CancelToken? _cancelToken;
  List<ResourceWrapper> data = [];

  @observable
  ObservableFuture<BslResponse<List<ClipResourceModel>>?> fetchDataFuture =
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
    var future = repository.fetchAllClipList(
      searchType: SearchType.all,
      leaveDate: student.leaveDate,
      cancelToken: _cancelToken,
    );
    fetchDataFuture = ObservableFuture(future);

    try {
      final random = Random();
      final r = await future;
      List<ClipResourceModel> photos = r.success ? r.data : List.empty();
      return data = photos
          .map(
            (e) => ResourceWrapper.fromClipResource(
              e,
              '${random.nextInt(100000)} => $e',
            ),
          )
          .toList();
    } catch (e, stackTrace) {
      logError('剪影相册数据获取失败', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
