import 'dart:collection';

import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/notification_models.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class NotificationService extends GetxService {
  final _service = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().notificationRepository;

  final loading = true.obs;
  final categories = HashMap<MessageType, NotificationCategoryModel>().obs;

  final _cancelTokens = List<CancelToken>.empty(growable: true);
  Worker? _worker;

  void _fetchCategory() async {
    try {
      loading.value = true;
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchNotificationCategory(cancelToken);
      if (r.success) {
        final List<NotificationCategoryModel> data = r.data;
        final map = HashMap<MessageType, NotificationCategoryModel>();
        for (var item in data) {
          map[item.messageType] = item;
        }
        categories.value = map;
      }
    } catch (e, stackTrace) {
      logError('获取通知分类异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  void refreshCategories() => _fetchCategory();

  // 教务通知已读
  Future<bool> readEduNotification(String? noticeId, String studentCode) async {
    if (noticeId == null) {
      logError('消息id异常');
      return false;
    }
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.readNotification(
        noticeId: noticeId.toString(),
        studentCode: studentCode,
        cancelToken: cancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('阅读教务消息异常: $noticeId', e, stackTrace);
    }
    return false;
  }

  // 阅读系统通知
  Future<bool> readSystemNotification(int? messageId) async {
    if (messageId == null) {
      logError('消息id异常');
      return false;
    }
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r =
          await _repository.readSystemNotification(messageId, cancelToken);
      return r.success;
    } catch (e, stackTrace) {
      logError('阅读消息异常: $messageId', e, stackTrace);
    }
    return false;
  }

  @override
  void onReady() {
    super.onReady();
    _fetchCategory();
    _worker = ever(_service.selectedStudent, (student) {
      categories.value = HashMap();
      if (!student.validate) return;
      _fetchCategory();
    });
  }

  @override
  void onClose() {
    _worker?.dispose();
    for (final cancelToken in _cancelTokens) {
      cancelToken.cancel();
    }
    super.onClose();
  }
}
