import 'dart:async';

import 'package:components/event/student_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/util/global.dart';
import 'package:components/util/list_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FirstWhereExt;

/// 用户所绑定的学校信息
class StudentController extends GetxController {
  final _cancelTokens = List<CancelToken>.empty(growable: true);
  final _studentRepository = Get.find<RepositoryService>().studentRepository;

  final _userService = Get.find<AuthService>();
  final _studentService = Get.find<StudentService>();

  StreamSubscription? _subscription;
  Worker? _worker;

  /// 当前用户
  Rx<UserModel> get loginUser => _userService.user;

  /// 当前所选择的学生
  Rx<StudentModel> get selectedStudent => _studentService.selectedStudent;

  var loading = true.obs;

  /// 登录用户所绑定的学生列表
  var students = <StudentModel>[].obs;

  /// 当前所选择学生的学校历史信息
  var schools = <SchoolModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _worker = ever(_userService.user, (user) => _refresh());
  }

  @override
  void onReady() {
    super.onReady();
    _refresh();
  }

  void _registerStudentSync() {
    _subscription?.cancel();
    _subscription = null;

    _subscription = eventBus.on<StudentSyncEvent>().listen((event) {
      final oldStudent = selectedStudent.value;
      final newStudent = event.student;

      final overrideCache = oldStudent.sameAs(newStudent) &&
          !oldStudent.baseInfoEqual(newStudent);
      if (overrideCache) {
        logDebug('覆盖缓存学生信息: $oldStudent -> $newStudent');
        selectedStudent.value = oldStudent.sync(newStudent);
      }

      final indexOfStudents = students.indexWhere((student) =>
          student.sameAs(newStudent) && !student.baseInfoEqual(newStudent));
      if (indexOfStudents != -1) {
        logDebug('覆盖学生列表信息: ${students[indexOfStudents]} -> $newStudent');
        students[indexOfStudents] = oldStudent.sync(newStudent);
      }
    });
  }

  Future<void> refreshStudent() {
    selectedStudent.value = StudentModel.empty();
    return _refresh();
  }

  // 刷新绑定学生列表、当前选择学生以及学生的学校/学期历史数据
  Future<void> _refresh() async {
    loading.value = true;
    await Future.wait([_fetchCacheStudent(), _fetchBindingStudents()]);
    // 缓存学生及学生列表请求成功后
    // 若此时不存在缓存学生，则默认选择学生列表第一位
    final student = selectedStudent.value;
    logDebug('当前缓存学生: $student');
    if (!student.validate && students.isNotEmpty) {
      final firstStudentOfList = students.first;
      logDebug('默认选中第一位学生: $firstStudentOfList');
      await switchStudent(student, firstStudentOfList);
    }
    loading.value = false;
    return;
  }

  // 获取登录用户所绑定的学生列表
  Future<void> _fetchBindingStudents() async {
    final cancelToken = CancelToken();
    try {
      _cancelTokens.add(cancelToken);
      final r = await _studentRepository.fetchStudentInfo(cancelToken);
      if (r.success) students.value = r.data;
    } catch (e, stackTrace) {
      logError('获取绑定学生列表异常', e, stackTrace);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
  }

  // 获取当前缓存的学生
  Future<void> _fetchCacheStudent() async {
    final cancelToken = CancelToken();
    _cancelTokens.add(cancelToken);

    try {
      final student = await _studentRepository
          .fetchCacheStudent(cancelToken)
          .then<StudentModel?>(
        (r) async {
          StudentModel? student = r.data;
          if (r.success && student != null && student.hasStudentId) {
            final result = await Future.wait([
              _fetchLeaveDate(student),
              _fetchSchoolHistory(student),
            ]);
            return result.isNotEmpty ? result.first ?? student : student;
          }
          return r.success ? student : null;
        },
      );
      if (student != null) {
        selectedStudent.value = student;
        _registerStudentSync();
      }
    } catch (e, stackTrace) {
      logError('获取缓存学生信息异常', e, stackTrace);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
  }

  // 获取学生离校日期, 在_fetchCacheStudent方法后执行, 合并到studentModel的对应属性
  Future<StudentModel?> _fetchLeaveDate(StudentModel student) async {
    final schoolCode = student.schoolCode;
    if (schoolCode == null) {
      logWarning('当前学生无绑定学校信息: $student');
      return student;
    }

    final studentCode = student.studentCode;
    final cancelToken = CancelToken();
    _cancelTokens.add(cancelToken);
    final leaveResponse = await _studentRepository.fetchLeaveSchoolDate(
      schoolCode: schoolCode,
      studentCode: studentCode,
      cancelToken: cancelToken,
    );
    LeaveSchoolModel leaveSchool = leaveResponse.data;
    return leaveResponse.success
        ? student.copyWith(leaveDate: leaveSchool.leaveDate)
        : student;
  }

  // 获取所选择学生的学校/学期历史数据
  Future<StudentModel?> _fetchSchoolHistory(StudentModel student) async {
    final studentId = student.studentId;
    if (studentId == null) {
      logWarning('当前学生无学生id: $student');
      schools.value = List.empty();
      return student;
    }
    final cancelToken = CancelToken();
    try {
      _cancelTokens.add(cancelToken);
      final r = await _studentRepository.fetchSchoolHistory(
        studentId,
        cancelToken,
      );
      if (r.success) schools.value = r.data;
    } catch (e) {
      logError('获取学生历史学校学期异常', e);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
    return student;
  }

  // 切换学生, 同时向后台缓存学生信息
  Future<bool> switchStudent(
    StudentModel oldStudent,
    StudentModel newStudent,
  ) async {
    final cancelToken = CancelToken();
    _cancelTokens.add(cancelToken);
    try {
      final studentId = newStudent.studentId ?? -1;
      final potentialId = newStudent.potentialId ?? -1;
      final r = await _studentRepository.cacheStudent(
        schoolId: newStudent.schoolId,
        studentId: studentId != -1 ? studentId : null,
        potentialId: potentialId != -1 ? potentialId : null,
        yearTermCode: newStudent.yearTermCode,
        cancelToken: cancelToken,
      );
      if (r.success) {
        logDebug('从$oldStudent\n切换至$newStudent');
        schools.value = List.empty();
        await Future.wait([_fetchCacheStudent(), _userService.fetchUserInfo()]);
        return true;
      }
    } catch (e) {
      logError('学生切换异常', e);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
    return false;
  }

  // 切换学校
  Future<bool> switchSchool(SchoolModel? school) async {
    final cancelToken = CancelToken();
    _cancelTokens.add(cancelToken);
    try {
      final yearTermList = school?.yearTermList ?? List.empty();
      final curYearTerm =
          yearTermList.firstWhereOrNull((element) => element.curYearTerm);

      final r = await _studentRepository.cacheStudent(
        schoolId: school?.id,
        yearTermCode: curYearTerm?.code,
        cancelToken: cancelToken,
      );
      if (r.success) {
        selectedStudent.value = StudentModel.empty();
        await Future.wait([_fetchCacheStudent(), _userService.fetchUserInfo()]);
        return true;
      }
    } catch (e) {
      logError('学校切换异常', e);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
    return false;
  }

  @override
  void onClose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();

    _worker?.dispose();
    _worker = null;
    _subscription?.cancel();
    _subscription = null;
    selectedStudent.value = StudentModel.empty();
    super.onClose();
  }
}
