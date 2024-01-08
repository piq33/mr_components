import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseNoticeCard extends StatefulWidget {
  const PurchaseNoticeCard({required this.payNotice, super.key});

  final String payNotice;

  @override
  State<PurchaseNoticeCard> createState() => _PurchaseNoticeCardState();
}

class _PurchaseNoticeCardState extends State<PurchaseNoticeCard> {
  var _showMore = false;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Column(
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.diy.purchaseIcon1.image(
                width: 32.w,
                fit: BoxFit.fitWidth,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    '购买须知',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Assets.diy.purchaseIcon2.image(
                width: 45.w,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              margin: REdgeInsets.only(left: 22, right: 22, bottom: 21),
              padding: REdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: mainTheme?.cardBoxBackground,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: ExpandableText(
                widget.payNotice,
                expanded: _showMore,
                maxLines: 5,
                expandText: '',
                collapseText: '',
                animation: true,
                animationDuration: const Duration(milliseconds: 300),
                style: TextStyle(
                  color: mainTheme?.textColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 101.w,
              decoration: ShapeDecoration(
                color: mainTheme?.cardBoxBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: mainTheme?.cardBoxShadow ?? Colors.transparent,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              child: TextButton(
                onPressed: () => setState(() => _showMore = !_showMore),
                style: TextButton.styleFrom(
                  padding: REdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${_showMore ? '折叠' : '查看更多'} >>',
                    style: TextStyle(
                      color: diyTheme?.expandTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
