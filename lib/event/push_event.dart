import 'package:components/model/push_model.dart';

class PushInitEvent {}

class AliasEvent {
  final PushAliasModel result;
  const AliasEvent(this.result);

  @override
  String toString() {
    return 'AliasEvent{result: $result}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AliasEvent &&
          runtimeType == other.runtimeType &&
          result == other.result;

  @override
  int get hashCode => result.hashCode;
}

class PushEvent {
  final GetuiPushModel push;
  const PushEvent(this.push);

  @override
  String toString() {
    return 'PushEvent{push: $push}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PushEvent &&
          runtimeType == other.runtimeType &&
          push == other.push;

  @override
  int get hashCode => push.hashCode;
}
