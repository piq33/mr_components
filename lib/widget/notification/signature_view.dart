import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/notification_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SignatureView extends StatelessWidget {
  const SignatureView({
    required this.signUrl,
    this.signedTime,
    this.onResignPressed,
    super.key,
  });

  final String signUrl;
  final DateTime? signedTime;
  final VoidCallback? onResignPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final notificationTheme = Theme.of(context).extension<NotificationTheme>();
    final dateFormat = DateFormat('yyyy-MM-dd HH:mm', Intl.systemLocale);
    return Container(
      color: notificationTheme?.cardBackground,
      padding: REdgeInsets.only(left: 16, top: 12, right: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '家长签字确认',
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (onResignPressed != null)
                TextButton(
                  onPressed: onResignPressed,
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: REdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  ),
                  child: Assets.notification.resignatureButton
                      .image(width: 42.w, height: 12.h),
                ),
            ],
          ),
          Container(
            height: 135.h,
            margin: REdgeInsets.only(top: 20, bottom: 12),
            decoration: BoxDecoration(
              color: notificationTheme?.signatureViewBackground,
              border: Border.all(
                color: notificationTheme?.signatureViewBorderColor ??
                    Colors.transparent,
                width: 1.r,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: CachedNetworkImage(imageUrl: signUrl, fit: BoxFit.contain),
            ),
          ),
          if (signedTime != null)
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                dateFormat.format(signedTime!),
                style: TextStyle(
                  color: mainTheme?.cornerTextColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
