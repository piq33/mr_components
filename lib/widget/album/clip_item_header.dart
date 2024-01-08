import 'package:bsl/model/album_models.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/album/clip_tag.dart';
import 'package:bsl/widget/common/relationship/teacher_tag.dart';
import 'package:bsl/widget/common/round_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ClipItemHeader extends StatelessWidget {
  const ClipItemHeader({
    required this.avatar,
    required this.name,
    required this.searchType,
    required this.relationship,
    this.dateTime,
    super.key,
  });

  final String avatar;
  final String name;
  final SearchType searchType;
  final Relationship relationship;
  final DateTime? dateTime;

  static final _dateFormat = DateFormat('yyyy/MM/dd', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: REdgeInsets.only(left: 10)),
        Container(
          width: 55.r,
          padding: EdgeInsets.only(left: 3.w, top: 5.h),
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.common.avatarDecoration.provider(),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          alignment: Alignment.center,
          child: RoundAvatar(width: 38.w, height: 38.h, avatar: avatar),
        ),
        Padding(padding: REdgeInsets.only(left: 5)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: theme?.titleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: REdgeInsets.only(left: 9)),
                  const TeacherTag(),
                  Padding(padding: REdgeInsets.only(left: 9)),
                  ClipTag(searchType: searchType),
                ],
              ),
              Padding(padding: REdgeInsets.only(top: 6)),
              Text(
                dateTime != null ? _dateFormat.format(dateTime!) : '',
                style: TextStyle(
                  color: theme?.cornerTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(padding: REdgeInsets.only(right: 10)),
      ],
    );
  }
}
