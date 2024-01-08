import 'package:bsl/model/bosocial_models.dart';
import 'package:json_annotation/json_annotation.dart';

class CommentTypeJsonConverter implements JsonConverter<CommentType, int> {
  const CommentTypeJsonConverter();

  @override
  CommentType fromJson(int json) {
    switch (json) {
      case 1:
        return CommentType.comment;
      case 2:
        return CommentType.reply;
      default:
        return CommentType.unknown;
    }
  }

  @override
  int toJson(CommentType status) {
    switch (status) {
      case CommentType.comment:
        return 1;
      case CommentType.reply:
        return 2;
      default:
        return 1;
    }
  }
}
