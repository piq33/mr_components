import 'package:components/api/service/notification_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/notification_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class NotificationRepository {
  final NotificationRemoteService _service;

  const NotificationRepository(this._service);

  static final _dateFormat =
      DateFormat('yyyy-MM-dd HH:mm:ss', Intl.systemLocale);

  /// 查询通知分类
  Future<BslResponse<List<NotificationCategoryModel>>>
      fetchNotificationCategory(CancelToken? cancelToken) {
    return _service.api.fetchNotificationCategory(cancelToken);
  }

  /// 查询通知列表
  Future<BslResponse<BslPageResponse<List<NotificationModel>>>>
      fetchNotificationList({
    /// 当前页
    required int current,

    /// 业务类型
    required MessageType messageType,

    /// 每页数量
    required int size,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchNotificationList(
      current,
      messageType.toJson(),
      size,
      cancelToken,
    );
  }

  /// 查询通知详情
  Future<BslResponse<NotificationModel>> fetchNotificationById(
    int messageId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchNotificationById(messageId, cancelToken);
  }

  /// 查询通知确认详情
  Future<BslResponse<NotificationConfirmModel>> fetchNotificationConfirm({
    /// 学号
    required String studentCode,

    /// 通知id
    required String noticeId,
    CancelToken? cancelToken,
  }) {
    final req =
        NotificationConfirmReq(studentCode: studentCode, noticeId: noticeId);
    return _service.api.fetchNotificationConfirm(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 阅读系统通知
  Future<BslResponse<EmptyObjectData>> readSystemNotification(
    int messageId,
    CancelToken? cancelToken,
  ) {
    return _service.api.readSystemNotification(messageId, cancelToken);
  }

  /// 阅读教务通知
  Future<BslResponse<EmptyObjectData>> readNotification({
    /// 消息id
    required String noticeId,

    /// 学号
    required String studentCode,
    CancelToken? cancelToken,
  }) {
    final req = NotificationSubmitReq(
      noticeId: noticeId,
      studentCode: studentCode,
      status: 1,
      confirm: 0,
      readTime: _dateFormat.format(DateTime.now()),
    );
    return _service.api.submitNotification(req: req, cancelToken: cancelToken);
  }

  /// 教务通知签名
  Future<BslResponse<EmptyObjectData>> signatureNotification({
    /// 消息id
    required String noticeId,

    /// 学号
    required String studentCode,

    /// 签名url
    required String signatureUrl,
    CancelToken? cancelToken,
  }) {
    final req = NotificationSubmitReq(
      noticeId: noticeId,
      studentCode: studentCode,
      status: 1,
      confirm: 1,
      signImg: signatureUrl,
      readTime: _dateFormat.format(DateTime.now()),
    );
    return _service.api.submitNotification(req: req, cancelToken: cancelToken);
  }

  /// 根据业务类型阅读全部通知
  Future<BslResponse<EmptyObjectData>> readAllNotificationByType(
    String messageType,
    CancelToken? cancelToken,
  ) {
    return _service.api.readAllNotificationByType(messageType, cancelToken);
  }
}
