import 'dart:collection';
import 'dart:io';
import 'dart:ui';

import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/attendance/attendance_model.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/util/date_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

extension DateTimeUitls on DateTime {
  int get overviewDateKey => year * 10 + month;
}

class AttendanceController extends GetxController {
  final _studentService = Get.find<StudentService>();
  final _storageService = Get.find<StorageService>();
  final _studentRepository = Get.find<RepositoryService>().studentRepository;
  final _attendanceRepository =
      Get.find<RepositoryService>().attendanceRepository;

  UploadCancelToken? _uploadCancelToken;
  final _cancelTokens = List<CancelToken>.empty(growable: true);
  Worker? _studentWorker;
  Worker? _dateWorker;

  final selectedMonth = DateTime.now().obs;

  /// 所选月份考勤汇总
  final overview = HashMap<int, AttendanceOverviewModel>().obs;

  /// 总应到勤天数
  final totalAttendance = 0.obs;

  /// 当前所选择学生的校历信息
  final events = HashMap<DateTime, SchoolCalendarEventModel>().obs;

  /// 数据请求标记
  final loading = true.obs;

  /// 考勤详情
  final detail = AttendanceDetailModel.empty().obs;

  /// 出勤数据
  final attendances = List<AttendanceModel>.empty().obs;

  @override
  void onReady() {
    super.onReady();
    _studentWorker =
        ever(_studentService.selectedStudent, (callback) => refreshData());
    _dateWorker = ever(selectedMonth, (callback) => refreshData());
    refreshData();
  }

