import 'package:components/model/time_models.dart';

enum OperationType {
  add,
  delete,
  update,
  refresh,
}

class RefreshTimelineEvent {
  const RefreshTimelineEvent({
    this.moment,
    required this.operation,
    required this.catalogs,
  });

  final TimeMomentsModel? moment;
  final OperationType operation;
  final List<CatalogType> catalogs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefreshTimelineEvent &&
          runtimeType == other.runtimeType &&
          moment == other.moment &&
          operation == other.operation &&
          catalogs == other.catalogs;

  @override
  int get hashCode => moment.hashCode ^ operation.hashCode ^ catalogs.hashCode;

  @override
  String toString() {
    return 'RefreshTimelineEvent{moment: $moment, operation: $operation, catalogs: $catalogs}';
  }
}
