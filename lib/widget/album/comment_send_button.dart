import 'package:bsl/theme/album_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentSendButton extends StatelessWidget {
  const CommentSendButton({this.onPressed, super.key});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final albumTheme = Theme.of(context).extension<AlbumTheme>();
    return Container(
      width: 50.w,
      height: 31.h,
      decoration: BoxDecoration(
        color: albumTheme?.commentButtonBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 8),
        ),
        child: Text(
          '发送',
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: TextStyle(
            color: albumTheme?.commentButtonTextColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
