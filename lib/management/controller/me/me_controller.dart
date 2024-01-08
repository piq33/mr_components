import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/student_service.dart';
import 'package:bsl/mixin/bill_mixin.dart';
import 'package:bsl/model/bill_models.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MeController extends GetxController with BillConfigMixin {
  final _billRepository = Get.find<RepositoryService>().billRepository;
  final _authService = Get.find<AuthService>();
  final _studentService = Get.find<StudentService>();

  late final user = _authService.user;
  late final selectedStudent = _studentService.selectedStudent;
  final toBePaidList = List<BillModel>.empty().obs;

  CancelToken? _cancelToken;
  Worker? _worker;

  @override
  void onReady() {
    super.onReady();
    // 每当选择的学生发生变动，刷新账单信息
    _worker = ever(_studentService.selectedStudent, (student) {
      final studentCode = student.studentCode;
      if (studentCode.isEmpty) {
        logWarning('该学生无学号，无法获取账单信息');
        toBePaidList.value = List.empty();
        return;
      }
      _fetchBill(studentCode);
    });

    final student = _studentService.selectedStudent.value;
    final studentCode = student.studentCode;
    if (studentCode.isEmpty) {
      logWarning('该学生无学号，无法获取账单信息');
      toBePaidList.value = List.empty();
      return;
    }
    _fetchBill(studentCode);
  }

  void _fetchBill(String studentCode) async {
    try {
      logDebug('获取学生: $studentCode待缴费账单列表');
      _cancelToken = CancelToken();
      final req =
          BillReq(studentCode: studentCode, status: BillStatus.toBePaid);
      final r = await _billRepository.fetchBill(
        req: req,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        // 根据账单配置，过滤不显示的账单数据
        List<BillModel> list = r.data;
        final configs = await fetchSchoolConfigs(list);
        toBePaidList.value =
            list.where((bill) => configs.billEnable(bill)).toList();
      }
    } catch (e, stackTrace) {
      logError('获取待缴费列表异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _worker?.dispose();
    super.onClose();
  }
}
