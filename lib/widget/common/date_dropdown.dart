import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/date_bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

typedef OnDateConverter = String? Function(DateTime dateTime);
typedef OnDateSelected = Function(DateTime dateTime);
typedef OnDateSelectCallback = Future<DateTime?> Function(
  DateTime selectedDate,
);

class DateDropdown extends StatefulWidget {
  const DateDropdown({
    this.initial,
    this.onDateConverter,
    this.onDateSelected,
    this.onDateSelectCallback,
    super.key,
  });

  final DateTime? initial;
  final OnDateConverter? onDateConverter;
  final OnDateSelected? onDateSelected;
  final OnDateSelectCallback? onDateSelectCallback;

  @override
  State<DateDropdown> createState() => _DateDropdownState();
}

class _DateDropdownState extends State<DateDropdown> {
  static final _dateFormat = DateFormat('yyyy年MM月', Intl.systemLocale);

  final _now = DateTime.now();
  late DateTime _selected = widget.initial ?? _now;

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() => _selected = widget.initial ?? _now);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: () async {
        final callback = widget.onDateSelectCallback;
        final selectedDate = callback != null
            ? await callback.call(_selected)
            : await showModalBottomSheet<DateTime?>(
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
                    initialDateTime: _selected,
                    columns: const [PickerType.year, PickerType.month],
                    maximumDate: _now,
                    onDateTimeChanged: (dateTime) {},
                    onCancel: () => Navigator.of(context).pop(),
                    onConfirm: (dateTime) =>
                        Navigator.of(context).pop(dateTime),
                  );
                },
              );
        if (selectedDate == null) return;

        widget.onDateSelected?.call(selectedDate);
        setState(() => _selected = selectedDate);
      },
      style: TextButton.styleFrom(
        padding: REdgeInsets.symmetric(horizontal: 8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.onDateConverter?.call(_selected) ??
                _dateFormat.format(_selected),
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            color: mainTheme?.titleColor,
            size: 20.r,
          ),
          Padding(padding: REdgeInsets.only(right: 4)),
        ],
      ),
    );
  }
}
