import 'package:components/model/bosocial_models.dart';
import 'package:json_annotation/json_annotation.dart';

class StatusJsonConverter implements JsonConverter<Status, int> {
  const StatusJsonConverter();

  @override
  Status fromJson(int json) {
    switch (json) {
      case 0:
        return Status.notPublish;
      case 1:
        return Status.publish;
      case 2:
        return Status.recall;
      default:
        return Status.unknown;
    }
  }

  @override
  int toJson(Status status) {
    switch (status) {
      case Status.notPublish:
        return 0;
      case Status.publish:
        return 1;
      case Status.recall:
        return 2;
      default:
        return 0;
    }
  }
}
