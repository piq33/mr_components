// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageWrapperImpl _$$ImageWrapperImplFromJson(Map<String, dynamic> json) =>
    _$ImageWrapperImpl(
      url: json['url'] as String,
      heroTag: json['heroTag'] as String,
    );

Map<String, dynamic> _$$ImageWrapperImplToJson(_$ImageWrapperImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'heroTag': instance.heroTag,
    };

_$VideoDurationStateImpl _$$VideoDurationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoDurationStateImpl(
      isPlaying: json['isPlaying'] as bool,
      progress: Duration(microseconds: json['progress'] as int),
      buffered: Duration(microseconds: json['buffered'] as int),
      total: Duration(microseconds: json['total'] as int),
    );

Map<String, dynamic> _$$VideoDurationStateImplToJson(
        _$VideoDurationStateImpl instance) =>
    <String, dynamic>{
      'isPlaying': instance.isPlaying,
      'progress': instance.progress.inMicroseconds,
      'buffered': instance.buffered.inMicroseconds,
      'total': instance.total.inMicroseconds,
    };
