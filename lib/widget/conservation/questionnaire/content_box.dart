import 'package:bsl/theme/conservation_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({required this.title, required this.content, super.key});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: conservationTheme?.questionnaireTitleColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.5,
            color: conservationTheme?.textColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
