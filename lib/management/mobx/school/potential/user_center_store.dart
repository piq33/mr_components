import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/activity/activity_model.dart';
import 'package:bsl/repository/activity_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'user_center_store.g.dart';

class UserCenterStore = UserCenterBase with _$UserCenterStore;

abstract class UserCenterBase with Store {
  UserCenterBase(this.repository);

  final ActivityRepository repository;

  CancelToken? _cancelToken;

  @observable
  ObservableList<ActivityModel> data = ObservableList<ActivityModel>();

  @action
  Future<List<ActivityModel>> fetchData({required String phone}) async {
    data = ObservableList.of([]);
    _cancelToken = CancelToken();
    try {
      final r = await repository.fetchApplyActivities(
        phone: phone,
        cancelToken: _cancelToken,
      );
      if (r.success) data = ObservableList.of(r.data);
    } catch (e, stackTrace) {
      logError('获取已报名活动列表数据异常', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
