import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/conservation/daylife_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'conservation_service.g.dart';

class ConservationRemoteService {
  late ConservationRemoteApi api;

  ConservationRemoteService(Dio dio) {
    api = _ConservationRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class ConservationRemoteApi {
  /// 指定学校当前学期的所有月份列表
  @GET(forwardGetApi)
  Future<BslResponse<List<String>>> fetchMonths({
    @Query('uri')
    String uri = '/v1/kindergarten/data/xiaosheng/listAllMonthsBySchoolCode',
    @Query('env') String env = 'kindergarten',
    @Query('schoolCode') required String schoolCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取学生的入园天数
  @GET(forwardGetApi)
  Future<BslResponse<int?>> fetchSchoolDays({
    @Query('uri')
    String uri = '/v1/kindergarten/data/xiaosheng/queryCurrentInSchoolDays',
    @Query('env') String env = 'kindergarten',
    @Query('studentCode') required String studentCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取学生的日报记录
  @POST(forwardPostApi)
  Future<BslResponse<List<SimpleDayLifeModel>>> fetchSimpleDayLife({
    @Query('uri')
    String uri = '/v1/kindergarten/data/xiaosheng/queryConservationDateList',
    @Query('env') String env = 'kindergarten',
    @Body() required SimpleDayLifeReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取学生当天的保育记录
  @GET(forwardGetApi)
  Future<BslResponse<List<ReportModel>>> fetchDayLifeToday({
    @Query('uri') String uri =
        '/v1/kindergarten/data/xiaosheng/listCurrentConservationsByStudentCode',
    @Query('env') String env = 'kindergarten',
    @Query('studentCode') required String studentCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取学生指定日期的保育记录
  @POST(forwardPostApi)
  Future<BslResponse<List<ReportModel>>> fetchDayLifeByDate({
    @Query('uri')
    String uri = '/v1/kindergarten/data/xiaosheng/listConservationsByParams',
    @Query('env') String env = 'kindergarten',
    @Body() required ReportReq req,
    @CancelRequest() CancelToken? cancelToken,
  });
}
