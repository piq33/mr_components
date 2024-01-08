import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'student_service.g.dart';

class StudentRemoteService {
  late StudentRemoteApi api;

  StudentRemoteService(Dio dio) {
    api = _StudentRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class StudentRemoteApi {
  /// 获取学生离校日期
  @POST(forwardPostApi)
  Future<BslResponse<LeaveSchoolModel>> fetchLeaveSchoolDate({
    @Query('uri') String uri = '/v1/bsmcore/student/queryStudentLeaveDate',
    @Query('env') String env = 'zhaojiao',
    @Body() required LeaveSchoolReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取学生的学校历史信息(包含学期)
  @GET('$dataPrefix/app/student/history/school')
  Future<BslResponse<List<SchoolModel>>> fetchSchoolHistory(
    @Query('studentId') int studentId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取校历
  @POST(forwardPostApi)
  Future<BslResponse<List<SchoolCalendarEventModel>>> fetchCalendarEvent({
    @Query('uri') String uri = '/v1/bsm/data/getListDataCalendarDetailForApi',
    @Query('env') String env = 'zhaojiao',
    @Body() required SchoolCalendarEventReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取家长所关联学生信息
  @GET('$dataPrefix/app/family/student')
  Future<BslResponse<List<StudentModel>>> fetchStudentInfo(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取家庭关系字典列表
  @GET('$dataPrefix/app/family/relationship')
  Future<BslResponse<List<RelationshipModel>>> fetchRelationship(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 判断潜在学生是否存在
  @GET('$dataPrefix/app/potential/exist')
  @Headers({hideMsgHeader: ''})
  Future<BslResponse<EmptyObjectData?>> isPotentialExist({
    @Query('studentBirth') required String birth,
    @Query('studentName') required String name,
    @Query('studentSex') required int gender,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 新增潜在学生
  @POST('$dataPrefix/app/potential')
  Future<BslResponse<EmptyObjectData?>> insertPotentialStudent(
    @Body() PotentialStudentReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 根据id获取潜在学生
  @GET('$dataPrefix/app/potential/{id}')
  Future<BslResponse<PotentialStudentModel>> fetchPotentialStudentById(
    @Path('id') int potential,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 更新潜在学生
  @PUT('$dataPrefix/app/potential')
  Future<BslResponse<EmptyObjectData?>> updatePotentialStudent(
    @Body() PotentialStudentReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 删除潜在学生
  @DELETE('$dataPrefix/app/potential/{beRemovedPotentialId}')
  Future<BslResponse<EmptyObjectData?>> deletePotential(
    @Path('beRemovedPotentialId') int potentialId,
    @Query('mergePotentialId') int? mergePotentialId,
    @Query('studentId') int? mergeStudentId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取当前缓存的学生
  @GET('$dataPrefix/app/student/cache')
  Future<BslResponse<StudentModel>> fetchCacheStudent(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 记录所切换的学生
  @POST('$dataPrefix/app/student/cache')
  Future<BslResponse<EmptyObjectData>> cacheStudent(
    @Query('schoolId') int? schoolId,
    @Query('studentId') int? studentId,
    @Query('potentialStuId') int? potentialId,
    @Query('yearTermCode') String? yearTermCode,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 根据学生code获取学生信息
  @GET('$dataPrefix/app/student')
  Future<BslResponse<StudentModel>> fetchStudentInfoByCode(
    @Query('studentCode') String studentCode,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 更新学生头像
  @PUT('$dataPrefix/app/student')
  Future<BslResponse<EmptyObjectData>> updateStudentInfo({
    @Body() required StudentReq req,
    @CancelRequest() CancelToken? cancelToken,
  });
}
