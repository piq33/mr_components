import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bsl/log/global_log.dart';

class EventDateJsonConverter implements JsonConverter<DateTime?, String> {
  const EventDateJsonConverter();

  static final DateFormat _datetimeFormat =
      DateFormat('yyyyMMdd', Intl.systemLocale);

  @override
  DateTime? fromJson(String json) {
    if (json.isEmpty) return null;
    if (json.length != 8) return null;
    final String year = json.substring(0, 4);
    final String month = json.substring(4, 6);
    final String day = json.substring(6, 8);
    try {
      return DateTime(int.parse(year), int.parse(month), int.parse(day));
    } catch (e, stackTrace) {
      logError('日期解析异常', e, stackTrace);
      return null;
    }
  }

  @override
  String toJson(DateTime? dateTime) {
    if (dateTime == null) return '';
    return _datetimeFormat.format(dateTime);
  }
}

class EventYearWeekJsonConverter implements JsonConverter<int?, String> {
  const EventYearWeekJsonConverter();

  @override
  int? fromJson(String json) {
    if (json.isEmpty) return null;
    var jsonStr = json;
    if (json.length >= 6) {
      jsonStr = json.substring(4, 6);
    }
    return int.tryParse(jsonStr) ?? 0;
  }

  @override
  String toJson(int? week) {
    if (week == null) return '';
    return week.toString();
  }
}

class EventMonthJsonConverter implements JsonConverter<int?, String> {
  const EventMonthJsonConverter();

  @override
  int? fromJson(String json) {
    if (json.isEmpty) return null;
    var jsonStr = json;
    if (json.length >= 6) {
      jsonStr = json.substring(4, 6);
    }
    return int.tryParse(jsonStr) ?? 0;
  }

  @override
  String toJson(int? month) {
    return month.toString();
  }
}
