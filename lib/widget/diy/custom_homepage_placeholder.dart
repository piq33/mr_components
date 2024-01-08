import 'package:bsl/resource/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomepagePlaceholder extends StatelessWidget {
  const CustomHomepagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 20, vertical: 22),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: REdgeInsets.only(top: 16, left: 13),
            child: Assets.diy.customHomepageBackground2.image(),
          ),
          Container(
            margin: REdgeInsets.only(bottom: 16, right: 13),
            child: Assets.diy.customHomepageBackground1.image(),
          ),
        ],
      ),
    );
  }
}
