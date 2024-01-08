import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/time_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'time_service.g.dart';

class TimeRemoteService {
  late TimeRemoteApi api;

  TimeRemoteService(Dio dio) {
    api = _TimeRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class TimeRemoteApi {
  /// 按类型查询时光的年份列表
  @GET('$businessPrefix/app/timeMoment/listTimeMomentYears')
  Future<BslResponse<List<int>>> fetchTimeList(
    /// 时光类型
    @Query('catalogType') String catalog,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 按类型及年份查询时光列表
  @GET('$businessPrefix/app/timeMoment/listTimeMomentsByYear')
  Future<BslResponse<List<TimeYearListModel>>> fetchTimePageList(
    /// 年份
    @Query('yearNo') int yearNo,

    /// 时光类型
    @Query('catalogType') String catalog,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 增加时光信息
  @POST('$businessPrefix/app/timeMoment/add')
  Future<BslResponse<dynamic>> addTimeLine(
    @Body() AddTimeLineReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 编辑时光信息
  @POST('$businessPrefix/app/timeMoment/edit')
  Future<BslResponse<dynamic>> editTimeLine(
    @Body() EditTimeLineReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 删除时光信息
  @POST('$businessPrefix/app/timeMoment/delete')
  Future<BslResponse<dynamic>> deleteTimeLine(
    @Query('id') String id,
    @CancelRequest() CancelToken? cancelToken,
  );
}
