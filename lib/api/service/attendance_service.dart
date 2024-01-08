import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/attendance/attendance_model.dart';
import 'package:bsl/model/attendance/dayoff_model.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/zhaojiao_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'attendance_service.g.dart';

class AttendanceRemoteService {
  late AttendanceRemoteApi api;

  AttendanceRemoteService(Dio dio) {
    api = _AttendanceRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class AttendanceRemoteApi {
  /// 查询日期范围内考勤状态
  @POST(forwardPostApi)
  Future<BslResponse<List<AttendanceOverviewModel>>> fetchAttendanceOverview({
    @Query('uri')
    String uri = '/v1/bsmcore/studentAttendance/querySignatureDateSelect',
    @Query('env') String env = 'zhaojiao',
    @Body() required AttendanceOverviewReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询考勤汇总
  @POST(forwardPostApi)
  Future<BslResponse<List<AttendanceModel>>> fetchAttendanceSummary({
    @Query('uri')
    String uri = '/v1/bsmcore/studentAttendance/studentCheckWorkList',
    @Query('env') String env = 'zhaojiao',
    @Body() required AttendanceReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询考勤签名详情
  @POST(forwardPostApi)
  Future<BslResponse<AttendanceDetailModel>> fetchAttendanceDetail({
    @Query('uri')
    String uri = '/v1/bsmcore/studentAttendance/querySignatureDetail',
    @Query('env') String env = 'zhaojiao',
    @Body() required AttendanceDetailReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 提交考勤
  @POST(forwardPostApi)
  Future<BslResponse<List<AttendanceModel>>> submitAttendance({
    @Query('uri')
    String uri = '/v1/bsmcore/studentAttendance/signatureCallback',
    @Query('env') String env = 'zhaojiao',
    @Body() required AttendanceFeedbackReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询请假单
  @POST(forwardPostApi)
  Future<BslResponse<ZhaoJiaoPageResponse<List<LeaveRequestModel>>>>
      fetchLeaveList({
    @Query('uri')
    String uri = '/v1/bsmcore/studentAttendance/queryLeaveTaskPage',
    @Query('env') String env = 'zhaojiao',
    @Body() required LeavePageReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 提交请假记录
  @POST(forwardPostApi)
  Future<BslResponse<String>> submitLeave({
    @Query('uri') String uri = '/v1/bsmcore/studentAttendance/thirdAdd',
    @Query('env') String env = 'zhaojiao',
    @Body() required LeaveSubmitReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 撤销请假记录
  @GET(forwardGetApi)
  Future<BslResponse<String>> cancelLeave({
    @Query('uri') String uri = '/v1/bsmcore/studentAttendance/cancel',
    @Query('env') String env = 'zhaojiao',

    /// 请假单号
    @Query('leaveNo') required String leaveNo,
    @CancelRequest() CancelToken? cancelToken,
  });
}
