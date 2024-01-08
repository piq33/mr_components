import 'package:components/model/attendance/attendance_model.dart';
import 'package:json_annotation/json_annotation.dart';

class AttendanceTypeJsonConverter
    implements JsonConverter<AttendanceType, String> {
  const AttendanceTypeJsonConverter();

  @override
  AttendanceType fromJson(String json) {
    switch (json) {
      case "1":
        return AttendanceType.attendance;
      case '0':
        return AttendanceType.absence;
      case '2':
        return AttendanceType.leave;
      case '6':
        return AttendanceType.added;
    }
    return AttendanceType.none;
  }

  @override
  String toJson(AttendanceType type) {
    switch (type) {
      case AttendanceType.attendance:
        return '1';
      case AttendanceType.absence:
        return '0';
      case AttendanceType.leave:
        return '2';
      case AttendanceType.added:
        return '6';
      default:
        return '';
    }
  }
}
