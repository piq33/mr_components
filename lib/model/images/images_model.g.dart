// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      activityId: json['activityId'] as int? ?? 0,
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
    };

_$ImagesModelImpl _$$ImagesModelImplFromJson(Map<String, dynamic> json) =>
    _$ImagesModelImpl(
      activityId: json['activityId'] as int? ?? 0,
      activityType:
          $enumDecodeNullable(_$ActivityTypeEnumMap, json['activityType']),
      classCode: json['classCode'] as String? ?? '',
      commentNum: json['commentNum'] as int? ?? 0,
      content: json['content'] as String? ?? '',
      createTeacherCode: json['createTeacherCode'] as String? ?? '',
      createTime: _$JsonConverterFromJson<String, DateTime?>(json['createTime'],
          const StringTimestampNullableJsonConverter().fromJson),
      createUser: json['createUser'] as String? ?? '',
      deployDate: _$JsonConverterFromJson<String, DateTime?>(json['deployDate'],
          const StringTimestampNullableJsonConverter().fromJson),
      deployTeacherCode: json['deployTeacherCode'] as String? ?? '',
      deployTeacherName: json['deployTeacherName'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      personalDeployType: $enumDecodeNullable(
              _$PersonalDeployTypeEnumMap, json['personalDeployType']) ??
          PersonalDeployType.part,
      photoInfo: json['photoInfo'] as String? ?? '',
      photoList: (json['photoList'] as List<dynamic>?)
              ?.map((e) => PhotoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      schoolCode: json['schoolCode'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      updateTeacherCode: json['updateTeacherCode'] as String? ?? '',
      updateTime: _$JsonConverterFromJson<String, DateTime?>(json['updateTime'],
          const StringTimestampNullableJsonConverter().fromJson),
      updateUser: json['updateUser'] as String? ?? '',
      viewNum: json['viewNum'] as int? ?? 0,
      yearTermCode: json['yearTermCode'] as String? ?? '',
    );

Map<String, dynamic> _$$ImagesModelImplToJson(_$ImagesModelImpl instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'activityType': _$ActivityTypeEnumMap[instance.activityType],
      'classCode': instance.classCode,
      'commentNum': instance.commentNum,
      'content': instance.content,
      'createTeacherCode': instance.createTeacherCode,
      'createTime': const StringTimestampNullableJsonConverter()
          .toJson(instance.createTime),
      'createUser': instance.createUser,
      'deployDate': const StringTimestampNullableJsonConverter()
          .toJson(instance.deployDate),
      'deployTeacherCode': instance.deployTeacherCode,
      'deployTeacherName': instance.deployTeacherName,
      'gradeCode': instance.gradeCode,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'personalDeployType':
          _$PersonalDeployTypeEnumMap[instance.personalDeployType]!,
      'photoInfo': instance.photoInfo,
      'photoList': instance.photoList,
      'schoolCode': instance.schoolCode,
      'status': instance.status,
      'title': instance.title,
      'updateTeacherCode': instance.updateTeacherCode,
      'updateTime': const StringTimestampNullableJsonConverter()
          .toJson(instance.updateTime),
      'updateUser': instance.updateUser,
      'viewNum': instance.viewNum,
      'yearTermCode': instance.yearTermCode,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.school: 1,
  ActivityType.clazz: 2,
  ActivityType.individual: 3,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$PersonalDeployTypeEnumMap = {
  PersonalDeployType.part: 1,
  PersonalDeployType.make: 2,
};
