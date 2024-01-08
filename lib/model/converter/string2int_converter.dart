import 'package:json_annotation/json_annotation.dart';

/// 字符串转换数字
class String2IntJsonConverter implements JsonConverter<int, String> {
  const String2IntJsonConverter();

  @override
  int fromJson(String json) {
    return int.tryParse(json) ?? 0;
  }

  @override
  String toJson(int value) {
    return value.toString();
  }
}

class String2IntNullableJsonConverter implements JsonConverter<int?, String> {
  const String2IntNullableJsonConverter();

  @override
  int? fromJson(String json) {
    return int.tryParse(json);
  }

  @override
  String toJson(int? value) {
    return value?.toString() ?? '';
  }
}
