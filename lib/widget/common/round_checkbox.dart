import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';

class RoundCheckBox extends StatelessWidget {
  const RoundCheckBox({
    required this.size,
    required this.selected,
    this.padding,
    this.onChanged,
    super.key,
  });

  final double size;
  final bool selected;
  final EdgeInsetsGeometry? padding;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    Color? background = theme?.radioDefaultColor;
    if (selected) background = theme?.radioSelectedColor;
    if (onChanged == null) background = background?.withOpacity(.32);
    final check = Icon(
      Icons.check,
      size: size - (padding?.horizontal ?? 0) / 2,
      color: theme?.radioCheckColor,
    );
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: background, shape: BoxShape.circle),
      child: onChanged == null
          ? check
          : TextButton(
              onPressed: () => onChanged?.call(!selected),
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size),
                ),
              ),
              child: check,
            ),
    );
  }
}