  void refreshData() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();
    // 清空考勤详情
    detail.value = AttendanceDetailModel.empty();
    loading.value = true;
    Future.wait([
      _fetchCalendarEvent(),
      _fetchOverviewData(),
    ])
        .then((value) => _fetchSummary())
        .then((value) => _fetchDetail())
        .whenComplete(() => loading.value = false);
  }

  Future<void> _fetchOverviewData() async {
    final student = _studentService.selectedStudent.value;
    final studentId = student.studentId;
    final schoolCode = student.schoolCode;
    final phaseCode = student.phaseCode;
    final classCode = student.classCode;
    final courseCode = student.courseCode;
    final gradeCode = student.gradeCode;
    final info = [schoolCode, phaseCode, classCode, courseCode, gradeCode];
    if (studentId == null || !_studentInfoEnsure(info)) {
      logError('当前学生信息不合法: ${student.toString()}');
      Fluttertoast.showToast(msg: '当前学生信息异常');
      return;
    }
    try {
      final date = selectedMonth.value;
      final beginDate = DateTime(date.year, 1, 1);
      final endDate = DateTime(date.year + 1, 0, 1);
      final r = await _attendanceRepository.fetchAttendanceOverview(
        studentId: studentId,
        schoolCode: schoolCode!,
        phaseCode: phaseCode!,
        classCode: classCode!,
        courseCode: courseCode!,
        gradeCode: gradeCode!,
        beginDate: beginDate,
        endDate: endDate,
      );
      final map = HashMap<int, AttendanceOverviewModel>();
      List<AttendanceOverviewModel> list = r.success ? r.data : List.empty();
      for (var overview in list) {
        if (overview.date == null) continue;
        map[overview.date!.overviewDateKey] = overview;
      }
      overview.value = map;
    } catch (e, stackTrace) {
      logError('获取考勤汇总数据异常', e, stackTrace);
    }
  }

  // 获取当月校历数据
  Future<void> _fetchCalendarEvent() async {
    events.value = HashMap();
    final currentStudent = _studentService.selectedStudent.value;
    final schoolCode = currentStudent.schoolCode;
    if (schoolCode == null) {
      logWarning('当前学生无学校信息: $currentStudent');
      return;
    }
    final now = DateTime.now();
    final month = selectedMonth.value;
    final firstDayOfMonth = DateTime(month.year, month.month, 1);
    final lastDayOfMonth = DateTime(month.year, month.month + 1, 0);
    final cancelToken = CancelToken();
    try {
      _cancelTokens.add(cancelToken);
      final r = await _studentRepository.fetchCalendarEvent(
        schoolCode: schoolCode,
        startDate: firstDayOfMonth,
        endDate: lastDayOfMonth,
      );
      if (r.success) {
        List<SchoolCalendarEventModel> list = r.data;
        final eventsMap = HashMap<DateTime, SchoolCalendarEventModel>();
        var attendance = 0;
        for (var event in list) {
          final dateTime = event.date;
          if (dateTime == null) continue;

          // 如未记录事件，或事件优先级更低，则用新事件进行覆盖
          final old = eventsMap[dateTime];
          if (old == null || old.type.index < event.type.index) {
            eventsMap[dateTime] = event;
          }
        }

        list = eventsMap.values.toList();
        // 遍历覆盖调整后的事件列表，计算应出勤天数
        for (var event in list) {
          final dateTime = event.date;
          // 只统计今天(含)及以前的工作日为应出勤天数
          if (dateTime != null &&
              (dateTime.isBefore(now) || dateTime.sameMonthDay(now)) &&
              event.isWorkday) {
            attendance++;
          }
        }

        totalAttendance.value = attendance;
        events.value = eventsMap;
        logDebug('当前月份的应到勤天数: ${totalAttendance.value}');
      }
    } catch (e, stackTrace) {
      logError('获取学生校历数据异常: ${e.toString()}', e, stackTrace);
    } finally {
      _cancelTokens.remove(cancelToken);
    }
  }

  Future<void> _fetchSummary() async {
    attendances.value = List.empty();
    final student = _studentService.selectedStudent.value;
    final studentCode = student.studentCode;
    final schoolCode = student.schoolCode;
    final selectedDate = selectedMonth.value;
    if (schoolCode == null) return;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _attendanceRepository.fetchAttendanceSummary(
        studentCode: studentCode,
        schoolCode: schoolCode,
        dateTime: selectedDate,
        cancelToken: cancelToken,
      );
      if (r.success) attendances.value = r.data;
    } catch (e, stackTrace) {
      logError('获取考勤汇总异常: ${e.toString()}', e, stackTrace);
    }
  }

  Future<void> _fetchDetail() async {
    detail.value = AttendanceDetailModel.empty();
    final student = _studentService.selectedStudent.value;
    final studentId = student.studentId;
    final schoolCode = student.schoolCode;
    final phaseCode = student.phaseCode;
    final classCode = student.classCode;
    final courseCode = student.courseCode;
    final gradeCode = student.gradeCode;
    final info = [schoolCode, phaseCode, classCode, courseCode, gradeCode];
    if (studentId == null || !_studentInfoEnsure(info)) {
      logError('当前学生信息不合法: ${student.toString()}');
      Fluttertoast.showToast(msg: '当前学生信息异常');
      return;
    }
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _attendanceRepository.fetchAttendanceDetail(
        schoolCode: schoolCode!,
        phaseCode: phaseCode!,
        classCode: classCode!,
        courseCode: courseCode!,
        gradeCode: gradeCode!,
        month: selectedMonth.value,
        studentId: studentId,
        cancelToken: cancelToken,
      );
      if (r.success) detail.value = r.data;
    } catch (e, stackTrace) {
      logError('获取考勤详情异常: ${e.toString()}', e, stackTrace);
    }
  }

  /// 提交考勤反馈
  Future<bool> submitFeedback(String feedback) async {
    logDebug('考勤反馈: $feedback');
    final student = _studentService.selectedStudent.value;
    final studentId = student.studentId;
    final schoolCode = student.schoolCode;
    final phaseCode = student.phaseCode;
    final classCode = student.classCode;
    final courseCode = student.courseCode;
    final gradeCode = student.gradeCode;
    final info = [schoolCode, phaseCode, classCode, courseCode, gradeCode];
    if (studentId == null || !_studentInfoEnsure(info)) {
      logError('当前学生信息不合法: ${student.toString()}');
      Fluttertoast.showToast(msg: '当前学生信息异常');
      return false;
    }

    try {
      SmartDialog.showLoading(msg: '正在提交...');
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _attendanceRepository.submitFeedback(
        studentId: studentId,
        schoolCode: schoolCode!,
        phaseCode: phaseCode!,
        classCode: classCode!,
        courseCode: courseCode!,
        gradeCode: gradeCode!,
        feedback: feedback,
        date: selectedMonth.value,
        cancelToken: cancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('提交考勤反馈异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
    return false;
  }

  /// 提交考勤反馈
  Future<bool> submitSignature(Image signature) async {
    logDebug('考勤签名: $signature');
    final student = _studentService.selectedStudent.value;
    final studentId = student.studentId;
    final schoolCode = student.schoolCode;
    final phaseCode = student.phaseCode;
    final classCode = student.classCode;
    final courseCode = student.courseCode;
    final gradeCode = student.gradeCode;
    if (studentId == null ||
        schoolCode == null ||
        phaseCode == null ||
        classCode == null ||
        courseCode == null ||
        gradeCode == null) {
      logError('当前学生信息不合法: ${student.toString()}');
      return false;
    }

    SmartDialog.showLoading(msg: '正在提交...');
    // 输出签名到文件
    final file = await _imageToFile(signature);
    if (file == null) return false;

    final uniqueId = student.studentId?.toString() ??
        student.potentialId?.toString() ??
        student.studentCode;
    String url = '';
    try {
      // 先上传签名
      _uploadCancelToken = UploadCancelToken();
      url = await _storageService.upload(
        uniqueId: uniqueId,
        filepath: file.path,
        cancelToken: _uploadCancelToken,
      );
    } catch (e, stackTrace) {
      logError('上传考勤签名异常: ${e.toString()}', e, stackTrace);
      SmartDialog.dismiss();
    } finally {
      try {
        file.deleteSync();
      } catch (e) {}
    }

    if (url.isEmpty) {
      Fluttertoast.showToast(msg: '签名上传异常');
      SmartDialog.dismiss();
      return false;
    }

    try {
      final attendanceCancelToken = CancelToken();
      _cancelTokens.add(attendanceCancelToken);
      final r = await _attendanceRepository.submitSignature(
        studentId: studentId,
        schoolCode: schoolCode,
        phaseCode: phaseCode,
        classCode: classCode,
        courseCode: courseCode,
        gradeCode: gradeCode,
        url: url,
        date: selectedMonth.value,
        cancelToken: attendanceCancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('提交考勤签名异常: ${e.toString()}', e, stackTrace);
      try {
        file.deleteSync();
      } catch (e) {}
    } finally {
      SmartDialog.dismiss();
    }
    return false;
  }

  // image输出为文件
  Future<File?> _imageToFile(Image signature) async {
    final bytes = await signature.toByteData(format: ImageByteFormat.png);
    if (bytes == null) return null;
    String tempPath = (await getTemporaryDirectory()).path;
    File file = File('$tempPath${Platform.pathSeparator}signature.png');
    await file.writeAsBytes(
      bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes),
    );
    return file;
  }

  bool _studentInfoEnsure(List<String?> info) {
    return info.every((element) => element != null && element.isNotEmpty);
  }

  @override
  void onClose() {
    _studentWorker?.dispose();
    _dateWorker?.dispose();
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();
    _uploadCancelToken?.cancel('dispose');
    super.onClose();
  }
}
