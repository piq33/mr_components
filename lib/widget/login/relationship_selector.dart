import 'package:components/log/global_log.dart';
import 'package:components/model/school_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/radio_button.dart';
import 'package:components/widget/login/relationship_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnRelationshipSelected = Function(RelationshipModel relationship);

class RelationshipSelector extends StatefulWidget {
  const RelationshipSelector({
    required this.width,
    required this.height,
    this.selected,
    required this.list,
    required this.onRelationshipSelected,
    super.key,
  });

  final double width;
  final double height;
  final RelationshipModel? selected;
  final List<RelationshipModel> list;
  final OnRelationshipSelected onRelationshipSelected;

  @override
  State<RelationshipSelector> createState() => _RelationshipSelectorState();
}

class _RelationshipSelectorState extends State<RelationshipSelector> {
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
    final list = widget.list;
    RelationshipModel? first, second, other;
    if (list.isNotEmpty) first = list.first;
    if (list.length > 1) second = list[1];
    if (list.length > 2) other = list[2];
    return SizedBox(
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (first != null)
            RadioButton(
              width: widget.width,
              height: widget.height,
              selected: _selected?.id == first.id,
              text: first.value,
              onPressed: () {
                setState(() => _selected = first);
                widget.onRelationshipSelected(first!);
              },
            ),
          if (second != null)
            RadioButton(
              width: widget.width,
              height: widget.height,
              selected: _selected?.id == second.id,
              text: second.value,
              onPressed: () {
                setState(() => _selected = second);
                widget.onRelationshipSelected(second!);
              },
            ),
          if (other != null)
            RadioButton(
              width: widget.width,
              height: widget.height,
              selected: _selected?.id == other.id,
              text: _selected?.id != other.id ? '其他' : _selected?.value ?? '',
              onPressed: () async {
                final selected = await showModalBottomSheet<RelationshipModel?>(
                    context: context,
                    backgroundColor: theme?.bottomSheetBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        topRight: Radius.circular(16.r),
                      ),
                    ),
                    builder: (context) {
                      return RelationshipPicker(
                        selected: _selected,
                        list: widget.list,
                        onCancel: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        onConfirm: (relationship) {
                          Navigator.of(context, rootNavigator: true)
                              .pop(relationship);
                        },
                      );
                    });
                if (selected == null) return;
                logDebug('选择了"其他"亲属关系: $selected');
                widget.onRelationshipSelected(selected);
                // 根据所选择的亲属关系(是否和第一、二位一致，若一致直接选中对应项即可)
                if (selected.id == first?.id) {
                  setState(() => _selected = first);
                  return;
                }
                if (selected.id == second?.id) {
                  setState(() => _selected = second);
                  return;
                }
                // 选择'其他'后，展示具体所选择的亲属关系
                setState(
                  () => _selected = other!.copyWith(value: selected.value),
                );
              },
            ),
        ],
      ),
    );
  }
}
