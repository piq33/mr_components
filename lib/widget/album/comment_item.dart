import 'dart:async';

import 'package:bsl/model/album/comment_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/album_theme.dart';
import 'package:bsl/theme/bosocial_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/album/reply_list.dart';
import 'package:bsl/widget/common/relationship/relationship_tag.dart';
import 'package:bsl/widget/common/round_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

typedef OnCommentPressed = Function(CommentModel comment);
typedef OnCommentLikePressed = Future<bool> Function(CommentModel comment);

class CommentItem extends StatefulWidget {
  const CommentItem({
    required this.now,
    required this.comment,

    /// 干货发货人
    required this.deployUserCode,
    this.onCommentPressed,
    this.onLikePressed,
    super.key,
  });

  final DateTime now;
  final CommentModel comment;
  final String deployUserCode;
  final OnCommentPressed? onCommentPressed;
  final OnCommentLikePressed? onLikePressed;

  @override
  State<StatefulWidget> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  static final _timeFormat = DateFormat('HH:mm', Intl.systemLocale);
  static final _dateFormat = DateFormat('MM-dd HH:mm', Intl.systemLocale);

  late bool _like = widget.comment.selfLike;
  late int _likeNum = widget.comment.likeNum;

  @override
  void didUpdateWidget(covariant CommentItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _like = widget.comment.selfLike;
      _likeNum = widget.comment.likeNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    final albumTheme = Theme.of(context).extension<AlbumTheme>();
    final comment = widget.comment;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundAvatar(width: 32.w, height: 32.h, avatar: comment.avatar),
            Padding(padding: REdgeInsets.only(left: 5)),
            Expanded(
              child: TextButton(
                onPressed: () => widget.onCommentPressed?.call(comment),
                child: _commentContent(context),
              ),
            ),
            _likeButton(context, comment),
            Padding(padding: REdgeInsets.only(right: 11)),
          ],
        ),
        if (comment.reply.isNotEmpty)
          Container(
            padding: REdgeInsets.symmetric(vertical: 8),
            margin: REdgeInsets.only(top: 4, left: 37),
            decoration: BoxDecoration(
              color: albumTheme?.replyBackground,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: ReplyList(
              now: widget.now,
              deployUserCode: widget.deployUserCode,
              reply: comment.reply,
              onCommentPressed: (comment) {
                widget.onCommentPressed?.call(comment);
              },
              onLikePressed: widget.onLikePressed,
            ),
          ),
      ],
    );
  }

  Widget _commentContent(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final albumTheme = Theme.of(context).extension<AlbumTheme>();
    final comment = widget.comment;
    final dateTime = comment.commentTime;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              comment.userName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: mainTheme?.subTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (widget.deployUserCode != comment.userCode)
              Container(
                margin: REdgeInsets.symmetric(horizontal: 6),
                child: RelationshipTag(relationship: comment.relationship),
              ),
            if (widget.deployUserCode == comment.userCode)
              Container(
                height: 15.h,
                margin: REdgeInsets.only(left: 2, right: 4),
                decoration: BoxDecoration(
                  color: albumTheme?.hostTagBackground,
                  borderRadius: BorderRadius.circular(8.5.r),
                ),
                child: Text(
                  '发布人',
                  style: TextStyle(
                    color: albumTheme?.hostTagTextColor,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (dateTime != null)
              Text(
                _parseCommentTime(dateTime),
                style: TextStyle(
                  color: mainTheme?.subTextColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
        Padding(padding: REdgeInsets.only(top: 3.5)),
        Row(
          children: [
            if (!comment.topComment)
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '回复 ',
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '${comment.replyUserName} ',
                      style: TextStyle(
                        color: mainTheme?.subTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Text(
                comment.commentContent,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _likeButton(BuildContext context, CommentModel comment) {
    final boSocialTheme = Theme.of(context).extension<BoSocialTheme>();
    return TextButton(
      onPressed: () async {
        final target = !_like;
        final result = await widget.onLikePressed?.call(comment);
        if (result == true) {
          setState(() {
            _like = target;
            _likeNum = target ? _likeNum + 1 : _likeNum - 1;
          });
        }
      },
      style: TextButton.styleFrom(
        padding: REdgeInsets.symmetric(horizontal: 12, vertical: 9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _like
              ? Assets.bosocial.knowledge.commentLikeIcon
                  .image(width: 17.w, height: 17.h)
              : Assets.bosocial.knowledge.commentDislikeIcon
                  .image(width: 17.w, height: 17.h),
          Container(
            margin: REdgeInsets.only(top: 2),
            child: Text(
              _likeNum.toString(),
              style: TextStyle(
                color: boSocialTheme?.likeNumTextColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _parseCommentTime(DateTime dateTime) {
    final now = widget.now;
    return switch (dateTime.difference(now)) {
      Duration(inDays: -1) => '昨天 ${_timeFormat.format(dateTime)}',
      Duration(inDays: 0) => '今天 ${_timeFormat.format(dateTime)}',
      _ => _dateFormat.format(dateTime),
    };
  }
}
