import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/activity/activity_model.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'activity_service.g.dart';

class ActivityRemoteService {
  late ActivityRemoteApi api;

  ActivityRemoteService(Dio dio) {
    api = _ActivityRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class ActivityRemoteApi {
  /// 根据学校编码查询活动列表
  @POST(forwardPostApi)
  Future<BslResponse<List<ActivityModel>>> fetchActivityBySchoolCode({
    @Query('uri')
    String uri = '/bsmcore/activity/listCoreActivityBySchoolCodesLimitThree',
    @Query('env') String env = 'kindergarten',
    @Body() required ActivityReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取已报名活动
  @GET(forwardGetApi)
  Future<BslResponse<List<ActivityModel>>> fetchApplyActivities({
    @Query('uri')
    String uri = '/bsmcore/activity/listCoreActivityApplyForPhone',
    @Query('env') String env = 'kindergarten',
    @Query('applyPhone') required String phone,
    @CancelRequest() CancelToken? cancelToken,
  });
}
