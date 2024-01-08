import 'dart:convert';

import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/notification_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/mixin/router_mixin.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/notification_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/notification_theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NotificationItem extends StatefulWidget {
  const NotificationItem({
    this.sendCid,
    this.noticeId,
    this.messageId,
    required this.title,
    required this.text,
    this.unread = false,
    required this.type,
    required this.scene,
    required this.param,
    this.dateTime,
    super.key,
  });

  final String? sendCid;
  final int? noticeId;
  final int? messageId;
  final String title;
  final String text;
  final bool unread;
  final MessageType type;
  final PushCode scene;
  final String param;
  final DateTime? dateTime;

  @override
  State createState() => NotificationItemState();
}

class NotificationItemState extends State<NotificationItem> with SceneMixin {
  final _studentService = Get.find<StudentService>();
  final _notificationService = Get.find<NotificationService>();
  final _repository = Get.find<RepositoryService>().notificationRepository;
  static final _datetimeFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  CancelToken? _cancelToken;

  // 是否需要确认
  var _param = const NotificationOtherParam();
  // 通知详情
  NotificationConfirmModel? _confirmInfo;
  late var _unread = widget.unread;

  @override
  void initState() {
    super.initState();
    _parseOtherParam();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.noticeId != widget.noticeId ||
        oldWidget.messageId != widget.messageId) {
      setState(() {
        _param = const NotificationOtherParam();
        _confirmInfo = null;
        _unread = widget.unread;
      });
    }
    _parseOtherParam();
  }

  void _parseOtherParam() {
    if (widget.scene != PushCode.notification) return;
    try {
      final param = NotificationOtherParam.fromJson(jsonDecode(widget.param));
      // 当通知需要确认时，请求通知详情
      if (param.needConfirm) _fetchConfirm();
      setState(() => _param = param);
    } catch (e, stackTrace) {
      logError('解析消息参数异常: ${widget.param}', e, stackTrace);
    }
  }

  void _fetchConfirm() async {
    final noticeId = widget.noticeId;
    if (noticeId == null) {
      logWarning('消息id异常: ${noticeId.toString()}');
      return;
    }
    final student = _studentService.selectedStudent.value;
    final studentCode = student.studentCode;
    if (studentCode.isEmpty) {
      logWarning('学号为空: ${student.toString()}');
      return;
    }
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchNotificationConfirm(
        studentCode: studentCode,
        noticeId: noticeId.toString(),
        cancelToken: _cancelToken,
      );
      if (r.success) setState(() => _confirmInfo = r.result);
    } catch (e, stackTrace) {
      logError('获取消息详情异常: ${e.toString()}', e, stackTrace);
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final notificationTheme = Theme.of(context).extension<NotificationTheme>();
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        color: notificationTheme?.cardBackground,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4.h),
            blurRadius: 12.r,
            color: notificationTheme?.cardBoxShadow ?? Colors.transparent,
          ),
        ],
      ),
      child: _param.needConfirm &&
              _confirmInfo?.confirmStatus == NotificationSignStatus.unsigned
          ? Stack(
              alignment: Alignment.center,
              children: [
                _itemContainer(mainTheme),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: REdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: notificationTheme?.tbcBackground,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.r),
                        bottomLeft: Radius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      '待确认',
                      style: TextStyle(
                        color: notificationTheme?.tbcTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : _itemContainer(mainTheme),
    );
  }

  Widget _itemContainer(MainTheme? mainTheme) {
    final dateTime = widget.dateTime;
    return TextButton(
      onPressed: () {
        // 系统通知需要单独处理
        final systemMessage = widget.type == MessageType.systemMessage;
        if (_unread) {
          // 设置通知已读，然后刷新通知列表
          systemMessage
              ? _notificationService
                  .readSystemNotification(widget.messageId)
                  .then((success) {
                  if (success) {
                    _notificationService.refreshCategories();
                    setState(() => _unread = false);
                  }
                })
              // 来自教务的消息需要先请求我们的服务器标记"已读"
              : _notificationService
                  .readSystemNotification(widget.messageId)
                  .then(
                    (success) async => success
                        ? await _notificationService.readEduNotification(
                            widget.sendCid,
                            _studentService.selectedStudent.value.studentCode)
                        : false,
                  )
                  .then((success) {
                  if (success) {
                    _notificationService.refreshCategories();
                    setState(() => _unread = false);
                  }
                });
        }
        toScene(
          scene: widget.scene,
          messageId: widget.messageId?.toString(),
          param: widget.param,
          callback: (messageId, param) {
            if (!systemMessage) {
              toNotificationDetailPage(messageId: messageId, param: param);
            }
          },
        );
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            // 切图阴影偏下，需要偏移使其居于垂直中间
            padding: REdgeInsets.only(top: 8),
            child: badges.Badge(
              badgeStyle: BadgeStyle(
                elevation: 0,
                padding: REdgeInsets.all(4),
                badgeColor: mainTheme?.badgeColor ?? Colors.transparent,
              ),
              position: BadgePosition.topEnd(
                top: 10.r,
                end: 14.r,
              ),
              showBadge: _unread,
              child: Image.asset(
                _messageTypeIcon(widget.type),
                width: 68.w,
                height: 68.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: REdgeInsets.only(left: 6)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  // 避免待确认标记覆盖
                  padding: REdgeInsets.only(right: 40),
                  child: Text(
                    widget.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        widget.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: mainTheme?.subTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    if (dateTime != null)
                      Container(
                        margin: REdgeInsets.only(left: 8),
                        child: Text(
                          _datetimeFormat.format(dateTime),
                          style: TextStyle(
                            color: mainTheme?.cornerTextColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: REdgeInsets.only(right: 12)),
        ],
      ),
    );
  }

  String _messageTypeIcon(MessageType type) {
    switch (type) {
      case MessageType.classMessage:
        return Assets.notification.classIcon.path;
      case MessageType.systemMessage:
        return Assets.notification.systemIcon.path;
      case MessageType.campusNotice:
        return Assets.notification.schoolIcon.path;
      case MessageType.otherMessage:
        return Assets.notification.otherIcon.path;
      default:
        return Assets.common.defaultImage.path;
    }
  }

  @override
  void dispose() {
    _cancelToken?.cancel();
    super.dispose();
  }
}
