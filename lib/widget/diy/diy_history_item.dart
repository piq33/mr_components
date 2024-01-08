import 'package:components/model/diy/diy_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DiyHistoryItem extends StatelessWidget {
  const DiyHistoryItem({
    required this.history,
    this.onPressed,
    this.onTipPressed,
    this.onDeletePressed,
    this.onEditPressed,
    this.onSharePressed,
    this.onPrintPressed,
    super.key,
  });

  final TemplateDetailModel history;
  final VoidCallback? onPressed;
  final VoidCallback? onTipPressed;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onEditPressed;
  final VoidCallback? onSharePressed;
  final VoidCallback? onPrintPressed;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(context),
            if (history.createTime != null)
              Container(
                margin: REdgeInsets.only(top: 4),
                alignment: Alignment.centerLeft,
                child: Text(
                  _dateFormat.format(history.createTime!),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.subTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            if (history.cover != null)
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
            // 无使用模板或者不支持打印时不显示金额等信息
            if (history.ifUseTemplate && history.ifNeedPay)
              Container(
                margin: REdgeInsets.only(top: 18),
                child: _footer(context),
              ),
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
        DropdownButtonHideUnderline(
          child: DropdownButton2<DropdownType>(
            buttonStyleData: ButtonStyleData(
              width: 140.w,
              height: 10.h,
              padding: EdgeInsets.zero,
            ),
            dropdownStyleData: DropdownStyleData(
              width: 140.w,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: diyTheme?.dropdownBackground,
                borderRadius: BorderRadius.circular(16.r),
              ),
              offset: Offset(-90.w, 0),
            ),
            menuItemStyleData: MenuItemStyleData(height: 46.h),
            customButton: Container(
              alignment: Alignment.center,
              padding: REdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.more_horiz,
                color: diyTheme?.editableIconColor,
              ),
            ),
            items: [
              DropdownType.edit,
              // TODO 暂时屏蔽diy分享
              if (history.validate && false) DropdownType.share,
              DropdownType.delete,
            ].map(
              (item) {
                return DropdownMenuItem<DropdownType>(
                  value: item,
                  child: Container(
                    height: 46.h,
                    decoration: item != DropdownType.delete
                        ? BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: mainTheme?.dividerColor ??
                                    Colors.transparent,
                                width: 1.p,
                              ),
                            ),
                          )
                        : null,
                    alignment: Alignment.center,
                    child: Text(
                      item.display,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
            onChanged: (type) {
              if (type == null) return;
              switch (type) {
                case DropdownType.edit:
                  onEditPressed?.call();
                  break;
                case DropdownType.delete:
                  onDeletePressed?.call();
                  break;
                case DropdownType.share:
                  onSharePressed?.call();
                  break;
              }
            },
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
                      text: history.realPrice.toStringAsFixed(2),
                      style: TextStyle(fontSize: 24.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              if (history.payNotice.isNotEmpty)
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
        Container(
          margin: REdgeInsets.only(left: 4),
          child: TextButton(
            onPressed: onPrintPressed,
            child: Container(
              padding: REdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: ShapeDecoration(
                color: diyTheme?.printBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                '打印成册',
                style: TextStyle(
                  color: diyTheme?.printTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
