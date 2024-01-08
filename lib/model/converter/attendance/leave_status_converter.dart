import 'package:components/model/attendance/dayoff_model.dart';
import 'package:json_annotation/json_annotation.dart';

class LeaveStatusJsonConverter implements JsonConverter<LeaveStatus, String> {
  const LeaveStatusJsonConverter();

  @override
  LeaveStatus fromJson(String json) {
    switch (json) {
      case '0':
        return LeaveStatus.checking;
      case '1':
        return LeaveStatus.approval;
      case '-1':
        return LeaveStatus.cancel;
      default:
        return LeaveStatus.invalidate;
    }
  }

  @override
  String toJson(LeaveStatus result) {
    if (result == null) return '';
    switch (result) {
      case LeaveStatus.checking:
        return '0';
      case LeaveStatus.approval:
        return '1';
      case LeaveStatus.cancel:
        return '-1';
      default:
        return '';
    }
  }
}
