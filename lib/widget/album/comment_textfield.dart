import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/album_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    required this.hintText,
    this.readOnly = false,
    this.focusNode,
    this.displayClear = false,
    this.controller,
    this.onClear,
    this.onChanged,
    this.onSubmitted,
    super.key,
  });

  final bool readOnly;
  final String hintText;
  final FocusNode? focusNode;
  final bool displayClear;
  final VoidCallback? onClear;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final albumTheme = Theme.of(context).extension<AlbumTheme>();
    return TextField(
      readOnly: readOnly,
      controller: controller,
      focusNode: focusNode,
      style: TextStyle(
        color: mainTheme?.titleColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        isCollapsed: true,
        filled: true,
        isDense: true,
        contentPadding: REdgeInsets.symmetric(
          horizontal: 11,
          vertical: 6.5,
        ),
        fillColor: albumTheme?.commentTextFieldBackground,
        hintText: hintText,
        hintStyle: TextStyle(
          color: albumTheme?.commentTextFieldHintColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.25,
            strokeAlign: BorderSide.strokeAlignOutside,
            color:
                albumTheme?.commentTextFieldBorderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 35.w,
          maxWidth: 35.w,
          minHeight: 13.h,
          maxHeight: 13.h,
        ),
        prefixIcon:
            Assets.album.commentHintIcon.image(width: 12.w, height: 13.h),
        suffixIconConstraints: displayClear
            ? BoxConstraints(
                minWidth: 30.w,
                maxWidth: 30.w,
                minHeight: 14.h,
                maxHeight: 14.h,
              )
            : null,
        suffixIcon: displayClear
            ? TextButton(
                onPressed: onClear,
                child: Icon(
                  Icons.clear_rounded,
                  size: 14.r,
                  color: albumTheme?.commentTextFieldHintColor,
                ),
              )
            : null,
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.send,
    );
  }
}
