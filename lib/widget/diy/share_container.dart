import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShareContainer extends StatelessWidget {
  const ShareContainer({
    required this.qrCode,
    required this.displayTip,
    this.onLongPressed,
    super.key,
  });

  final String qrCode;
  final bool displayTip;
  final VoidCallback? onLongPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: 322.w,
      height: 441.h,
      padding: REdgeInsets.only(left: 8, top: 45, right: 8, bottom: 11),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.diy.qrcodeDialogBackground.provider(),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Container(
        width: 306.w,
        decoration: ShapeDecoration(
          color: mainTheme?.cardBoxBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
        child: GestureDetector(
          onLongPress: onLongPressed,
          child: Column(
            children: [
              SizedBox(height: 54.5.h),
              QrImageView(
                size: 220.r,
                data: qrCode,
                version: QrVersions.auto,
                padding: EdgeInsets.zero,
              ),
              SizedBox(height: 36.5.h),
              if (displayTip)
                Text(
                  '长按保存下载二维码',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
