import 'package:components/model/common_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/gender_theme.dart';
import 'package:components/widget/common/round_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderAvatar extends StatelessWidget {
  const GenderAvatar({
    required this.size,
    this.childSize,
    this.borderWidth = 0,
    this.avatar,
    required this.gender,
    this.maleDefault,
    this.femaleDefault,
    this.child,
    this.onPressed,
    super.key,
  });

  final double size;
  final double? childSize;
  final double borderWidth;
  final String? avatar;
  final Gender gender;
  final String? maleDefault;
  final String? femaleDefault;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<GenderTheme>();
    final roundAvatar = Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        color: avatarBackground(theme),
        shape: BoxShape.circle,
      ),
      child: RoundAvatar(
        width: size - borderWidth,
        height: size - borderWidth,
        avatar: avatar,
        defaultAsset: gender == Gender.unknown
            ? null
            : gender == Gender.male
                ? (maleDefault ?? Assets.common.maleDefaultAvatar.path)
                : (femaleDefault ?? Assets.common.femaleDefaultAvatar.path),
        onPressed: onPressed,
      ),
    );
    if (childSize == null) return roundAvatar;
    return Stack(
      alignment: Alignment.center,
      children: [
        roundAvatar,
        Positioned(
          right: 0,
          bottom: 0,
          child: child ??
              Container(
                width: childSize,
                height: childSize,
                decoration: BoxDecoration(
                  color: iconBackground(theme),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: childSize != null ? childSize! - 4.r : null,
                  color: theme?.iconColor,
                ),
              ),
        ),
      ],
    );
  }

  IconData? get icon {
    switch (gender) {
      case Gender.male:
        return Icons.male_rounded;
      case Gender.female:
        return Icons.female_rounded;
      default:
        return null;
    }
  }

  Color? iconBackground(GenderTheme? theme) {
    switch (gender) {
      case Gender.male:
        return theme?.femaleBackground;
      case Gender.female:
        return theme?.maleBackground;
      default:
        return Colors.transparent;
    }
  }

  Color? avatarBackground(GenderTheme? theme) {
    switch (gender) {
      case Gender.male:
        return theme?.maleTagBackground;
      case Gender.female:
        return theme?.femaleTagBackground;
      default:
        return Colors.transparent;
    }
  }
}
