import 'package:bsl/theme/diy_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiyLoadingDialog extends StatefulWidget {
  const DiyLoadingDialog({
    required this.animation,
    required this.child,
    super.key,
  });

  final AnimationController animation;
  final Widget child;

  @override
  State<DiyLoadingDialog> createState() => _DiyLoadingDialogState();
}

class _DiyLoadingDialogState extends State<DiyLoadingDialog> {
  @override
  void initState() {
    super.initState();
    widget.animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: Colors.black38),
        RotationTransition(
          turns: CurvedAnimation(
            parent: widget.animation,
            curve: Curves.linear,
            reverseCurve: Curves.linear,
          ),
          child: widget.child,
        ),
        Text(
          '制作中...',
          style: TextStyle(
            color: diyTheme?.templateTitleColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
