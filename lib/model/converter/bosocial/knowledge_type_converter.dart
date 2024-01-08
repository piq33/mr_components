import 'package:components/model/bosocial_models.dart';
import 'package:json_annotation/json_annotation.dart';

class KnowledgeTypeJsonConverter implements JsonConverter<KnowledgeType, int> {
  const KnowledgeTypeJsonConverter();

  @override
  KnowledgeType fromJson(int json) {
    switch (json) {
      case 1:
        return KnowledgeType.article;
      case 2:
        return KnowledgeType.video;
      default:
        return KnowledgeType.unknown;
    }
  }

  @override
  int toJson(KnowledgeType fileType) {
    switch (fileType) {
      case KnowledgeType.article:
        return 1;
      case KnowledgeType.video:
        return 2;
      default:
        return 0;
    }
  }
}
