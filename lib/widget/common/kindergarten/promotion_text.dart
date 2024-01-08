import 'package:components/log/global_log.dart';
import 'package:components/model/common_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/string_utils.dart';
import 'package:components/widget/common/bsl_html_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionText extends StatefulWidget {
  const PromotionText({required this.promotion, super.key});

  final PromotionModel promotion;

  @override
  State createState() => _PromotionTextState();
}

class _PromotionTextState extends State<PromotionText> {
  var _introduce = '';
  var _teacherIntroduce = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  @override
  void didUpdateWidget(covariant PromotionText oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  void _init() {
    final promotion = widget.promotion;
    var introduce = promotion.introduce;
    if (introduce.isNotEmpty && introduce.hasUrlEncodedCharacters) {
      try {
        _introduce = Uri.decodeComponent(introduce);
      } catch (e, stackTrace) {
        logError('宣传简介解析异常', e, stackTrace);
      }
    }

    var teacherIntroduce = promotion.teacherIntroduce;
    if (teacherIntroduce.isNotEmpty &&
        teacherIntroduce.hasUrlEncodedCharacters) {
      try {
        _teacherIntroduce = Uri.decodeComponent(teacherIntroduce);
      } catch (e, stackTrace) {
        logError('教师宣传简介解析异常', e, stackTrace);
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            mainTheme?.promotionBackground1 ?? Colors.transparent,
            mainTheme?.promotionBackground2 ?? Colors.transparent,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (_introduce.isNotEmpty)
            Stack(
              children: [
                Container(
                  padding: REdgeInsets.all(8),
                  margin: REdgeInsets.only(left: 16, top: 28, right: 16),
                  decoration: BoxDecoration(
                    color: mainTheme?.cardBoxBackground,
                    border: Border.all(
                      width: 8.r,
                      color: mainTheme?.kindergartenBorderColor ??
                          Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '院所简介',
                        style: TextStyle(
                          color: mainTheme?.promotionTitleColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      BslHtmlWidget(html: _introduce),
                    ],
                  ),
                ),
                Positioned(
                  top: 14,
                  right: 10,
                  child: Assets.common.kindergarten.decoration6
                      .image(height: 35.w),
                ),
              ],
            ),
          if (_teacherIntroduce.isNotEmpty)
            Stack(
              children: [
                Container(
                  padding: REdgeInsets.all(8),
                  margin: REdgeInsets.only(left: 16, top: 28, right: 16),
                  decoration: BoxDecoration(
                    color: mainTheme?.cardBoxBackground,
                    border: Border.all(
                      width: 8.r,
                      color: mainTheme?.kindergartenBorderColor ??
                          Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '师资团队',
                        style: TextStyle(
                          color: mainTheme?.promotionTitleColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      BslHtmlWidget(html: _teacherIntroduce),
                    ],
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 10,
                  child: Assets.common.kindergarten.decoration9
                      .image(height: 37.w),
                ),
              ],
            ),
          if (_introduce.isNotEmpty || _teacherIntroduce.isNotEmpty)
            SizedBox(height: 22.h),
        ],
      ),
    );
  }
}
