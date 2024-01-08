import 'package:components/model/activity/activity_model.dart';
import 'package:json_annotation/json_annotation.dart';

class ApplyStatusJsonConverter implements JsonConverter<ApplyStatus, String> {
  const ApplyStatusJsonConverter();

  @override
  ApplyStatus fromJson(String json) {
    switch (json) {
      case '0':
        return ApplyStatus.applied;
      case '1':
        return ApplyStatus.signed;
    }
    return ApplyStatus.unknown;
  }

  @override
  String toJson(ApplyStatus status) {
    switch (status) {
      case ApplyStatus.applied:
        return '0';
      case ApplyStatus.signed:
        return '1';
      default:
        return '';
    }
  }
}
