// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diy_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceValueDataImpl _$$ResourceValueDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceValueDataImpl(
      $type: json['resourceType'] as String?,
    );

Map<String, dynamic> _$$ResourceValueDataImplToJson(
        _$ResourceValueDataImpl instance) =>
    <String, dynamic>{
      'resourceType': instance.$type,
    };

_$ResourceTextValueImpl _$$ResourceTextValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceTextValueImpl(
      value: json['value'] as String?,
      hint: json['hint'] as String?,
      hintColor: _$JsonConverterFromJson<String, Color?>(
          json['hintColor'], const String2ColorJsonConverter().fromJson),
      color: _$JsonConverterFromJson<String, Color?>(
          json['color'], const String2ColorJsonConverter().fromJson),
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontWeight: (json['fontWeight'] as num?)?.toDouble(),
      $type: json['resourceType'] as String?,
    );

Map<String, dynamic> _$$ResourceTextValueImplToJson(
        _$ResourceTextValueImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'hint': instance.hint,
      'hintColor': const String2ColorJsonConverter().toJson(instance.hintColor),
      'color': const String2ColorJsonConverter().toJson(instance.color),
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'resourceType': instance.$type,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$ResourceImageValueImpl _$$ResourceImageValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceImageValueImpl(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      type: $enumDecodeNullable(_$ResourceValueTypeEnumMap, json['type'],
              unknownValue: ResourceValueType.unknown) ??
          ResourceValueType.unknown,
      fit: json['fit'] == null
          ? BoxFit.cover
          : const String2BoxFitJsonConverter().fromJson(json['fit'] as String),
      value: json['value'] as String?,
      $type: json['resourceType'] as String?,
    );

Map<String, dynamic> _$$ResourceImageValueImplToJson(
        _$ResourceImageValueImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'type': _$ResourceValueTypeEnumMap[instance.type]!,
      'fit': const String2BoxFitJsonConverter().toJson(instance.fit),
      'value': instance.value,
      'resourceType': instance.$type,
    };

const _$ResourceValueTypeEnumMap = {
  ResourceValueType.unknown: '',
  ResourceValueType.color: 'color',
  ResourceValueType.url: 'url',
  ResourceValueType.asset: 'assets',
  ResourceValueType.file: 'file',
};

_$PageBoxImpl _$$PageBoxImplFromJson(Map<String, dynamic> json) =>
    _$PageBoxImpl(
      borderColor: _$JsonConverterFromJson<String, Color?>(
          json['borderColor'], const String2ColorJsonConverter().fromJson),
      borderWidth: (json['borderWidth'] as num?)?.toDouble() ?? 0.0,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 0.0,
      borderType:
          $enumDecodeNullable(_$BoxBorderTypeEnumMap, json['borderType']) ??
              BoxBorderType.line,
    );

Map<String, dynamic> _$$PageBoxImplToJson(_$PageBoxImpl instance) =>
    <String, dynamic>{
      'borderColor':
          const String2ColorJsonConverter().toJson(instance.borderColor),
      'borderWidth': instance.borderWidth,
      'borderRadius': instance.borderRadius,
      'borderType': _$BoxBorderTypeEnumMap[instance.borderType]!,
    };

const _$BoxBorderTypeEnumMap = {
  BoxBorderType.dash: 'dash',
  BoxBorderType.line: 'line',
};

_$PageResourceImpl _$$PageResourceImplFromJson(Map<String, dynamic> json) =>
    _$PageResourceImpl(
      index: json['index'] as int? ?? 0,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      align: json['align'] == null
          ? Alignment.center
          : const String2AlignJsonConverter().fromJson(json['align'] as String),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const List2EdgeInsetsJsonConverter()
              .fromJson(json['margin'] as List),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const List2EdgeInsetsJsonConverter()
              .fromJson(json['padding'] as List),
      background: json['background'] == null
          ? null
          : ResourceValue.fromJson(json['background'] as Map<String, dynamic>),
      positionType: $enumDecodeNullable(
              _$PositionTypeEnumMap, json['positionType'],
              unknownValue: PositionType.value) ??
          PositionType.value,
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 0.0,
      rotate: (json['rotate'] as num?)?.toDouble() ?? 0.0,
      box: json['box'] == null
          ? null
          : PageBox.fromJson(json['box'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : ResourceValue.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PageResourceImplToJson(_$PageResourceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'width': instance.width,
      'height': instance.height,
      'align': const String2AlignJsonConverter().toJson(instance.align),
      'margin': const List2EdgeInsetsJsonConverter().toJson(instance.margin),
      'padding': const List2EdgeInsetsJsonConverter().toJson(instance.padding),
      'background': instance.background,
      'positionType': _$PositionTypeEnumMap[instance.positionType]!,
      'x': instance.x,
      'y': instance.y,
      'rotate': instance.rotate,
      'box': instance.box,
      'data': instance.data,
    };

const _$PositionTypeEnumMap = {
  PositionType.value: 'value',
  PositionType.ratio: 'ratio',
};

_$PageJsonModelImpl _$$PageJsonModelImplFromJson(Map<String, dynamic> json) =>
    _$PageJsonModelImpl(
      pageId: json['pageId'] as String? ?? '-1',
      pageIndex: json['pageIndex'] as int? ?? -1,
      background: json['background'] == null
          ? null
          : ResourceValue.fromJson(json['background'] as Map<String, dynamic>),
      resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => PageResource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      homePage: json['homePage'] as bool? ?? false,
      mainColor: _$JsonConverterFromJson<String, Color?>(
          json['mainColor'], const String2ColorJsonConverter().fromJson),
    );

Map<String, dynamic> _$$PageJsonModelImplToJson(_$PageJsonModelImpl instance) =>
    <String, dynamic>{
      'pageId': instance.pageId,
      'pageIndex': instance.pageIndex,
      'background': instance.background,
      'resources': instance.resources,
      'homePage': instance.homePage,
      'mainColor': const String2ColorJsonConverter().toJson(instance.mainColor),
    };

_$TemplateJsonModelImpl _$$TemplateJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateJsonModelImpl(
      templateId: json['templateId'] as String?,
      transition: $enumDecodeNullable(
              _$PageTransitionTypeEnumMap, json['transition']) ??
          PageTransitionType.flip,
      pages: (json['pages'] as List<dynamic>?)
              ?.map((e) => PageJsonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TemplateJsonModelImplToJson(
        _$TemplateJsonModelImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'transition': _$PageTransitionTypeEnumMap[instance.transition]!,
      'pages': instance.pages,
    };

const _$PageTransitionTypeEnumMap = {
  PageTransitionType.none: 0,
  PageTransitionType.translate: 1,
  PageTransitionType.flip: 2,
  PageTransitionType.fade: 3,
};
