import 'package:components/model/notification/notification_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/notification_theme.dart';
import 'package:components/widget/common/bsl_html_widget.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class _TeacherContainer extends StatelessWidget {
  const _TeacherContainer({required this.notification});

  final NotificationModel notification;

  static final _dateFormat =
      DateFormat('yyyy-MM-dd   HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final notificationTheme = Theme.of(context).extension<NotificationTheme>();
    return Container(
      margin: REdgeInsets.only(top: 20),
      padding: REdgeInsets.all(10),
      decoration: BoxDecoration(
        color: notificationTheme?.teacherBackground,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '发布人:  ${notification.author}',
                  style: TextStyle(
                    color: notificationTheme?.teacherNameColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (notification.createDate != null)
                  Container(
                    margin: REdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.notification.timeIcon.image(
                          width: 11.w,
                          height: 11.h,
                        ),
                        Padding(padding: REdgeInsets.only(left: 4)),
                        Text(
                          _dateFormat.format(notification.createDate!),
                          style: TextStyle(
                            color: notificationTheme?.dateTimeColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationDetail extends StatelessWidget {
  const NotificationDetail({required this.notification, super.key});

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final notificationTheme = Theme.of(context).extension<NotificationTheme>();
    final image = notification.image;
    return Container(
      color: notificationTheme?.cardBackground,
      padding: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            notification.title,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          _TeacherContainer(notification: notification),
          Padding(padding: REdgeInsets.only(top: 20)),
          if (image != null && image.isNotEmpty)
            Container(
              width: double.infinity,
              height: 145.h,
              margin: REdgeInsets.only(bottom: 15),
              padding: REdgeInsets.only(left: 8, top: 20, right: 8, bottom: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.notification.contentBackground.provider(),
                  fit: BoxFit.fill,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: CacheImage(
                  imageUrl: image,
                  height: 145.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          LayoutBuilder(
            builder: (context, constraint) {
              return BslHtmlWidget(
                width: constraint.maxWidth,
                html: notification.content,
              );
            },
          ),
        ],
      ),
    );
  }
}
