import 'package:components/model/album/comment_model.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/album/comment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nil/nil.dart';

class ReplyList extends StatefulWidget {
  const ReplyList({
    required this.now,
    required this.deployUserCode,
    required this.reply,
    this.onCommentPressed,
    this.onLikePressed,
    super.key,
  });

  final DateTime now;
  final String deployUserCode;
  final List<CommentModel> reply;
  final OnCommentPressed? onCommentPressed;
  final OnCommentLikePressed? onLikePressed;

  @override
  State<ReplyList> createState() => _ReplyListState();
}

// 折叠时显示的回复条数
const _collapseSize = 2;

class _ReplyListState extends State<ReplyList> {
  late List<CommentModel> _displayList = widget.reply;
  late bool _displayCollapsed = widget.reply.length > _collapseSize;
  late bool _collapsed = true;

  @override
  void didUpdateWidget(covariant ReplyList oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _collapsed = true;
      _displayList = widget.reply;
      _displayCollapsed = widget.reply.length > _collapseSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    var itemCount = _displayCollapsed
        ? _collapsed
            ? _collapseSize + 1
            : _displayList.length + 1
        : _displayList.length;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: REdgeInsets.only(left: 6),
      itemBuilder: (context, index) {
        if (_displayCollapsed && index == (itemCount - 1)) {
          return TextButton(
            onPressed: () => setState(() => _collapsed = !_collapsed),
            style: TextButton.styleFrom(
              padding: REdgeInsets.symmetric(vertical: 5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${_collapsed ? '展开' : '收起'}更多回复',
                  style: TextStyle(
                    color: mainTheme?.subTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(padding: REdgeInsets.only(left: 3)),
                _collapsed
                    ? Icon(Icons.expand_more, color: mainTheme?.subTextColor)
                    : Icon(Icons.expand_less, color: mainTheme?.subTextColor),
                Padding(padding: REdgeInsets.only(right: 6)),
              ],
            ),
          );
        }
        final reply = _displayList[index];
        return CommentItem(
          now: widget.now,
          deployUserCode: widget.deployUserCode,
          comment: reply,
          onCommentPressed: (comment) => widget.onCommentPressed?.call(comment),
          onLikePressed: widget.onLikePressed,
        );
      },
      separatorBuilder: (context, index) {
        if (index != _displayList.length) return nil;

        return Container(
          height: 1.h,
          color: mainTheme?.dividerColor,
          margin: REdgeInsets.symmetric(horizontal: 11),
        );
      },
      itemCount: itemCount,
    );
  }
}
