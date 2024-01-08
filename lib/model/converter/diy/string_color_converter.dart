import 'package:bsl/log/global_log.dart';
import 'package:bsl/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class String2ColorJsonConverter implements JsonConverter<Color?, String> {
  const String2ColorJsonConverter();

  @override
  Color? fromJson(String json) {
    if (json.isEmpty) return null;

    Color? color;
    try {
      color = HexColor.fromHex(json);
    } catch (e, stackTrace) {
      logError('颜色解析异常: ${e.toString()}', e, stackTrace);
    }
    return color;
  }

  @override
  String toJson(Color? color) {
    return color?.toHex() ?? '';
  }
}
