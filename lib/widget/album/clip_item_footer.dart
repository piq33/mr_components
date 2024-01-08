import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipItemFooter extends StatelessWidget {
  const ClipItemFooter({
    required this.view,
    required this.like,
    required this.isLike,
    required this.comment,
    super.key,
  });

  /// 浏览次数
  final int view;

  /// 点赞次数
  final int like;

  /// 是否已点赞
  final bool isLike;

  /// 评论条数
  final int comment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: REdgeInsets.only(left: 21)),
        Text(
          '浏览$view次',
          style: TextStyle(
            color: theme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        Assets.school.formal.clipLikeIcon.image(width: 13.w, height: 13.h),
        Padding(padding: REdgeInsets.only(left: 5)),
        Text(
          like.toStringAsFixed(0),
          style: TextStyle(
            color: theme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(left: 12)),
        Assets.school.formal.clipCommentIcon.image(width: 13.w, height: 13.h),
        Padding(padding: REdgeInsets.only(left: 5)),
        Text(
          comment.toStringAsFixed(0),
          style: TextStyle(
            color: theme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(right: 21)),
      ],
    );
  }
}
