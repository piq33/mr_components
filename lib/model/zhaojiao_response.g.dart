// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zhaojiao_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZhaoJiaoRequestDataImpl<T> _$$ZhaoJiaoRequestDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ZhaoJiaoRequestDataImpl<T>(
      size: json['size'] as int,
      current: json['current'] as int,
      queryData: _$nullableGenericFromJson(json['queryData'], fromJsonT),
    );

Map<String, dynamic> _$$ZhaoJiaoRequestDataImplToJson<T>(
  _$ZhaoJiaoRequestDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'size': instance.size,
      'current': instance.current,
      'queryData': _$nullableGenericToJson(instance.queryData, toJsonT),
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

_$ZhaoJiaoResponseHeadImpl _$$ZhaoJiaoResponseHeadImplFromJson(
        Map<String, dynamic> json) =>
    _$ZhaoJiaoResponseHeadImpl(
      respCode: json['respCode'] as String? ?? '',
      respDesc: json['respDesc'] as String? ?? '',
      respStatus: json['respStatus'] as String? ?? '01',
      success: json['success'] as bool? ?? false,
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$$ZhaoJiaoResponseHeadImplToJson(
        _$ZhaoJiaoResponseHeadImpl instance) =>
    <String, dynamic>{
      'respCode': instance.respCode,
      'respDesc': instance.respDesc,
      'respStatus': instance.respStatus,
      'success': instance.success,
      'traceId': instance.traceId,
    };

_$ZhaoJiaoResponseDataImpl<T> _$$ZhaoJiaoResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ZhaoJiaoResponseDataImpl<T>(
      _$nullableGenericFromJson(json['data'], fromJsonT),
      ZhaoJiaoResponseHead.fromJson(json['head'] as Map<String, dynamic>),
      json['code'] as int,
    );

Map<String, dynamic> _$$ZhaoJiaoResponseDataImplToJson<T>(
  _$ZhaoJiaoResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'head': instance.head,
      'code': instance.code,
    };

_$ZhaoJiaoPageResponseDataImpl<T> _$$ZhaoJiaoPageResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ZhaoJiaoPageResponseDataImpl<T>(
      const String2IntJsonConverter().fromJson(json['total'] as String),
      const String2IntJsonConverter().fromJson(json['size'] as String),
      const String2IntJsonConverter().fromJson(json['current'] as String),
      _$nullableGenericFromJson(json['rows'], fromJsonT),
      json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$$ZhaoJiaoPageResponseDataImplToJson<T>(
  _$ZhaoJiaoPageResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': const String2IntJsonConverter().toJson(instance.total),
      'size': const String2IntJsonConverter().toJson(instance.size),
      'current': const String2IntJsonConverter().toJson(instance.current),
      'rows': _$nullableGenericToJson(instance.rows, toJsonT),
      'msg': instance.msg,
    };
