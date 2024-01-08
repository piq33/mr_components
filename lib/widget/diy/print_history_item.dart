import 'package:components/model/diy/diy_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class PrintHistoryItem extends StatelessWidget {
  const PrintHistoryItem({
    required this.history,
    this.onTipPressed,
    this.onPressed,
    super.key,
  });

  final PrintHistoryModel history;
  final VoidCallback? onTipPressed;
  final VoidCallback? onPressed;

  static final _dateFormat = DateFormat('yyyy/MM/dd HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      decoration: ShapeDecoration(
        color: mainTheme?.cardBoxBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadows: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 12,
            offset: const Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Column(
          children: [
            _header(context),
            if (history.buyTime != null)
              Container(
                margin: REdgeInsets.only(top: 4),
                alignment: Alignment.centerLeft,
                child: Text(
                  _dateFormat.format(history.buyTime!),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.subTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            Container(
              margin: REdgeInsets.only(top: 4),
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: CacheImage(
                  width: 100.w,
                  height: 100.h,
                  imageUrl: history.cover ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 18.h),
            _footer(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            history.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: REdgeInsets.only(left: 12, top: 5, right: 12, bottom: 7),
          decoration: BoxDecoration(
            color: !history.isPaid
                ? diyTheme?.notPaidBackground
                : history.isSend
                    ? diyTheme?.shippedBackground
                    : diyTheme?.waitingBackground,
            borderRadius: BorderRadius.circular(76.r),
          ),
          child: Text(
            !history.isPaid
                ? '待支付'
                : history.isSend
                    ? '已发货'
                    : '未发货',
            style: TextStyle(
              color: !history.isPaid
                  ? diyTheme?.notPaidTextColor
                  : history.isSend
                      ? diyTheme?.shippedTextColor
                      : diyTheme?.waitingTextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _footer(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: diyTheme?.priceColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: '¥ ',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    TextSpan(
                      text: history.price.toString(),
                      style: TextStyle(fontSize: 24.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              TextButton(
                onPressed: onTipPressed,
                style: TextButton.styleFrom(
                  padding: REdgeInsets.symmetric(horizontal: 8, vertical: 3),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.diy.tipIcon.image(width: 12.w, height: 12.h),
                    SizedBox(width: 4.w),
                    Text(
                      '购买须知',
                      style: TextStyle(
                        color: mainTheme?.subTextColor,
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
        Text(
          '查看详情',
          style: TextStyle(
            color: mainTheme?.titleColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 4.w),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: ColorName.mainColor,
          size: 12.r,
        ),
      ],
    );
  }
}
