import 'package:bsl/model/school_models.dart';
import 'package:json_annotation/json_annotation.dart';

class HolidayTypeJsonConverter implements JsonConverter<HolidayType, String> {
  const HolidayTypeJsonConverter();

  @override
  HolidayType fromJson(String? json) {
    switch (json) {
      case '10':
        return HolidayType.standard;
      case '99':
        return HolidayType.holiday;
      default:
        return HolidayType.none;
    }
  }

  @override
  String toJson(HolidayType holiday) {
    switch (holiday) {
      case HolidayType.standard:
        return '10';
      case HolidayType.holiday:
        return '99';
      default:
        return '';
    }
  }
}
