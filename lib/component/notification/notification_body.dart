import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:components/component/notification/notification_list.dart';
import 'package:components/management/services/notification_service.dart';
import 'package:components/model/notification_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    required this.path,
    required this.text,
    this.unread = 0,
    this.onPressed,
  });

  final String path;
  final String text;
  final int unread;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: REdgeInsets.all(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          badges.Badge(
            badgeStyle: BadgeStyle(
              elevation: 0,
              padding: REdgeInsets.symmetric(
                horizontal: 5,
                vertical: unread > 9 && unread < 99 ? 2 : 0,
              ),
              badgeColor: theme?.badgeColor ?? Colors.transparent,
            ),
            position: BadgePosition.topEnd(
              top: 3.r,
              end: 6.r,
            ),
            showBadge: unread > 0,
            badgeContent: Text(
              unread > 99 ? '···' : unread.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: theme?.badgeTextColor,
                fontSize: unread > 9 && unread < 99 ? 11.sp : 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            child: Image.asset(
              path,
              width: 68.w,
              height: 68.h,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: theme?.textColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationBody extends StatefulWidget {
  const NotificationBody({super.key});

  @override
  State createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  final _service = Get.find<NotificationService>();

  @override
  void initState() {
    super.initState();
    // 每次进入界面都刷新所有通知
    _service.refreshCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          final categories = _service.categories.value;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MessageType.classMessage,
              MessageType.systemMessage,
              MessageType.campusNotice,
              MessageType.otherMessage,
            ].map((e) {
              return _CategoryButton(
                path: _messageTypeIcon(e),
                text: e.display,
                unread: categories[e]?.countNum ?? 0,
                onPressed: () {
                  final parameters = {'type': e.toJson()};
                  Get.toNamed('notification/list', parameters: parameters);
                },
              );
            }).toList(),
          );
        }),
        Expanded(
          child: Obx(() {
            final loading = _service.loading.value;
            return AnimatedOpacity(
              opacity: loading ? 0 : 1,
              duration: const Duration(milliseconds: 500),
              child: NotificationList(
                messageType: MessageType.all,
                onRefresh: () => _service.refreshCategories(),
              ),
            );
          }),
        ),
      ],
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
        return '';
    }
  }
}
