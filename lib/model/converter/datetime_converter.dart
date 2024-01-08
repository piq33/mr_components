import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeJsonConverter implements JsonConverter<DateTime?, String> {
  const DateTimeJsonConverter();

  static final DateFormat _datetimeFormat =
      DateFormat('yyyy-MM-dd HH:mm:ss', Intl.systemLocale);

  @override
  DateTime? fromJson(String json) {
    if (json.isEmpty) return null;
    return _datetimeFormat.parse(json);
  }

  @override
  String toJson(DateTime? dateTime) {
    if (dateTime == null) return '';
    return _datetimeFormat.format(dateTime);
  }
}

class SimpleDateTimeJsonConverter implements JsonConverter<DateTime?, String> {
  const SimpleDateTimeJsonConverter();

  static final DateFormat _datetimeFormat =
      DateFormat('yyyy-MM-dd', Intl.systemLocale);

  @override
  DateTime? fromJson(String json) {
    if (json.isEmpty) return null;
    return _datetimeFormat.parse(json);
  }

  @override
  String toJson(DateTime? dateTime) {
    if (dateTime == null) return '';
    return _datetimeFormat.format(dateTime);
  }
}

class TimestampStringNullableJsonConverter
    implements JsonConverter<DateTime?, String> {
  const TimestampStringNullableJsonConverter();

  @override
  DateTime? fromJson(String json) {
    if (json.isEmpty) return null;
    final timestamp = int.tryParse(json);
    if (timestamp == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  String toJson(DateTime? dateTime) {
    if (dateTime == null) return '';
    return dateTime.millisecondsSinceEpoch.toString();
  }
}

class TimestampStringJsonConverter implements JsonConverter<DateTime, String> {
  const TimestampStringJsonConverter();

  @override
  DateTime fromJson(String json) {
    final timestamp = int.tryParse(json);
    if (timestamp == null) return DateTime.fromMillisecondsSinceEpoch(0);
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  String toJson(DateTime? dateTime) {
    if (dateTime == null) return '';
    return dateTime.millisecondsSinceEpoch.toString();
  }
}
