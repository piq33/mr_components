import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/controller/attendance/leave_types_controller.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/attendance/dayoff_model.dart';
import 'package:bsl/model/common_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DayOffHistoryController extends GetxController {
  final _repository = Get.find<RepositoryService>().attendanceRepository;
  final _leaveTypesController = Get.find<LeaveTypesController>();

  CancelToken? _cancelToken;
  // 监听请假类型列表变化
  Worker? _leaveTypesWorker;

  // 请假类型列表
  late final leaveTypes = _leaveTypesController.leaveTypes;
  // 选择的请假类型
  final selectedLeaveType = DictModel.empty().obs;
  // 请假单
  final leaveRequests = List<LeaveRequestModel>.empty().obs;
  // 是否默认选中请假类型
  final bool selectFirstWhenRefresh;

  DayOffHistoryController({this.selectFirstWhenRefresh = true});

  @override
  void onReady() {
    super.onReady();
    _leaveTypesWorker = ever(
      _leaveTypesController.leaveTypes,
      (leaveTypes) {
        // 请假类型列表刷新后默认选中第一个
        selectedLeaveType.value =
            selectFirstWhenRefresh && leaveTypes.isNotEmpty
                ? leaveTypes.first
                : DictModel.empty();
      },
    );
    if (leaveTypes.isNotEmpty) {
      selectFirstWhenRefresh && leaveTypes.isNotEmpty
          ? leaveTypes.first
          : DictModel.empty();
    }
  }

  Future<bool> cancelLeaveRequest({
    /// 请假单号
    required String leaveNo,
  }) async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.cancelLeave(
        leaveNo: leaveNo,
        cancelToken: _cancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('取消请假单异常', e, stackTrace);
    }
    return false;
  }

  @override
  void onClose() {
    _leaveTypesWorker?.dispose();
    _cancelToken?.cancel('dispose');
    super.onClose();
  }
}
