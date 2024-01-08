import 'package:components/model/bosocial_models.dart';
import 'package:json_annotation/json_annotation.dart';

class CommentUserTypeJsonConverter
    implements JsonConverter<CommentUserType, int> {
  const CommentUserTypeJsonConverter();

  @override
  CommentUserType fromJson(int json) {
    switch (json) {
      case 1:
        return CommentUserType.teacher;
      case 2:
        return CommentUserType.student;
      default:
        return CommentUserType.unknown;
    }
  }

  @override
  int toJson(CommentUserType status) {
    switch (status) {
      case CommentUserType.teacher:
        return 1;
      case CommentUserType.student:
        return 2;
      default:
        return 1;
    }
  }
}
