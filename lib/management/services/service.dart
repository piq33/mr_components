import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/config_service.dart';
import 'package:components/management/services/notification_service.dart';
import 'package:components/management/services/push_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/management/services/todo_service.dart';
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
