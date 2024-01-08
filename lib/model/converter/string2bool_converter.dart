import 'package:json_annotation/json_annotation.dart';

/// 字符串转换布尔值
class String2BoolJsonConverter implements JsonConverter<bool, String> {
  const String2BoolJsonConverter();

  @override
  bool fromJson(String json) {
    return json == '1';
  }

  @override
  String toJson(bool value) {
    return value ? '1' : '0';
  }
}

class String2BoolNullableJsonConverter implements JsonConverter<bool?, String> {
  const String2BoolNullableJsonConverter();

  @override
  bool? fromJson(String json) {
    return json.isEmpty ? null : json == '1';
  }

  @override
  String toJson(bool? value) {
    return value == null
        ? ''
        : value
            ? '1'
            : '0';
  }
}
