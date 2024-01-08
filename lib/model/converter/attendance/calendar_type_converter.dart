import 'package:components/model/school_models.dart';
import 'package:json_annotation/json_annotation.dart';

class CalendarTypeJsonConverter implements JsonConverter<CalendarType, String> {
  const CalendarTypeJsonConverter();

  @override
  CalendarType fromJson(String json) {
    switch (json) {
      case "1":
        return CalendarType.open;
      case '2':
        return CalendarType.vacation;
      case '3':
        return CalendarType.standard;
      case '4':
        return CalendarType.ownVacation;
      case '5':
        return CalendarType.holiday;
      case '6':
        return CalendarType.makeUp;
    }
    return CalendarType.none;
  }

  @override
  String toJson(CalendarType type) {
    switch (type) {
      case CalendarType.open:
        return '1';
      case CalendarType.vacation:
        return '2';
      case CalendarType.standard:
        return '3';
      case CalendarType.ownVacation:
        return '4';
      case CalendarType.holiday:
        return '5';
      case CalendarType.makeUp:
        return '6';
      default:
        return '';
    }
  }
}
