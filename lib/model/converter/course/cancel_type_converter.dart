import 'package:components/model/course/elective_course_model.dart';
import 'package:json_annotation/json_annotation.dart';

class CancelTypeJsonConverter implements JsonConverter<CancelType, String> {
  const CancelTypeJsonConverter();

  @override
  CancelType fromJson(String json) {
    switch (json) {
      case 'pre':
        return CancelType.pre;
      case 'current':
        return CancelType.current;
      default:
        return CancelType.none;
    }
  }

  @override
  String toJson(CancelType fileType) {
    switch (fileType) {
      case CancelType.pre:
        return 'pre';
      case CancelType.current:
        return 'current';
      default:
        return '';
    }
  }
}
