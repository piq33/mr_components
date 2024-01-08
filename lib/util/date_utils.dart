
final _weekday = [" ", "一", "二", "三", "四", "五", "六", "日"];

extension DateTimeExtension on DateTime {
  String chineseWeekday([bool simple = false]) =>
      simple ? _weekday[weekday] : '星期${_weekday[weekday]}';

  bool get isWeekend =>
      weekday == DateTime.saturday || weekday == DateTime.sunday;

  /// 只保留年月格式的标准日期
  DateTime get toMonthStandard => DateTime(year, month, 1);

  /// 只保留年月日格式的标准日期
  DateTime get toDayStandard => DateTime(year, month, day);

  /// 只对比年月日是否相同，不比较时分秒
  bool sameMonthDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  bool inside(DateTime start, DateTime end) =>
      (isAfter(start) && isBefore(end)) ||
      sameMonthDay(start) ||
      sameMonthDay(end);
  bool between(DateTime start, DateTime end) => isAfter(start) && isBefore(end);

  int daysInMonth() {
    List<int> monthLength = List.filled(12, 0);

    monthLength[0] = 31;
    monthLength[2] = 31;
    monthLength[4] = 31;
    monthLength[6] = 31;
    monthLength[7] = 31;
    monthLength[9] = 31;
    monthLength[11] = 31;
    monthLength[3] = 30;
    monthLength[8] = 30;
    monthLength[5] = 30;
    monthLength[10] = 30;

    if (_leapYear(year)) {
      monthLength[1] = 29;
    } else {
      monthLength[1] = 28;
    }

    return monthLength[month - 1];
  }

  
  bool _leapYear(int year) {
    bool leapYear = false;

    bool leap = ((year % 100 == 0) && (year % 400 != 0));
    if (leap == true) {
      leapYear = false;
    } else if (year % 4 == 0) {
      leapYear = true;
    }

    return leapYear;
  }
}

extension DurationExtension on Duration {
  String mediaDuration() {
    final totalSeconds = inSeconds;
    var minute = (totalSeconds / 60).floor();
    var second = (totalSeconds % 60).floor();
    return '${minute.toStringAsFixed(0).padLeft(2, '0')}:${second.toStringAsFixed(0).padLeft(2, '0')}';
  }
}
