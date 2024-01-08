// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageWrapper _$ImageWrapperFromJson(Map<String, dynamic> json) {
  return _ImageWrapper.fromJson(json);
}

/// @nodoc
mixin _$ImageWrapper {
  String get url => throw _privateConstructorUsedError;
  String get heroTag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageWrapperCopyWith<ImageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageWrapperCopyWith<$Res> {
  factory $ImageWrapperCopyWith(
          ImageWrapper value, $Res Function(ImageWrapper) then) =
      _$ImageWrapperCopyWithImpl<$Res, ImageWrapper>;
  @useResult
  $Res call({String url, String heroTag});
}

/// @nodoc
class _$ImageWrapperCopyWithImpl<$Res, $Val extends ImageWrapper>
    implements $ImageWrapperCopyWith<$Res> {
  _$ImageWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? heroTag = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageWrapperImplCopyWith<$Res>
    implements $ImageWrapperCopyWith<$Res> {
  factory _$$ImageWrapperImplCopyWith(
          _$ImageWrapperImpl value, $Res Function(_$ImageWrapperImpl) then) =
      __$$ImageWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String heroTag});
}

/// @nodoc
class __$$ImageWrapperImplCopyWithImpl<$Res>
    extends _$ImageWrapperCopyWithImpl<$Res, _$ImageWrapperImpl>
    implements _$$ImageWrapperImplCopyWith<$Res> {
  __$$ImageWrapperImplCopyWithImpl(
      _$ImageWrapperImpl _value, $Res Function(_$ImageWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? heroTag = null,
  }) {
    return _then(_$ImageWrapperImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageWrapperImpl implements _ImageWrapper {
  const _$ImageWrapperImpl({required this.url, required this.heroTag});

  factory _$ImageWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageWrapperImplFromJson(json);

  @override
  final String url;
  @override
  final String heroTag;

  @override
  String toString() {
    return 'ImageWrapper(url: $url, heroTag: $heroTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageWrapperImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, heroTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageWrapperImplCopyWith<_$ImageWrapperImpl> get copyWith =>
      __$$ImageWrapperImplCopyWithImpl<_$ImageWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageWrapperImplToJson(
      this,
    );
  }
}

abstract class _ImageWrapper implements ImageWrapper {
  const factory _ImageWrapper(
      {required final String url,
      required final String heroTag}) = _$ImageWrapperImpl;

  factory _ImageWrapper.fromJson(Map<String, dynamic> json) =
      _$ImageWrapperImpl.fromJson;

  @override
  String get url;
  @override
  String get heroTag;
  @override
  @JsonKey(ignore: true)
  _$$ImageWrapperImplCopyWith<_$ImageWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoDurationState _$VideoDurationStateFromJson(Map<String, dynamic> json) {
  return _VideoDurationState.fromJson(json);
}

/// @nodoc
mixin _$VideoDurationState {
  bool get isPlaying => throw _privateConstructorUsedError;
  Duration get progress => throw _privateConstructorUsedError;
  Duration get buffered => throw _privateConstructorUsedError;
  Duration get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDurationStateCopyWith<VideoDurationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDurationStateCopyWith<$Res> {
  factory $VideoDurationStateCopyWith(
          VideoDurationState value, $Res Function(VideoDurationState) then) =
      _$VideoDurationStateCopyWithImpl<$Res, VideoDurationState>;
  @useResult
  $Res call(
      {bool isPlaying, Duration progress, Duration buffered, Duration total});
}

/// @nodoc
class _$VideoDurationStateCopyWithImpl<$Res, $Val extends VideoDurationState>
    implements $VideoDurationStateCopyWith<$Res> {
  _$VideoDurationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? progress = null,
    Object? buffered = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Duration,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoDurationStateImplCopyWith<$Res>
    implements $VideoDurationStateCopyWith<$Res> {
  factory _$$VideoDurationStateImplCopyWith(_$VideoDurationStateImpl value,
          $Res Function(_$VideoDurationStateImpl) then) =
      __$$VideoDurationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPlaying, Duration progress, Duration buffered, Duration total});
}

/// @nodoc
class __$$VideoDurationStateImplCopyWithImpl<$Res>
    extends _$VideoDurationStateCopyWithImpl<$Res, _$VideoDurationStateImpl>
    implements _$$VideoDurationStateImplCopyWith<$Res> {
  __$$VideoDurationStateImplCopyWithImpl(_$VideoDurationStateImpl _value,
      $Res Function(_$VideoDurationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? progress = null,
    Object? buffered = null,
    Object? total = null,
  }) {
    return _then(_$VideoDurationStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Duration,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoDurationStateImpl implements _VideoDurationState {
  const _$VideoDurationStateImpl(
      {required this.isPlaying,
      required this.progress,
      required this.buffered,
      required this.total});

  factory _$VideoDurationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoDurationStateImplFromJson(json);

  @override
  final bool isPlaying;
  @override
  final Duration progress;
  @override
  final Duration buffered;
  @override
  final Duration total;

  @override
  String toString() {
    return 'VideoDurationState(isPlaying: $isPlaying, progress: $progress, buffered: $buffered, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoDurationStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.buffered, buffered) ||
                other.buffered == buffered) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isPlaying, progress, buffered, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoDurationStateImplCopyWith<_$VideoDurationStateImpl> get copyWith =>
      __$$VideoDurationStateImplCopyWithImpl<_$VideoDurationStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoDurationStateImplToJson(
      this,
    );
  }
}

abstract class _VideoDurationState implements VideoDurationState {
  const factory _VideoDurationState(
      {required final bool isPlaying,
      required final Duration progress,
      required final Duration buffered,
      required final Duration total}) = _$VideoDurationStateImpl;

  factory _VideoDurationState.fromJson(Map<String, dynamic> json) =
      _$VideoDurationStateImpl.fromJson;

  @override
  bool get isPlaying;
  @override
  Duration get progress;
  @override
  Duration get buffered;
  @override
  Duration get total;
  @override
  @JsonKey(ignore: true)
  _$$VideoDurationStateImplCopyWith<_$VideoDurationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
