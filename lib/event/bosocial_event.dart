import 'package:bsl/model/bosocial_models.dart';

class KnowledgeSyncEvent {
  final KnowledgeDetailModel knowledge;

  const KnowledgeSyncEvent(this.knowledge);
}

class KnowledgeReloadEvent {}

class KnowledgeCatalogReloadEvent {
  final String catalogId;

  const KnowledgeCatalogReloadEvent(this.catalogId);
}
