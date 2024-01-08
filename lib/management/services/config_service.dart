import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/common_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

/// App环境配置信息
class ConfigService extends GetxService {
  final _repository = Get.find<RepositoryService>().commonRepository;

  CancelToken? _configCancelToken;
  CancelToken? _downloadCancelToken;

  var envConfig = ConfigModel.empty().obs;
  var downloadConfig = ConfigModel.empty().obs;

  var _setup = false;
  Future<void> setup() async {
    if (_setup) return;
    _setup = true;

    await Future.wait([
      _fetchDownloadConfig(),
      _fetchEnvConfig(),
    ]);
    return;
  }

  Future<void> _fetchEnvConfig() async {
    _configCancelToken?.cancel('cancel');
    _configCancelToken = null;

    try {
      _configCancelToken = CancelToken();
      final r = await _repository.fetchConfig(
        paramKey: 'env.',
        cancelToken: _configCancelToken,
      );
      if (r.success) {
        envConfig.value = r.data;
      } else {
        logError('服务器无法返回环境配置信息');
        // 一直重试到成功
        Future.delayed(const Duration(seconds: 10), _fetchEnvConfig);
      }
    } catch (e, stackTrace) {
      logError('获取环境配置信息异常: ${e.toString()}', e, stackTrace);
      // 一直重试到成功
      Future.delayed(const Duration(seconds: 10), _fetchEnvConfig);
    }
  }

  Future<void> _fetchDownloadConfig() async {
    _downloadCancelToken?.cancel('cancel');
    _downloadCancelToken = null;

    try {
      _downloadCancelToken = CancelToken();
      final r = await _repository.fetchConfig(
        paramKey: 'app.',
        cancelToken: _downloadCancelToken,
      );
      if (r.success) {
        downloadConfig.value = r.data;
      } else {
        logError('服务器无法返回下载配置信息');
        // 一直重试到成功
        Future.delayed(const Duration(seconds: 10), _fetchDownloadConfig);
      }
    } catch (e, stackTrace) {
      logError('获取下载配置信息异常: ${e.toString()}', e, stackTrace);
      // 一直重试到成功
      Future.delayed(const Duration(seconds: 10), _fetchEnvConfig);
    }
  }

  @override
  void onClose() {
    _configCancelToken?.cancel('dispose');
    _downloadCancelToken?.cancel('dispose');
    super.onClose();
  }
}
