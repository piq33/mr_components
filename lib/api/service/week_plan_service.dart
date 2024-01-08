import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/week_plan_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'week_plan_service.g.dart';

class WeekPlanRemoteService {
  late WeekPlanRemoteApi api;

  WeekPlanRemoteService(Dio dio) {
    api = _WeekPlanRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class WeekPlanRemoteApi {
  /// 获取日期对应的周计划
  @GET(forwardGetApi)
  Future<BslResponse<List<WeekPlanModel>>> fetchWeekPlanDateRange({
    @Query('uri')
    String uri = '/v1/kindergarten/bussiness/weekplan/listWithDate',
    @Query('env') String env = 'kindergarten',

    /// 学校编码
    @Query('schoolCode') String? schoolCode,

    /// 学段编码
    @Query('phaseCode') String? phaseCode,

    /// 课程编码
    @Query('courseCode') String? courseCode,

    /// 班级编码
    @Query('classCode') String? classCode,

    /// 年级编码
    @Query('gradeCode') String? gradeCode,

    /// 开始日期
    @Query('startDate') required String startDate,

    /// 结束日期
    @Query('endDate') required String endDate,
    @CancelRequest() CancelToken? cancelToken,
  });
}
