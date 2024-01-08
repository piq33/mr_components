import 'package:components/model/attendance/attendance_model.dart';
import 'package:json_annotation/json_annotation.dart';

class AttendanceStatusJsonConverter
    implements JsonConverter<AttendanceStatus, String> {
  const AttendanceStatusJsonConverter();

  @override
  AttendanceStatus fromJson(String json) {
    switch (json) {
      case "0":
        return AttendanceStatus.toBeConfirmed;
      case '2':
        return AttendanceStatus.verifying;
      case '3':
        return AttendanceStatus.approval;
    }
    return AttendanceStatus.invalidate;
  }

  @override
  String toJson(AttendanceStatus status) {
    switch (status) {
      case AttendanceStatus.toBeConfirmed:
        return '0';
      case AttendanceStatus.verifying:
        return '2';
      case AttendanceStatus.approval:
        return '3';
      default:
        return '';
    }
  }
}
