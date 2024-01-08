import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/date_bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnDateSelected = Function(DateTime selectedDate);

class BirthdaySelector extends StatelessWidget {
  const BirthdaySelector({
    required this.initialDateTime,
    required this.controller,
    this.onDateSelected,
    super.key,
  });

  final DateTime? initialDateTime;
  final TextEditingController controller;
  final OnDateSelected? onDateSelected;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: () async {
        final selectedDate = await showModalBottomSheet<DateTime?>(
          context: context,
          backgroundColor: mainTheme?.bottomSheetBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          builder: (BuildContext context) {
            return DateBottomPicker(
              title: '选择时间',
              initialDateTime: initialDateTime,
              onDateTimeChanged: (dateTime) {},
              onCancel: () => Navigator.of(context).pop(),
              onConfirm: (dateTime) => Navigator.of(context).pop(dateTime),
            );
          },
        );
        if (selectedDate == null) return;
        onDateSelected?.call(selectedDate);
      },
      style: TextButton.styleFrom(padding: REdgeInsets.symmetric(vertical: 16)),
      child: IgnorePointer(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '孩子生日',
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(padding: REdgeInsets.only(left: 8)),
            Flexible(
              child: TextField(
                controller: controller,
                textAlign: TextAlign.end,
                readOnly: true,
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintText: '选择日期',
                  hintStyle: TextStyle(
                    color: mainTheme?.hintTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              color: mainTheme?.dividerColor,
              size: 24.r,
            ),
          ],
        ),
      ),
    );
  }
}
