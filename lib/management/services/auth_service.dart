import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/model/auth_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

/// 用户授权管理
class AuthService extends GetxService {
  final storageService = Get.find<StorageService>();
  final repository = Get.find<RepositoryService>().authRepository;
  final authentication = Authentication.logout().obs;
  final user = UserModel.empty().obs;

  bool get logged => authentication.value.logged;
  String? get token => authentication.value.token;

  Future<Authentication> storeAuth(AuthModel auth) async {
    final tempAuthentication = Authentication.convertFromAuthModel(auth);
    final isar = storageService.isar;
    await isar.writeTxn(() async {
      await isar.authentications.put(tempAuthentication);
    });
    authentication.value = tempAuthentication;
    return tempAuthentication;
  }

  Future<Authentication?> recoveryAuth() async {
    final isar = storageService.isar;
    Authentication? tempAuthentication;
    final tempAuthentications =
        await isar.authentications.where(sort: Sort.desc).findAll();
    if (tempAuthentications.isNotEmpty) {
      tempAuthentication = tempAuthentications.first;
    }

    /// 检查恢复的用户授权是否过期
    final now = DateTime.now();
    if (tempAuthentication != null &&
        tempAuthentication.expireTime.isAfter(now)) {
      authentication.value = tempAuthentication;
      return tempAuthentication;
    } else {
      /// 清空当前缓存的授权信息
      await isar.writeTxn(() => isar.authentications.clear());
      authentication.value = Authentication.logout();
    }
    return null;
  }

  /// 潜生切换到正式生
  Future<void> regular(String? studentCode, CancelToken? cancelToken) async {
    final regularResponse = await repository.regular(studentCode, cancelToken);
    if (regularResponse.success) {
      final oldAuthentication = authentication.value;
      final tempAuthentication =
          Authentication.convertFromAuthModel(regularResponse.data);
      authentication.value = tempAuthentication;
      final newUserInfoSuccess = await fetchUserInfo();
      if (newUserInfoSuccess) {
        final isar = storageService.isar;
        await isar.writeTxn(() async {
          await isar.authentications.clear();
          await isar.authentications.put(tempAuthentication);
        });
      } else {
        authentication.value = oldAuthentication;
      }
    }
  }

  Future<bool> refreshUserInfo() async {
    emptyUserInfo();
    final r = await repository.fetchUserInfo();
    if (r.success) user.value = r.data;
    return r.success;
  }

  Future<bool> fetchUserInfo() async {
    final r = await repository.fetchUserInfo();
    if (r.success) user.value = r.data;
    return r.success;
  }

  Future<void> clearAuth() async {
    final isar = storageService.isar;
    await isar.writeTxn(() => isar.authentications.clear());
    authentication.value = Authentication.logout();
    return;
  }

  void emptyUserInfo() async {
    user.value = UserModel.empty();
  }
}
