import 'package:components/model/common_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/widget/common/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnGenderSelected = Function(Gender gender);

class GenderSelector extends StatefulWidget {
  const GenderSelector({
    required this.width,
    required this.height,
    required this.onGenderSelected,
    super.key,
  });

  final double width;
  final double height;
  final OnGenderSelected onGenderSelected;

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  Gender? _gender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RadioButton(
          width: widget.width,
          height: widget.height,
          selected: _gender == Gender.male,
          normalIcon: Assets.common.genderMaleNormalIcon.path,
          selectedIcon: Assets.common.genderMaleHighlightIcon.path,
          text: '男孩',
          onPressed: () {
            setState(() => _gender = Gender.male);
            widget.onGenderSelected(Gender.male);
          },
        ),
        Padding(padding: REdgeInsets.symmetric(horizontal: 24)),
        RadioButton(
          width: widget.width,
          height: widget.height,
          selected: _gender == Gender.female,
          normalIcon: Assets.common.genderFemaleNormalIcon.path,
          selectedIcon: Assets.common.genderFemaleHighlightIcon.path,
          text: '女孩',
          onPressed: () {
            setState(() => _gender = Gender.female);
            widget.onGenderSelected(Gender.female);
          },
        ),
      ],
    );
  }
}
