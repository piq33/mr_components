import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/bill_models.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

mixin BillConfigMixin on GetxController {
  final _billRepository = Get.find<RepositoryService>().billRepository;

  /// 当前所选择学生所在学校的配置信息
  var configs = BillConfigMap.empty().obs;

  CancelToken? _configCancelToken;

  Future<BillConfigMap> fetchSchoolConfigs(List<BillModel> list) async {
    try {
      final set = list
          .where((e) => e.schoolCode.isNotEmpty)
          .map((e) => e.schoolCode)
          .toSet();
      await Future.wait(set.map((e) => fetchSchoolConfig(e)));
    } catch (e, stackTrace) {
      logError('获取学校配置异常', e, stackTrace);
    }
    return configs.value;
  }

  Future<List<BillConfigModel>> fetchSchoolConfig(String schoolCode) async {
    try {
      _configCancelToken = CancelToken();
      final r = await _billRepository.fetchBillConfig(
        schoolCode,
        _configCancelToken,
      );
      if (!r.success) return List.empty();
      final map = <String, BillConfigModel>{};
      List<BillConfigModel> list = r.data;
      for (var config in list) {
        map[config.binding] = config;
      }
      configs.value.pushConfig(schoolCode, map);
      return list;
    } catch (e, stackTrace) {
      logError('获取学校配置异常', e, stackTrace);
    } finally {
      _configCancelToken = null;
    }
    return List.empty();
  }

  @override
  void onClose() {
    _configCancelToken?.cancel('dispose');
    super.onClose();
  }
}
