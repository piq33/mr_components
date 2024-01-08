import 'package:json_annotation/json_annotation.dart';

/// 字符串转换数字
class String2DoubleJsonConverter implements JsonConverter<double, String> {
  const String2DoubleJsonConverter();

  @override
  double fromJson(String json) {
    return double.tryParse(json) ?? 0;
  }

  @override
  String toJson(double value) {
    return value.toString();
  }
}

class String2DoubleNullableJsonConverter
    implements JsonConverter<double?, String> {
  const String2DoubleNullableJsonConverter();

  @override
  double? fromJson(String json) {
    return double.tryParse(json);
  }

  @override
  String toJson(double? value) {
    return value?.toString() ?? '';
  }
}
