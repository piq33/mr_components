import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/student_service.dart';
import 'package:bsl/model/childtask/childtask_model.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/util/date_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ChildtaskController extends GetxController {
  final _studentService = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().childtaskRepository;

  // 当前选中日期
  final selectedDate = DateTime.now().obs;

  // 当前选中的周
  final selectedWeekRange = WeekdayRange.empty().obs;

  // 当前选中日子
  final selectedDay = DateTime.now().obs;

  // 数据请求标记
  final loading = true.obs;

  // 亲子任务数据
  final infoList = List<ChildtaskInfoModel>.empty().obs;

  // 当前选中的任务数据
  late final selectChildtaskInfo = ChildtaskInfoModel.empty().obs;

  CancelToken? _cancelToken;
  Worker? _studentWorker;
  Worker? _monthWorker;
  Worker? _dayWorker;

  @override
  void onReady() {
    super.onReady();
    _studentWorker = ever(
      _studentService.selectedStudent,
      (student) => _fetchData(selectedDate.value),
    );
    // 监听选中日期范围的变化，获取对应的亲子任务
    _monthWorker = ever(selectedDate, _fetchData);
    _dayWorker = ever(selectedDay, (dateTime) {
      _selectChildtaskInfo(infoList.value, dateTime);
    });
    _fetchData(selectedDate.value);
  }

  void refreshData() => _fetchData(selectedDay.value);

  void _selectChildtaskInfo(List<ChildtaskInfoModel> list, DateTime dateTime) {
    selectChildtaskInfo.value = list.firstWhereOrNull(
          (element) => element.currDate?.sameMonthDay(dateTime) ?? false,
        ) ??
        ChildtaskInfoModel.empty();
  }

  void _fetchData(DateTime month) async {
    final student = _studentService.selectedStudent.value;
    final studentNo = student.studentNo;
    final schoolCode = student.schoolCode ?? '';
    final phaseCode = student.phaseCode ?? '';
    final courseCode = student.courseCode ?? '';
    final gradeCode = student.gradeCode ?? '';
    final classCode = student.classCode ?? '';
    if (studentNo.isEmpty ||
        schoolCode.isEmpty ||
        phaseCode.isEmpty ||
        courseCode.isEmpty ||
        gradeCode.isEmpty ||
        classCode.isEmpty) {
      loading.value = false;
      logWarning('当前选择学生信息不全，无法请求亲子任务信息: $student');
      return;
    }
    logDebug('获取$month的亲子任务');
    final firstDayOfMonth = DateTime(month.year, month.month, 1);
    var lastDayOfMonth = DateTime(month.year, month.month + 1, 0);
    final leaveDate = student.leaveDate;
    if (leaveDate != null && leaveDate.isBefore(lastDayOfMonth)) {
      final yesterday = leaveDate.add(const Duration(days: -1));
      if (yesterday.sameMonthDay(firstDayOfMonth)) {
        loading.value = false;
        logWarning(
          '当前日期区间不获取亲子任务数据\nstart: $firstDayOfMonth\nend: $lastDayOfMonth\n离校: ${student.leaveDate}',
        );
        return;
      }
      lastDayOfMonth = yesterday;
    }
    try {
      loading.value = true;
      _cancelToken = CancelToken();
      final r = await _repository.fetchChildtaskInfo(
        studentNo: studentNo,
        schoolCode: schoolCode,
        phaseCode: phaseCode,
        courseCode: courseCode,
        gradeCode: gradeCode,
        classCode: classCode,
        startDate: firstDayOfMonth,
        endDate: lastDayOfMonth,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        final list = r.data;
        infoList.value = list;
        _selectChildtaskInfo(list, selectedDay.value);
      }
    } catch (e, stackTrace) {
      logError('查询亲子作业详情异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _studentWorker?.dispose();
    _monthWorker?.dispose();
    _dayWorker?.dispose();
    super.onClose();
  }
}
