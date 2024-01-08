import 'package:bsl/log/global_log.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class AttendanceDateJsonConverter implements JsonConverter<DateTime?, String> {
  const AttendanceDateJsonConverter();

  static final DateFormat _datetimeFormat =
      DateFormat('yyyyMMdd', Intl.systemLocale);

  @override
  DateTime? fromJson(String json) {
    if (json.isEmpty) return null;
    final removeSeparator = json.replaceAll('-', '');
    if (removeSeparator.length != 6) return null;
    final String year = removeSeparator.substring(0, 4);
    final String month = removeSeparator.substring(4, 6);
    try {
      return DateTime(int.parse(year), int.parse(month), 1);
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
