import 'package:components/model/activity/activity_model.dart';
import 'package:json_annotation/json_annotation.dart';

class ActivityStatusJsonConverter
    implements JsonConverter<ActivityStatus, String> {
  const ActivityStatusJsonConverter();

  @override
  ActivityStatus fromJson(String json) {
    switch (json) {
      case '0':
        return ActivityStatus.notStart;
      case '1':
        return ActivityStatus.processing;
      case '2':
        return ActivityStatus.end;
      case '3':
        return ActivityStatus.pause;
      case '4':
        return ActivityStatus.invalid;
    }
    return ActivityStatus.unknown;
  }

  @override
  String toJson(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.notStart:
        return '0';
      case ActivityStatus.processing:
        return '1';
      case ActivityStatus.end:
        return '2';
      case ActivityStatus.pause:
        return '3';
      case ActivityStatus.invalid:
        return '4';
      default:
        return '';
    }
  }
}
