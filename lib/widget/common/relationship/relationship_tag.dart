import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/relationship_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelationshipTag extends StatelessWidget {
  const RelationshipTag({required this.relationship, super.key});

  final Relationship relationship;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<RelationshipTheme>();

    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: background(theme),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: textColor(theme),
              shape: BoxShape.circle,
            ),
          ),
          Padding(padding: REdgeInsets.only(left: 4)),
          Text(
            relationship.display,
            style: TextStyle(
              color: textColor(theme),
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Color? textColor(RelationshipTheme? theme) {
    switch (relationship) {
      case Relationship.father:
      case Relationship.paternalGrandpa:
      case Relationship.maternalGrandpa:
      case Relationship.paternalUncle:
      case Relationship.maternalUncle:
        return theme?.maleTagTextColor;
      case Relationship.mother:
      case Relationship.paternalGrandma:
      case Relationship.maternalGrandma:
      case Relationship.paternalAunt:
      case Relationship.maternalAunt:
        return theme?.femaleTagTextColor;
      default:
        return theme?.defaultTagTextColor;
    }
  }

  Color? background(RelationshipTheme? theme) {
    switch (relationship) {
      case Relationship.father:
      case Relationship.paternalGrandpa:
      case Relationship.maternalGrandpa:
      case Relationship.paternalUncle:
      case Relationship.maternalUncle:
        return theme?.maleTagBackground;
      case Relationship.mother:
      case Relationship.paternalGrandma:
      case Relationship.maternalGrandma:
      case Relationship.paternalAunt:
      case Relationship.maternalAunt:
        return theme?.femaleTagBackground;
      default:
        return theme?.defaultTagBackground;
    }
  }
}
