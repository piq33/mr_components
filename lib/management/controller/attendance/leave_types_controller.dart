import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LeaveTypesController extends GetxController {
  final _commonRepository = Get.find<RepositoryService>().commonRepository;

  /// 请假类型列表
  final leaveTypes = List<DictModel>.empty().obs;
  CancelToken? _cancelToken;

  @override
  void onReady() {
    super.onReady();
    _fetchLeaveTypes();
  }

  void _fetchLeaveTypes() async {
    try {
      _cancelToken?.cancel('dispose');
      _cancelToken = null;

      _cancelToken = CancelToken();
      final r = await _commonRepository.fetchDictData(
        'Leave_Type',
        _cancelToken,
      );
      if (r.success) leaveTypes.value = r.data;
    } catch (e, stackTrace) {
      logError('获取请假类型列表异常: ${e.toString()}', e, stackTrace);
      // 重复获取请假类型
      Future.delayed(const Duration(seconds: 3), _fetchLeaveTypes);
    } finally {
      _cancelToken = null;
    }
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    super.onClose();
  }
}
