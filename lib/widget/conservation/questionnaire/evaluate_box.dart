import 'package:bsl/theme/conservation_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EvaluateBox extends StatelessWidget {
  const EvaluateBox({required this.title, required this.score, super.key});

  final String title;
  final double score;

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
        Center(
          child: RatingBarIndicator(
            rating: score,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: conservationTheme?.evaluateStartColor,
            ),
            itemCount: 5,
            itemSize: 32.r,
            itemPadding: REdgeInsets.symmetric(horizontal: 8),
            unratedColor:
                conservationTheme?.evaluateStartColor?.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
