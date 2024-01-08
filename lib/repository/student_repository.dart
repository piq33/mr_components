import 'package:bsl/api/service/student_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/gender_converter.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class StudentRepository {
  final StudentRemoteService _service;

  const StudentRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);
  static final _calendarDateFormat = DateFormat('yyyyMMdd', Intl.systemLocale);

  /// 获取学生离校日期
  Future<BslResponse<LeaveSchoolModel>> fetchLeaveSchoolDate({
    /// 学校编码
    required String schoolCode,

    /// 学生编码
    required String studentCode,
    CancelToken? cancelToken,
  }) {
    final req = LeaveSchoolReq(
      schoolCode: schoolCode,
      studentCode: studentCode,
    );
    return _service.api.fetchLeaveSchoolDate(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 获取学生的学校历史信息(包含学期)
  Future<BslResponse<List<SchoolModel>>> fetchSchoolHistory(
    int studentId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchSchoolHistory(studentId, cancelToken);
  }

  /// 获取学生的校历
  Future<BslResponse<List<SchoolCalendarEventModel>>> fetchCalendarEvent({
    required String schoolCode,
    required DateTime startDate,
    required DateTime endDate,
    CancelToken? cancelToken,
  }) {
    final req = SchoolCalendarEventReq(
      schoolCode: schoolCode,
      startDate: _calendarDateFormat.format(startDate),
      endDate: _calendarDateFormat.format(endDate),
    );
    return _service.api.fetchCalendarEvent(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 获取家长所关联学生信息
  Future<BslResponse<List<StudentModel>>> fetchStudentInfo(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchStudentInfo(cancelToken);
  }

  /// 获取家庭关系字典列表
  Future<BslResponse<List<RelationshipModel>>> fetchRelationship(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchRelationship(cancelToken);
  }

  /// 判断潜在学生是否存在
  Future<BslResponse<EmptyObjectData?>> isPotentialExist({
    required DateTime birth,
    required String name,
    required Gender gender,
    CancelToken? cancelToken,
  }) {
    return _service.api.isPotentialExist(
      birth: _dateFormat.format(birth),
      name: name,
      gender: const GenderIntJsonConverter().toJson(gender),
      cancelToken: cancelToken,
    );
  }

  /// 新增潜在学生
  Future<BslResponse<EmptyObjectData?>> insertPotentialStudent({
    String? avatar,
    required DateTime birth,
    required String name,
    required Gender gender,
    required int relationship,
    String? province,
    String? city,
    CancelToken? cancelToken,
  }) {
    final req = PotentialStudentReq(
      avatar: avatar,
      birth: _dateFormat.format(birth),
      name: name,
      gender: gender,
      relationship: relationship,
      province: province,
      city: city,
    );
    return _service.api.insertPotentialStudent(req, cancelToken);
  }

  /// 根据id获取潜在学生
  Future<BslResponse<PotentialStudentModel>> fetchPotentialStudentById(
    int potential,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchPotentialStudentById(potential, cancelToken);
  }

  /// 更新潜在学生
  Future<BslResponse<EmptyObjectData?>> updatePotentialStudent({
    required int potentialId,
    String? avatar,
    DateTime? birth,
    String? name,
    Gender? gender,
    int? relationship,
    String? identity,
    String? province,
    String? city,
    CancelToken? cancelToken,
  }) {
    final req = PotentialStudentReq(
      id: potentialId,
      avatar: avatar,
      birth: birth != null ? _dateFormat.format(birth) : null,
      name: name,
      gender: gender,
      identity: identity,
      relationship: relationship,
      province: province,
      city: city,
    );
    return _service.api.updatePotentialStudent(req, cancelToken);
  }

  /// 删除潜在生
  Future<BslResponse<EmptyObjectData?>> deletePotential({
    required int potentialId,
    int? mergePotentialId,
    int? mergeStudentId,
    CancelToken? cancelToken,
  }) {
    return _service.api.deletePotential(
      potentialId,
      mergePotentialId,
      mergeStudentId,
      cancelToken,
    );
  }

  /// 获取当前缓存的学生
  Future<BslResponse<StudentModel>> fetchCacheStudent(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchCacheStudent(cancelToken);
  }

  /// 记录所切换的学生
  Future<BslResponse<EmptyObjectData>> cacheStudent({
    int? schoolId,
    int? studentId,
    int? potentialId,
    String? yearTermCode,
    CancelToken? cancelToken,
  }) {
    return _service.api.cacheStudent(
      schoolId,
      studentId,
      potentialId,
      yearTermCode,
      cancelToken,
    );
  }

  /// 根据学生code获取学生信息
  Future<BslResponse<StudentModel>> fetchStudentInfoByCode(
    String studentCode,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchStudentInfoByCode(studentCode, cancelToken);
  }

  /// 更新学生头像
  Future<BslResponse<EmptyObjectData>> updateStudentInfo({
    /// 学号
    required String studentCode,

    /// 头像地址
    String? avatarUrl,
    CancelToken? cancelToken,
  }) {
    final req = StudentReq(studentCode: studentCode, avatarUrl: avatarUrl);
    return _service.api.updateStudentInfo(req: req, cancelToken: cancelToken);
  }
}
