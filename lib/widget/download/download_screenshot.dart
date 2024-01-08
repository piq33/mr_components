import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownloadScreenshot extends StatelessWidget {
  const DownloadScreenshot({
    required this.backgroundAssetsPath,
    required this.qrCodeBytes,
    required this.textColor,
    super.key,
  });

  final String backgroundAssetsPath;
  final Uint8List qrCodeBytes;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 36),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundAssetsPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.memory(
              qrCodeBytes,
              width: 278.w,
              height: 278.h,
            ),
          ),
          Padding(padding: REdgeInsets.only(top: 36.5)),
          Text(
            '长按识别二维码下载博校声APP',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
