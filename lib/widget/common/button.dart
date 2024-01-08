import 'package:components/resource/assets.gen.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.width,
    this.height,
    this.margin,
    required this.child,
    this.onTap,
    super.key,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ink = Ink(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.common.defaultButtonBackground.provider(),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(height ?? 0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(height ?? 0),
        child: child,
      ),
    );
    final material = Material(color: Colors.transparent, child: ink);
    return margin == null
        ? material
        : Container(margin: margin, child: material);
  }
}
