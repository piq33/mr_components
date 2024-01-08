import 'package:bsl/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

class ContentTypeJsonConverter implements JsonConverter<ContentType, int> {
  const ContentTypeJsonConverter();

  @override
  ContentType fromJson(int json) {
    switch (json) {
      case 1:
        return ContentType.text;
      case 2:
        return ContentType.link;
    }
    return ContentType.unknown;
  }

  @override
  int toJson(ContentType status) {
    switch (status) {
      case ContentType.text:
        return 1;
      case ContentType.link:
        return 2;
      default:
        return -1;
    }
  }
}
