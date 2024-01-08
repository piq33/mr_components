import 'package:bsl/theme/login_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef Validator = bool Function(String value);

class LoginTextField extends StatefulWidget {
  const LoginTextField({
    required this.controller,
    required this.title,
    required this.errorText,
    required this.hintText,
    this.maxLength,
    this.cursorColor,
    this.focusNode,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.onValidator,
    this.onSubmitted,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final String errorText;
  final String hintText;
  final int? maxLength;
  final Color? cursorColor;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Validator? onValidator;
  final ValueChanged<String>? onSubmitted;

  @override
  State createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var _errorText = '';

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_validate);
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: mainTheme?.titleColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 10)),
        SizedBox(
          height: 44.h,
          child: Theme(
            data: ThemeData(
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: widget.cursorColor,
                selectionColor: widget.cursorColor?.withOpacity(0.5),
                selectionHandleColor: widget.cursorColor,
              ),
            ),
            child: TextField(
              focusNode: widget.focusNode,
              controller: widget.controller,
              cursorHeight: cursorHeight.h,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              maxLength: widget.maxLength,
              decoration: InputDecoration(
                contentPadding: widget.contentPadding,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: mainTheme?.subTextColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                errorStyle: TextStyle(
                  color: loginTheme?.warningColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: loginTheme?.inputBorderColor ?? Colors.transparent,
                    width: 1.r,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(33.r)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: loginTheme?.inputBorderColor ?? Colors.transparent,
                    width: 1.r,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(33.r)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: loginTheme?.inputBorderColor ?? Colors.transparent,
                    width: 1.r,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(33.r)),
                ),
                counterText: '',
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
              ),
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              onSubmitted: widget.onSubmitted,
            ),
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 10)),
        Text(
          _errorText,
          style: TextStyle(
            color: loginTheme?.warningColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  void _validate() {
    final val = widget.controller.text;
    if (widget.onValidator?.call(val) ?? true) {
      setState(() => _errorText = '');
    } else {
      setState(() => _errorText = widget.errorText);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_validate);
    super.dispose();
  }
}
