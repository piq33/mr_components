import 'package:bsl/model/bosocial_models.dart';
import 'package:json_annotation/json_annotation.dart';

class KnowledgeScopeJsonConverter
    implements JsonConverter<KnowledgeScope, String> {
  const KnowledgeScopeJsonConverter();

  @override
  KnowledgeScope fromJson(String json) {
    switch (json) {
      case 'all':
        return KnowledgeScope.all;
      case 'part':
        return KnowledgeScope.part;
      default:
        return KnowledgeScope.unknown;
    }
  }

  @override
  String toJson(KnowledgeScope status) {
    switch (status) {
      case KnowledgeScope.all:
        return 'all';
      case KnowledgeScope.part:
        return 'part';
      default:
        return '';
    }
  }
}
