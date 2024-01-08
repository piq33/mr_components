import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class ImageWrapper with _$ImageWrapper {
  const factory ImageWrapper({
    required String url,
    required String heroTag,
  }) = _ImageWrapper;

  factory ImageWrapper.fromJson(Map<String, Object?> json) =>
      _$ImageWrapperFromJson(json);
}

/// 视频进度条数据
@freezed
class VideoDurationState with _$VideoDurationState {
  const factory VideoDurationState({
    required bool isPlaying,
    required Duration progress,
    required Duration buffered,
    required Duration total,
  }) = _VideoDurationState;

  factory VideoDurationState.fromJson(Map<String, Object?> json) =>
      _$VideoDurationStateFromJson(json);
}
