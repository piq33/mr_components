import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';

class TextFieldResource extends StatefulWidget {
  const TextFieldResource({required this.data, super.key});

  final ResourceTextValue data;

  @override
  State<TextFieldResource> createState() => _TextFieldResourceState();
}

class _TextFieldResourceState extends State<TextFieldResource> {
  late final _textController = TextEditingController(text: widget.data.value);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final data = widget.data;
    return TextField(
      controller: _textController,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: data.color ?? mainTheme?.titleColor,
        fontSize: data.fontSize,
        fontWeight: _fontWeight,
      ),
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        border: InputBorder.none,
        hintText: data.hint ?? '请输入...',
        hintStyle: TextStyle(
          color: data.hintColor ?? mainTheme?.hintTextColor,
          fontSize: data.fontSize,
          fontWeight: _fontWeight,
        ),
      ),
      onChanged: (value) => widget.data.value = value,
      textInputAction: TextInputAction.done,
    );
  }

  FontWeight get _fontWeight {
    return switch (widget.data.fontWeight ?? 0) {
      0 => FontWeight.normal,
      > 0 && <= 100 => FontWeight.w100,
      > 100 && <= 200 => FontWeight.w200,
      > 200 && <= 300 => FontWeight.w300,
      > 300 && <= 400 => FontWeight.w400,
      > 400 && <= 500 => FontWeight.w500,
      > 500 && <= 600 => FontWeight.w600,
      > 600 && <= 700 => FontWeight.w700,
      > 700 && <= 800 => FontWeight.w800,
      > 800 && <= 900 => FontWeight.w900,
      > 900 => FontWeight.w900,
      _ => FontWeight.w400,
    };
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
