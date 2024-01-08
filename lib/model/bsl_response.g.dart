// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bsl_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmptyObjectDataImpl _$$EmptyObjectDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EmptyObjectDataImpl();

Map<String, dynamic> _$$EmptyObjectDataImplToJson(
        _$EmptyObjectDataImpl instance) =>
    <String, dynamic>{};

_$BslResponseDataImpl<T> _$$BslResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BslResponseDataImpl<T>(
      json['code'] as int,
      _$nullableGenericFromJson(json['data'], fromJsonT),
      _$nullableGenericFromJson(json['result'], fromJsonT),
      json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$$BslResponseDataImplToJson<T>(
  _$BslResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'result': _$nullableGenericToJson(instance.result, toJsonT),
      'msg': instance.msg,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$BslPageResponseDataImpl<T> _$$BslPageResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BslPageResponseDataImpl<T>(
      json['total'] as int,
      json['pages'] as int,
      json['size'] as int,
      json['current'] as int,
      _$nullableGenericFromJson(json['records'], fromJsonT),
      json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$$BslPageResponseDataImplToJson<T>(
  _$BslPageResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'pages': instance.pages,
      'size': instance.size,
      'current': instance.current,
      'records': _$nullableGenericToJson(instance.records, toJsonT),
      'msg': instance.msg,
    };

_$UploadResponseDataImpl _$$UploadResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadResponseDataImpl(
      json['code'] as int,
      json['msg'] as String? ?? '',
      json['fileName'] as String,
      json['newFileName'] as String,
      json['originalFilename'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$$UploadResponseDataImplToJson(
        _$UploadResponseDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'fileName': instance.fileName,
      'newFileName': instance.newFileName,
      'originalFilename': instance.originalFilename,
      'url': instance.url,
    };
