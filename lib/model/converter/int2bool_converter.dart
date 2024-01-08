import 'package:json_annotation/json_annotation.dart';

/// 数字转换布尔值
class Int2BoolJsonConverter implements JsonConverter<bool, int> {
  const Int2BoolJsonConverter();

  @override
  bool fromJson(int json) {
    return json == 1;
  }

  @override
  int toJson(bool value) {
    return value ? 1 : 0;
  }
}

class Int2BoolNullableJsonConverter implements JsonConverter<bool?, int> {
  const Int2BoolNullableJsonConverter();

  @override
  bool? fromJson(int json) {
    return json == 1;
  }

  @override
  int toJson(bool? value) {
    return value == null
        ? 0
        : value
            ? 1
            : 0;
  }
}
