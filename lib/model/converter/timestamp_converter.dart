import 'package:json_annotation/json_annotation.dart';

/// 时间戳转换为DateTime
class TimestampJsonConverter implements JsonConverter<DateTime, int> {
  const TimestampJsonConverter();

  @override
  DateTime fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json);
  }

  @override
  int toJson(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch;
  }
}

class TimestampNullableJsonConverter implements JsonConverter<DateTime?, int> {
  const TimestampNullableJsonConverter();

  @override
  DateTime? fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json);
  }

  @override
  int toJson(DateTime? dateTime) {
    return dateTime?.millisecondsSinceEpoch ?? 0;
  }
}

/// 时间戳(字符串)转换为DateTime
class StringTimestampJsonConverter implements JsonConverter<DateTime, String> {
  const StringTimestampJsonConverter();

  @override
  DateTime fromJson(String json) {
    final i = int.tryParse(json) ?? 0;
    return i > 0 ? DateTime.fromMillisecondsSinceEpoch(i) : DateTime.now();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch.toString();
  }
}

class StringTimestampNullableJsonConverter
    implements JsonConverter<DateTime?, String> {
  const StringTimestampNullableJsonConverter();

  @override
  DateTime? fromJson(String json) {
    final i = int.tryParse(json) ?? -1;
    return i > 0 ? DateTime.fromMillisecondsSinceEpoch(i) : null;
  }

  @override
  String toJson(DateTime? dateTime) {
    return dateTime?.millisecondsSinceEpoch.toString() ?? '';
  }
}
