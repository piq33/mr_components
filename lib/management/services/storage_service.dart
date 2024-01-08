import 'dart:async';

import 'package:components/api/service/common_service.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/model/bosocial_models.dart';
import 'package:components/model/common_model.dart';
import 'package:components/repository/common_repository.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:tencentcloud_cos_sdk_plugin/cos.dart';
import 'package:tencentcloud_cos_sdk_plugin/cos_transfer_manger.dart';
import 'package:tencentcloud_cos_sdk_plugin/fetch_credentials.dart';
import 'package:tencentcloud_cos_sdk_plugin/pigeon.dart';

// 存储桶所在地域简称，例如广州地区是 ap-guangzhou
const _region = "ap-guangzhou";
// 存储桶名称，由 bucketname-appid 组成，appid 必须填入，可以在 COS 控制台查看存储桶名称。 https://console.cloud.tencent.com/cos5/bucket
const _bucket = "bxs-1304305658";
// 对象在存储桶中的位置标识符，即称对象键
const _cosPath = "resource";
// 存储路径终端标记
const _cosOsPath = "app";

/// 腾讯云上传服务器类
class _UploadCredential implements IFetchCredentials {
  final CommonRemoteService _service;

  const _UploadCredential(this._service);

  @override
  Future<SessionQCloudCredentials> fetchSessionCredentials() async {
    try {
      // 从临时密钥服务器获取包含了密钥信息的响应
      final r = await _service.api.fetchUploadToken();
      if (!r.success) {
        throw Exception(r.msg);
      }

      TencentCloudTempToken token = r.data;
      final credentials = token.credentials;
      if (credentials == null || !credentials.validate) {
        throw Exception('credentials is invalidate');
      }
      logInfo('腾讯云临时密钥获取结果: $token');
      // 返回临时密钥信息对象
      return SessionQCloudCredentials(
        // 临时密钥 SecretId
        secretId: credentials.tmpSecretId!,
        // 临时密钥 SecretKey
        secretKey: credentials.tmpSecretKey!,
        // 临时密钥 Token
        token: credentials.token!,
        // 临时密钥有效起始时间，单位是秒
        startTime: token.expiration?.second ?? DateTime.now().second,
        // 临时密钥有效截止时间戳，单位是秒
        expiredTime: token.expiredTime,
      );
    } catch (e, stackTrace) {
      logError('腾讯云获取临时密钥异常: ${e.toString()}', e, stackTrace);
      rethrow;
    }
  }
}

class StorageService extends GetxService {
  late final CommonRepository commonRepository =
      Get.find<RepositoryService>().commonRepository;
  late Isar isar;

  var _cosRegistered = false;

  late final cos = Cos()
    ..initWithSessionCredential(
      _UploadCredential(commonRepository.service),
    );

  void cosSetup() {
    if (_cosRegistered) return;
    _cosRegistered = true;

    // 创建 CosXmlServiceConfig 对象，根据需要修改默认的配置参数
    CosXmlServiceConfig serviceConfig = CosXmlServiceConfig(
      region: _region,
      isDebuggable: true,
      isHttps: true,
    );
    // 注册默认 COS Service
    cos.registerDefaultService(serviceConfig);
    // 创建 TransferConfig 对象，根据需要修改默认的配置参数
    // TransferConfig 可以设置智能分块阈值 默认对大于或等于2M的文件自动进行分块上传，可以通过如下代码修改分块阈值
    TransferConfig transferConfig = TransferConfig(
      forceSimpleUpload: false,
      enableVerification: true,
      // 分开上传的阈值
      divisionForUpload: 2 * 1024 * 1024,
      // 默认分块大小
      sliceSizeForUpload: 1 * 1024 * 1024,
    );
    // 注册默认 COS TransferManger
    cos.registerDefaultTransferManger(serviceConfig, transferConfig);
  }

  Future<StorageService> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [AuthenticationSchema, KnowledgeSearchHistorySchema],
      directory: dir.path,
    );
    return this;
  }

  Future<String> upload({
    required String uniqueId,
    required String filepath,
    UploadCancelToken? cancelToken,
  }) async {
    String? uploadId;
    final completer = Completer<String>();
    // 获取 TransferManager
    final transferManager = cos.getDefaultTransferManger();

    // 上传成功回调
    successCallBack(result) {
      cancelToken?.success();
      logDebug('腾讯云上传成功: $result');
      if (result is Map<String?, String?>) {
        String url = result['accessUrl'] ?? '';
        if (url.isNotEmpty) {
          completer.complete(url);
          return;
        }
      }
      completer.completeError(Exception('无合法上传地址'));
    }

    // 上传失败回调
    failCallBack(CosXmlClientException? clientException,
        CosXmlServiceException? serviceException) {
      logError(
        '腾讯云上传失败，客户端异常: ${clientException?.message}, 服务端异常: ${serviceException?.errorMessage}',
      );
      cancelToken?.clientException = clientException;
      cancelToken?.serviceException = serviceException;
      completer.completeError(clientException?.message ?? '');
    }

    // 初始化分块完成回调
    initMultipleUploadCallback(String bucket, String cosKey, String id) {
      // 用于下次续传上传的 uploadId
      uploadId = id;
      logDebug('腾讯云上传分块: $id, cosKey: $cosKey, bucket: $bucket');
    }

    final dateTime = DateTime.now();
    final extension = p.extension(filepath);
    final filename = p.basenameWithoutExtension(filepath);
    final transferTask = await transferManager.upload(
      _bucket,
      p.join(
        _cosPath,
        dateTime.year.toString(),
        dateTime.month.toString(),
        dateTime.day.toString(),
        _cosOsPath,
        'bsl${uniqueId}_${DateTime.now().microsecondsSinceEpoch}_$filename$extension',
      ),
      filePath: filepath,
      uploadId: uploadId,
      resultListener: ResultListener(successCallBack, failCallBack),
      initMultipleUploadCallback: initMultipleUploadCallback,
    );
    cancelToken?.transferTask = transferTask;
    return completer.future;
  }
}
