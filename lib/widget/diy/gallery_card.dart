import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    this.title,
    this.cover,
    this.price = 0,
    this.createDate,
    super.key,
  });

  final String? title;
  final String? cover;
  final double price;
  final DateTime? createDate;

  static final _dateFormat = DateFormat('yyyy/MM/dd HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Container(
      margin: REdgeInsets.only(left: 26, top: 14, right: 26, bottom: 4),
      padding: REdgeInsets.only(left: 9, top: 14, right: 9, bottom: 8),
      decoration: BoxDecoration(
        color: diyTheme?.infoBackground,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: CacheImage(
              width: 54.w,
              height: 48.h,
              imageUrl: cover ?? '',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 32.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14.h),
                Text(
                  createDate != null ? _dateFormat.format(createDate!) : '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.subTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '¥${price.toStringAsFixed(2)}',
                style: TextStyle(
                  color: diyTheme?.priceColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
