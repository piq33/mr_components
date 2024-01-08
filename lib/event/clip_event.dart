class ClipViewEvent {
  final String clipId;
  const ClipViewEvent(this.clipId);
}

enum Operation { like, dislike, comment, reply }

class ClipReloadEvent {
  final String activityId;
  final Operation operation;

  const ClipReloadEvent(this.activityId, this.operation);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClipReloadEvent &&
          runtimeType == other.runtimeType &&
          activityId == other.activityId &&
          operation == other.operation;

  @override
  int get hashCode => activityId.hashCode ^ operation.hashCode;

  @override
  String toString() {
    return 'ClipReloadEvent{activityId: $activityId, operation: $operation}';
  }
}
