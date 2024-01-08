// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesOtherParamImpl _$$RecipesOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipesOtherParamImpl(
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$RecipesOtherParamImplToJson(
        _$RecipesOtherParamImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

_$MenuModelImpl _$$MenuModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuModelImpl(
      currDate: _$JsonConverterFromJson<String, DateTime?>(
          json['currDate'], const SimpleDateTimeJsonConverter().fromJson),
      itemList: (json['itemList'] as List<dynamic>?)
              ?.map((e) => MenuDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MenuModelImplToJson(_$MenuModelImpl instance) =>
    <String, dynamic>{
      'currDate': const SimpleDateTimeJsonConverter().toJson(instance.currDate),
      'itemList': instance.itemList,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$MenuDetailModelImpl _$$MenuDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuDetailModelImpl(
      id: json['id'] as int,
      menuType: json['part'] as String,
      name: json['name'] as String? ?? '',
      food: json['food'] as String? ?? '',
      bookCode: json['bookCode'] as String?,
      dateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['dateTime'], const SimpleDateTimeJsonConverter().fromJson),
      dateType: json['dateType'] as int?,
      orderNum: json['orderNum'] as int? ?? 0,
      remark: json['remark'] as String? ?? '',
      nutrition: json['nutrition'] as String? ?? '',
      resourceList: (json['resourceList'] as List<dynamic>?)
              ?.map((e) => ResourceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MenuDetailModelImplToJson(
        _$MenuDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'part': instance.menuType,
      'name': instance.name,
      'food': instance.food,
      'bookCode': instance.bookCode,
      'dateTime': const SimpleDateTimeJsonConverter().toJson(instance.dateTime),
      'dateType': instance.dateType,
      'orderNum': instance.orderNum,
      'remark': instance.remark,
      'nutrition': instance.nutrition,
      'resourceList': instance.resourceList,
    };
