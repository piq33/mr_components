import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const bool _kUseMagnifier = true;
const double _kMagnification = 2.35 / 2.1;
const double _kSqueeze = 1.18;

typedef OnValueSelected<T> = Function(T? value);
typedef OnValueIndexWhere<T> = bool Function(T? e1, T? e2);
typedef OnValueToString<T> = String Function(T element);

class _CustomBottomPickerSelectionOverlay extends StatelessWidget {
  const _CustomBottomPickerSelectionOverlay();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: const Color(0xFFE4EEF5), width: 1.r),
        ),
      ),
    );
  }
}

class CustomBottomPicker<T> extends StatefulWidget {
  const CustomBottomPicker({
    this.selected,
    required this.list,
    required this.bodyHeight,
    required this.itemHeight,
    required this.title,
    this.cancelText = '取消',
    this.confirmText = '确认',
    this.onCancel,
    this.onConfirm,
    this.emptyWidget,
    required this.onIndexWhere,
    required this.onValueToString,
    super.key,
  });

  final T? selected;
  final List<T> list;
  final double bodyHeight;
  final double itemHeight;
  final String title;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final OnValueSelected<T>? onConfirm;
  final Widget? emptyWidget;
  final OnValueIndexWhere<T> onIndexWhere;
  final OnValueToString<T> onValueToString;

  @override
  State<CustomBottomPicker<T>> createState() => _CustomBottomPickerState<T>();
}

class _CustomBottomPickerState<T> extends State<CustomBottomPicker<T>> {
  late FixedExtentScrollController _scrollController;
  T? _selected;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  void _init() {
    if (widget.selected != null) {
      _selected = widget.selected;
    } else {
      _selected = widget.list.isNotEmpty ? widget.list.first : null;
    }

    final initialIndex = widget.list
        .indexWhere((element) => widget.onIndexWhere(_selected, element));
    _scrollController = FixedExtentScrollController(
        initialItem: initialIndex != -1 ? initialIndex : 0);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: REdgeInsets.only(left: 16)),
              TextButton(
                onPressed: widget.onCancel,
                style: TextButton.styleFrom(padding: REdgeInsets.all(16)),
                child: Text(
                  widget.cancelText,
                  style: TextStyle(
                    color: theme?.bottomSheetCancelTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: theme?.titleColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => widget.onConfirm?.call(_selected),
                style: TextButton.styleFrom(padding: REdgeInsets.all(16)),
                child: Text(
                  widget.confirmText,
                  style: TextStyle(
                    color: theme?.bottomSheetConfirmTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(right: 16)),
            ],
          ),
          Container(height: 1.p, color: theme?.dividerColor),
          Container(
            height: widget.bodyHeight,
            padding: REdgeInsets.symmetric(horizontal: 20),
            child: widget.emptyWidget != null && widget.list.isEmpty
                ? widget.emptyWidget
                : CupertinoPicker(
                    scrollController: _scrollController,
                    useMagnifier: _kUseMagnifier,
                    magnification: _kMagnification,
                    squeeze: _kSqueeze,
                    onSelectedItemChanged: (index) {
                      setState(() => _selected = widget.list[index]);
                    },
                    selectionOverlay:
                        const _CustomBottomPickerSelectionOverlay(),
                    itemExtent: widget.itemHeight,
                    children: widget.list.map(
                      (e) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text(
                            widget.onValueToString.call(e),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: theme?.titleColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
