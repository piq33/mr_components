import 'package:freezed_annotation/freezed_annotation.dart';

part 'fothzo_model.freezed.dart';
part 'fothzo_model.g.dart';

@freezed
class FothzoOtherParam with _$FothzoOtherParam {
  const FothzoOtherParam._();
  const factory FothzoOtherParam({
    /// 激活标签页
    @Default(1) int active,
  }) = _FothzoOtherParam;

  factory FothzoOtherParam.fromJson(Map<String, Object?> json) =>
      _$FothzoOtherParamFromJson(json);
}
