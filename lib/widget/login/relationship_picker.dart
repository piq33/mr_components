import 'package:components/log/global_log.dart';
import 'package:components/model/school_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/common/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnRelationshipSelected = Function(RelationshipModel? relationship);

class RelationshipPicker extends StatefulWidget {
  const RelationshipPicker({
    this.selected,
    required this.list,
    this.onCancel,
    this.onConfirm,
    super.key,
  });

  final RelationshipModel? selected;
  final List<RelationshipModel> list;
  final VoidCallback? onCancel;
  final OnRelationshipSelected? onConfirm;

  @override
  State<RelationshipPicker> createState() => _RelationshipPickerState();
}

class _RelationshipPickerState extends State<RelationshipPicker> {
  RelationshipModel? _selected;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() => _selected = widget.selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Column(
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
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: REdgeInsets.all(16),
              ),
              child: Text(
                '取消',
                style: TextStyle(
                  color: theme?.bottomSheetCancelTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '选择亲属关系',
                  style: TextStyle(
                    color: theme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                logDebug('选择亲属关系: $_selected');
                widget.onConfirm?.call(_selected);
              },
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: REdgeInsets.all(16),
              ),
              child: Text(
                '确定',
                style: TextStyle(
                  color: theme?.bottomSheetConfirmTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(padding: REdgeInsets.only(right: 16)),
          ],
        ),
        Container(height: 1.p, color: theme?.dividerColor),
        Container(
          padding: REdgeInsets.symmetric(horizontal: 30, vertical: 24),
          child: Wrap(
            spacing: 14.w,
            runSpacing: 14.h,
            children: widget.list.map((e) {
              return RadioButton(
                selected: _selected?.id == e.id,
                text: e.value,
                padding: REdgeInsets.symmetric(horizontal: 14, vertical: 4),
                onPressed: () => setState(() => _selected = e),
              );
            }).toList(),
          ),
        ),
        Padding(padding: REdgeInsets.only(bottom: 24)),
      ],
    );
  }
}
