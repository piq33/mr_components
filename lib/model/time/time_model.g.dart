// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeListModelImpl _$$TimeListModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeListModelImpl(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$TimeListModelImplToJson(_$TimeListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$TimeMomentsModelImpl _$$TimeMomentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeMomentsModelImpl(
      catalog: $enumDecodeNullable(_$CatalogTypeEnumMap, json['catalogType'],
              unknownValue: CatalogType.unknown) ??
          CatalogType.unknown,
      createParentPhone: json['createParentPhone'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      createUser: json['createUser'] as String?,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      objId: json['objId'] as String?,
      objType: $enumDecodeNullable(_$ObjTypeEnumMap, json['objType']),
      picUrls: (json['picUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      audioUrls: (json['audioUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videoUrls: (json['videoUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      recordTime: _$JsonConverterFromJson<String, DateTime?>(
          json['recordTime'], const DateTimeJsonConverter().fromJson),
      status: json['status'] as int?,
      timeMomentContent: json['timeMomentContent'] as String?,
      timeMomentId: json['timeMomentId'] as String,
      timeMomentName: json['timeMomentName'] as String?,
      updateParentPhone: json['updateParentPhone'] as String?,
      updateTime: DateTime.parse(json['updateTime'] as String),
      updateUser: json['updateUser'] as String?,
      year: json['yearNo'] as int?,
      diy: json['diyStudentAlbum'] == null
          ? null
          : TemplateDetailModel.fromJson(
              json['diyStudentAlbum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimeMomentsModelImplToJson(
        _$TimeMomentsModelImpl instance) =>
    <String, dynamic>{
      'catalogType': _$CatalogTypeEnumMap[instance.catalog]!,
      'createParentPhone': instance.createParentPhone,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'createUser': instance.createUser,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'objId': instance.objId,
      'objType': _$ObjTypeEnumMap[instance.objType],
      'picUrls': instance.picUrls,
      'audioUrls': instance.audioUrls,
      'videoUrls': instance.videoUrls,
      'recordTime': const DateTimeJsonConverter().toJson(instance.recordTime),
      'status': instance.status,
      'timeMomentContent': instance.timeMomentContent,
      'timeMomentId': instance.timeMomentId,
      'timeMomentName': instance.timeMomentName,
      'updateParentPhone': instance.updateParentPhone,
      'updateTime': instance.updateTime.toIso8601String(),
      'updateUser': instance.updateUser,
      'yearNo': instance.year,
      'diyStudentAlbum': instance.diy,
    };

const _$CatalogTypeEnumMap = {
  CatalogType.unknown: 'unknown',
  CatalogType.all: 'all',
  CatalogType.first: 'first',
  CatalogType.wonderful: 'wonderful',
  CatalogType.achievement: 'achievement',
  CatalogType.journal: 'journal',
  CatalogType.other: 'other',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ObjTypeEnumMap = {
  ObjType.formal: 1,
  ObjType.latent: 2,
};

_$TimeYearListModelImpl _$$TimeYearListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeYearListModelImpl(
      dateTime:
          const DayStringJsonConverter().fromJson(json['dayString'] as String),
      moments: (json['timeMoments'] as List<dynamic>?)
              ?.map((e) => TimeMomentsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TimeYearListModelImplToJson(
        _$TimeYearListModelImpl instance) =>
    <String, dynamic>{
      'dayString': const DayStringJsonConverter().toJson(instance.dateTime),
      'timeMoments': instance.moments,
    };

_$AttachsModelImpl _$$AttachsModelImplFromJson(Map<String, dynamic> json) =>
    _$AttachsModelImpl(
      fileType: const AlbumFileTypeJsonConverter()
          .fromJson(json['attachType'] as String),
      url: json['mediaUrl'] as String,
    );

Map<String, dynamic> _$$AttachsModelImplToJson(_$AttachsModelImpl instance) =>
    <String, dynamic>{
      'attachType':
          const AlbumFileTypeJsonConverter().toJson(instance.fileType),
      'mediaUrl': instance.url,
    };

_$AddTimeLineReqImpl _$$AddTimeLineReqImplFromJson(Map<String, dynamic> json) =>
    _$AddTimeLineReqImpl(
      attachs: (json['attachs'] as List<dynamic>?)
          ?.map((e) => AttachsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      catalogType:
          $enumDecodeNullable(_$CatalogTypeEnumMap, json['catalogType']),
      timeMomentContent: json['timeMomentContent'] as String?,
      timeMomentName: json['timeMomentName'] as String?,
    );

Map<String, dynamic> _$$AddTimeLineReqImplToJson(
        _$AddTimeLineReqImpl instance) =>
    <String, dynamic>{
      'attachs': instance.attachs,
      'catalogType': _$CatalogTypeEnumMap[instance.catalogType],
      'timeMomentContent': instance.timeMomentContent,
      'timeMomentName': instance.timeMomentName,
    };

_$EditTimeLineReqImpl _$$EditTimeLineReqImplFromJson(
        Map<String, dynamic> json) =>
    _$EditTimeLineReqImpl(
      attachs: (json['attachs'] as List<dynamic>?)
          ?.map((e) => AttachsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      catalogType:
          $enumDecodeNullable(_$CatalogTypeEnumMap, json['catalogType']),
      timeMomentContent: json['timeMomentContent'] as String?,
      timeMomentId: json['timeMomentId'] as int,
      timeMomentName: json['timeMomentName'] as String?,
    );

Map<String, dynamic> _$$EditTimeLineReqImplToJson(
        _$EditTimeLineReqImpl instance) =>
    <String, dynamic>{
      'attachs': instance.attachs,
      'catalogType': _$CatalogTypeEnumMap[instance.catalogType],
      'timeMomentContent': instance.timeMomentContent,
      'timeMomentId': instance.timeMomentId,
      'timeMomentName': instance.timeMomentName,
    };

_$YearDataListImpl _$$YearDataListImplFromJson(Map<String, dynamic> json) =>
    _$YearDataListImpl(
      yearNo: json['yearNo'] as int,
      type: $enumDecode(_$CatalogTypeEnumMap, json['type']),
      items: (json['items'] as List<dynamic>)
          .map((e) => TimeYearListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$YearDataListImplToJson(_$YearDataListImpl instance) =>
    <String, dynamic>{
      'yearNo': instance.yearNo,
      'type': _$CatalogTypeEnumMap[instance.type]!,
      'items': instance.items,
    };
