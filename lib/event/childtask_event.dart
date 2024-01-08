class ChildtaskLikeEvent {
  /// 同学进度id
  final int resultId;

  /// 是否点赞
  final bool isLike;

  const ChildtaskLikeEvent({required this.resultId, required this.isLike});
}

class ChildtaskClockEvent {
  /// 任务编码
  final String taskCode;

  const ChildtaskClockEvent({required this.taskCode});
}
