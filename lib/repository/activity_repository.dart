import 'package:components/api/service/activity_service.dart';
import 'package:components/model/activity/activity_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:dio/dio.dart';

class ActivityRepository {
  final ActivityRemoteService _service;

  const ActivityRepository(this._service);

  /// 根据学校编码查询活动列表
  Future<BslResponse<List<ActivityModel>>> fetchActivityBySchoolCode({
    required int queryType,
    required List<String> schoolCodes,
    CancelToken? cancelToken,
  }) {
    final req = ActivityReq(queryType: queryType, schoolCodes: schoolCodes);
    return _service.api
        .fetchActivityBySchoolCode(req: req, cancelToken: cancelToken);
  }

  /// 获取已报名活动
  Future<BslResponse<List<ActivityModel>>> fetchApplyActivities({
    required String phone,
    CancelToken? cancelToken,
  }) {
    return _service.api
        .fetchApplyActivities(phone: phone, cancelToken: cancelToken);
  }
}
