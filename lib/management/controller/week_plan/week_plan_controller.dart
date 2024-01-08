import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/week_plan_models.dart';
import 'package:components/util/date_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeekPlanController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final _studentService = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().weekPlanRepository;

  late TabController tabController;

  // 数据请求标记
  var loading = true.obs;

  // 周计划数据
  var plans = List<WeekPlanModel>.empty().obs;

  // 当前选中日期
  var selectedDate = DateTime.now().obs;

  // 当前选中的周
  var selectedWeek = WeekdayRange.empty().obs;

  // 当前选中日期
  var selectedDay = DateTime.now().obs;

  // 当前选中的周计划
  var selectedPlan = WeekPlanModel.empty().obs;

  CancelToken? _cancelToken;
  Worker? _studentWorker;
  Worker? _monthWorker;
  Worker? _dayWorker;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);

    _studentWorker = ever(
      _studentService.selectedStudent,
      (student) => _fetchWeekPlan(selectedDate.value),
    );
    // 监听选中日期范围的变化，获取对应的周计划
    _monthWorker = ever(selectedDate, _fetchWeekPlan);
    _dayWorker = ever(
      selectedDay,
      (dateTime) => _selectPlan(plans.value, dateTime),
    );
  }

  @override
  void onReady() {
    super.onReady();
    _fetchWeekPlan(selectedDate.value);
  }

  void _fetchWeekPlan(DateTime date) async {
    final student = _studentService.selectedStudent.value;
    final schoolCode = student.schoolCode;
    if (schoolCode == null || schoolCode.isEmpty) {
      loading.value = false;
      logWarning('当前选择学生学校编码为空: $student');
      return;
    }
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    logDebug('获取$date的周计划');
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    var lastDayOfMonth = DateTime(date.year, date.month + 1, 0);
    final leaveDate = student.leaveDate;
    if (leaveDate != null && leaveDate.isBefore(lastDayOfMonth)) {
      final yesterday = leaveDate.add(const Duration(days: -1));
      if (yesterday.sameMonthDay(firstDayOfMonth)) {
        loading.value = false;
        logWarning(
          '当前日期区间不获取周计划数据\nstart: $firstDayOfMonth\nend: $lastDayOfMonth\n离校: ${student.leaveDate}',
        );
        return;
      }
      lastDayOfMonth = yesterday;
    }
    try {
      loading.value = true;
      _cancelToken = CancelToken();
      final r = await _repository.fetchWeekPlanDateRange(
        schoolCode: schoolCode,
        phaseCode: student.phaseCode,
        courseCode: student.courseCode,
        classCode: student.classCode,
        gradeCode: student.gradeCode,
        range: WeekdayRange(
          startDate: firstDayOfMonth,
          endDate: lastDayOfMonth,
        ),
        // range,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        final list = r.data;
        final dateTime = selectedDay.value;
        plans.value = list;
        _selectPlan(list, dateTime);
      } else {
        logWarning('获取周计划失败: $r');
      }
    } catch (e, stackTrace) {
      logError('获取周计划异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  void _selectPlan(List<WeekPlanModel> plans, DateTime dateTime) {
    final plan = plans.firstWhereOrNull((element) {
          final curDate = element.currDate;
          if (curDate != null) return curDate.sameMonthDay(dateTime);

          final startDate = element.startDate;
          final endDate = element.endDate;
          if (startDate != null && endDate != null) {
            return dateTime.inside(startDate, endDate);
          }

          return false;
        }) ??
        WeekPlanModel.empty();
    selectedPlan.value = plan;
    logDebug('当前日期: $dateTime\n选中计划: $plan');
  }

  void selectTargetDate(DateTime dateTime) {
    selectedDate.value = dateTime;
    selectedDay.value = dateTime;
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _studentWorker?.dispose();
    _monthWorker?.dispose();
    _dayWorker?.dispose();
    tabController.dispose();
    super.onClose();
  }
}
