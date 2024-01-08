import 'dart:collection';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DayOffSubmitController extends GetxController {
  final _studentRepository = Get.find<RepositoryService>().studentRepository;
  final _attendanceRepository =
      Get.find<RepositoryService>().attendanceRepository;

  DayOffSubmitController(this._student);

  final StudentModel _student;
  CancelToken? _eventsCancelToken;
  CancelToken? _submitCancelToken;

  /// 可请假天数
  final dayOff = 0.obs;

  /// 请假天数计算标记(含获取校历数据请求loading)
  final calculating = false.obs;

  void clearSelect() {
    calculating.value = false;
    dayOff.value = 0;
  }

  // 获取指定日期校历数据
  Future<void> selectRange(DateTime? startDate, DateTime? endDate) async {
    if (startDate == null || endDate == null) {
      dayOff.value = 0;
      return;
    }

    _eventsCancelToken?.cancel('dispose');
    _eventsCancelToken = null;

    calculating.value = true;
    final schoolCode = _student.schoolCode;
    if (schoolCode == null) {
      logWarning('当前学生无学校信息: $_student');
      return;
    }
    try {
      _eventsCancelToken = CancelToken();
      final r = await _studentRepository.fetchCalendarEvent(
        schoolCode: schoolCode,
        startDate: startDate,
        endDate: endDate,
      );
      if (!r.success) return;

      List<SchoolCalendarEventModel> list = r.data;
      final eventsMap = HashMap<DateTime, SchoolCalendarEventModel>();
      var total = 0;

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
        if (event.isWorkday) total++;
      }

      dayOff.value = total;
      logDebug('$startDate至$endDate范围内可请假天数: $total天');
    } catch (e, stackTrace) {
      logError('获取学生校历数据异常: ${e.toString()}', e, stackTrace);
    } finally {
      _eventsCancelToken = null;
      calculating.value = false;
    }
  }

  /// 提交请假申请
  Future<bool> submitDayOff(DateTime? startDate, DateTime? endDate,
      DictModel? leaveType, String? reason) async {
    final studentId = _student.studentId;
    final studentCode = _student.studentCode;
    final leaveNum = dayOff.value;
    if (studentId == null || studentCode.isEmpty) {
      logWarning('当前学生无学号及id: $_student');
      Fluttertoast.showToast(msg: '当前学生信息异常，无法请假');
      return false;
    }
    if (leaveType == null) {
      Fluttertoast.showToast(msg: '请选择请假类型');
      return false;
    }
    if (startDate == null) {
      Fluttertoast.showToast(msg: '请选择开始时间');
      return false;
    }
    if (endDate == null) {
      Fluttertoast.showToast(msg: '请选择结束时间');
      return false;
    }
    if (calculating.isTrue) {
      Fluttertoast.showToast(msg: '请等待请假天数计算完毕');
      return false;
    }
    if (leaveNum <= 0) {
      Fluttertoast.showToast(msg: '请假范围不能为0天');
      return false;
    }
    if (reason == null || reason.isEmpty) {
      Fluttertoast.showToast(msg: '请输入请假原因');
      return false;
    }

    try {
      _submitCancelToken = CancelToken();
      final r = await _attendanceRepository.submitLeave(
        studentId: studentId,
        studentCode: studentCode,
        leaveNum: leaveNum,
        beginDate: startDate,
        endDate: endDate,
        leaveType: leaveType.code,
        remark: reason,
        cancelToken: _submitCancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('提交请假申请异常', e, stackTrace);
    }
    return false;
  }

  @override
  void onClose() {
    _eventsCancelToken?.cancel('dispose');
    _submitCancelToken?.cancel('dispose');
    super.onClose();
  }
}
