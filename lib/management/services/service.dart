import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/config_service.dart';
import 'package:bsl/management/services/notification_service.dart';
import 'package:bsl/management/services/push_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/management/services/student_service.dart';
import 'package:bsl/management/services/todo_service.dart';
import 'package:get/get.dart';

Future<void> initService() async {
  logDebug('starting services ...');
  // 存储服务需要最先进行初始化
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => RepositoryService().init());
  Get.lazyPut(() => ConfigService());
  Get.lazyPut(() => AuthService());
  Get.lazyPut(() => StudentService());
  Get.lazyPut(() => TodoService());
  Get.lazyPut(() => NotificationService());
  Get.put(PushService());
  logDebug('All services started...');
}
