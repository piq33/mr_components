import 'package:components/model/common_model.dart';
import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/marquee_text.dart';
import 'package:components/widget/common/region_bottom_picker.dart';
import 'package:components/widget/form/bsl_single_row_button_formfield.dart';
import 'package:components/widget/form/bsl_single_row_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

typedef OnRegionChanged = Function(SelectedRegion region);

class PurchaseInfoCard extends StatelessWidget {
  const PurchaseInfoCard({
    this.selectedRegion,
    this.receiverFocusNode,
    this.phoneFocusNode,
    this.addressFocusNode,
    required this.receiverController,
    required this.phoneController,
    required this.addressController,
    this.readOnly = false,
    this.onRegionChanged,
    super.key,
  });

  final SelectedRegion? selectedRegion;
  final FocusNode? receiverFocusNode;
  final FocusNode? phoneFocusNode;
  final FocusNode? addressFocusNode;
  final TextEditingController receiverController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final bool readOnly;
  final OnRegionChanged? onRegionChanged;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BslSingleRowTextFieldFormField(
          height: 31.25.h,
          readOnly: readOnly,
          focusNode: receiverFocusNode,
          padding: REdgeInsets.symmetric(horizontal: 8),
          controller: receiverController,
          title: '收货人',
          titleStyle: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          hint: '请输入姓名',
          hintStyle: TextStyle(
            color: mainTheme?.hintTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          showIcon: false,
          textAlign: TextAlign.start,
          spacing: 35.w,
          textInputAction: TextInputAction.next,
        ),
        BslSingleRowTextFieldFormField(
          height: 31.25.h,
          readOnly: readOnly,
          focusNode: phoneFocusNode,
          padding: REdgeInsets.symmetric(horizontal: 8),
          controller: phoneController,
          title: '手机号',
          titleStyle: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          hint: '请输入手机号',
          hintStyle: TextStyle(
            color: mainTheme?.hintTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          showIcon: false,
          textAlign: TextAlign.start,
          spacing: 35.w,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
        BslSingleRowButtonFormField(
          height: 31.25.h,
          padding: REdgeInsets.symmetric(horizontal: 8),
          title: '所在地区',
          titleStyle: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          text: selectedRegion?.address ?? '',
          hint: '省市区',
          hintStyle: TextStyle(
            color: mainTheme?.hintTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
          spacing: 25.w,
          iconColor: ColorName.mainColor,
          onPressed: readOnly ? null : () => _selectRegion(context),
        ),
        readOnly
            ? Container(
                height: 31.25.h,
                padding: REdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '详细地址',
                      maxLines: 1,
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: mainTheme?.textColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraint) {
                          return MarqueeText(
                            width: constraint.maxWidth,
                            text: addressController.text,
                            style: TextStyle(
                              color: mainTheme?.textColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            marqueeBuilder: (context, text, style) => Marquee(
                              text: text,
                              velocity: 30,
                              blankSpace: 20.w,
                              style: style,
                              startAfter: const Duration(seconds: 1),
                              pauseAfterRound: const Duration(seconds: 1),
                            ),
                            textBuilder: (context, text, style) =>
                                Text(text, style: style),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : BslSingleRowTextFieldFormField(
                height: 31.25.h,
                readOnly: readOnly,
                focusNode: addressFocusNode,
                padding: REdgeInsets.symmetric(horizontal: 8),
                controller: addressController,
                title: '详细地址',
                titleStyle: TextStyle(
                  color: mainTheme?.textColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
                hint: '街道、楼牌号等',
                hintStyle: TextStyle(
                  color: mainTheme?.hintTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                showIcon: false,
                textAlign: TextAlign.start,
                spacing: 25.w,
                textInputAction: TextInputAction.done,
              ),
      ],
    );
  }

  void _selectRegion(BuildContext context) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final selected = await showModalBottomSheet<SelectedRegion?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (BuildContext context) {
        return RegionBottomPicker(
          title: '请选择地区',
          bodyHeight: 260.h,
          itemHeight: 50.h,
          selected: selectedRegion,
          onCancel: () => Navigator.of(context).pop(),
          onConfirm: (region) => Navigator.of(context).pop(region),
        );
      },
    );
    if (selected == null) return;
    onRegionChanged?.call(selected);
  }
}
