import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DayStringJsonConverter implements JsonConverter<DateTime, String> {
  const DayStringJsonConverter();

  static final DateFormat _datetimeFormat =
      DateFormat('MM月dd日', Intl.systemLocale);

  @override
  DateTime fromJson(String json) {
    if (json.isEmpty) return DateTime.now();
    return _datetimeFormat.parse(json);
  }

  @override
  String toJson(DateTime dateTime) {
    return _datetimeFormat.format(dateTime);
  }
}
