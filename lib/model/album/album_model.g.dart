// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumPickerModelImpl _$$AlbumPickerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumPickerModelImpl(
      addPics: (json['addPics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      dltPics: (json['dltPics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AlbumPickerModelImplToJson(
        _$AlbumPickerModelImpl instance) =>
    <String, dynamic>{
      'addPics': instance.addPics,
      'dltPics': instance.dltPics,
    };

_$ClipOtherParamImpl _$$ClipOtherParamImplFromJson(Map<String, dynamic> json) =>
    _$ClipOtherParamImpl(
      activityId: json['activityId'] as String? ?? '',
    );

Map<String, dynamic> _$$ClipOtherParamImplToJson(
        _$ClipOtherParamImpl instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
    };

_$ClipFilterModelImpl _$$ClipFilterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClipFilterModelImpl(
      selectedYearTerm: json['selectedYearTerm'] == null
          ? null
          : FilterYearTermModel.fromJson(
              json['selectedYearTerm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClipFilterModelImplToJson(
        _$ClipFilterModelImpl instance) =>
    <String, dynamic>{
      'selectedYearTerm': instance.selectedYearTerm,
    };

_$ClipReqImpl _$$ClipReqImplFromJson(Map<String, dynamic> json) =>
    _$ClipReqImpl(
      activityType: json['activityType'] as int?,
      classCode: json['classCode'] as String?,
      courseCode: json['courseCode'] as String?,
      gradeCode: json['gradeCode'] as String?,
      periodCode: json['periodCode'] as String?,
      yearTermCode: json['yearTermCode'] as String?,
    );

Map<String, dynamic> _$$ClipReqImplToJson(_$ClipReqImpl instance) =>
    <String, dynamic>{
      'activityType': instance.activityType,
      'classCode': instance.classCode,
      'courseCode': instance.courseCode,
      'gradeCode': instance.gradeCode,
      'periodCode': instance.periodCode,
      'yearTermCode': instance.yearTermCode,
    };

_$ClipResourceModelImpl _$$ClipResourceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClipResourceModelImpl(
      resourceId: json['photoId'] as int,
      url: json['photoUrl'] as String,
      isVideo: json['ifVideo'] as bool? ?? false,
      bindNameList: (json['bindNameList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ClipResourceModelImplToJson(
        _$ClipResourceModelImpl instance) =>
    <String, dynamic>{
      'photoId': instance.resourceId,
      'photoUrl': instance.url,
      'ifVideo': instance.isVideo,
      'bindNameList': instance.bindNameList,
    };

_$ClipModelImpl _$$ClipModelImplFromJson(Map<String, dynamic> json) =>
    _$ClipModelImpl(
      activityId: json['activityId'] as String? ?? '',
      commentNum: json['commentNum'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      searchType:
          $enumDecodeNullable(_$SearchTypeEnumMap, json['searchType']) ??
              SearchType.all,
      deployDate: _$JsonConverterFromJson<String, DateTime?>(
          json['deployDate'], const DateTimeJsonConverter().fromJson),
      deployTeacherCode: json['deployTeacherCode'] as String? ?? '',
      deployTeacherName: json['deployTeacherName'] as String? ?? '',
      likeNum: json['likeNum'] as int? ?? 0,
      viewNum: json['viewNum'] as int? ?? 0,
      studentViewNum: json['studentViewNum'] as int? ?? 0,
      teacherViewNum: json['teacherViewNum'] as int? ?? 0,
      selfLike: json['selfLikeFlag'] as bool? ?? false,
      photoInfo: json['photoInfo'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? '',
      resourceList: (json['photoList'] as List<dynamic>?)
              ?.map(
                  (e) => ClipResourceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ClipModelImplToJson(_$ClipModelImpl instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'commentNum': instance.commentNum,
      'title': instance.title,
      'content': instance.content,
      'searchType': _$SearchTypeEnumMap[instance.searchType]!,
      'deployDate': const DateTimeJsonConverter().toJson(instance.deployDate),
      'deployTeacherCode': instance.deployTeacherCode,
      'deployTeacherName': instance.deployTeacherName,
      'likeNum': instance.likeNum,
      'viewNum': instance.viewNum,
      'studentViewNum': instance.studentViewNum,
      'teacherViewNum': instance.teacherViewNum,
      'selfLikeFlag': instance.selfLike,
      'photoInfo': instance.photoInfo,
      'avatarUrl': instance.avatarUrl,
      'photoList': instance.resourceList,
    };

const _$SearchTypeEnumMap = {
  SearchType.all: 0,
  SearchType.individual: 1,
  SearchType.clazz: 2,
  SearchType.school: 3,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$PhotoResourceModelImpl _$$PhotoResourceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoResourceModelImpl(
      resourceId: json['personalPhotoId'] as int,
      url: json['photoUrl'] as String,
      isVideo: json['ifVideo'] as bool? ?? false,
    );

Map<String, dynamic> _$$PhotoResourceModelImplToJson(
        _$PhotoResourceModelImpl instance) =>
    <String, dynamic>{
      'personalPhotoId': instance.resourceId,
      'photoUrl': instance.url,
      'ifVideo': instance.isVideo,
    };

_$PhotoResourceReqImpl _$$PhotoResourceReqImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoResourceReqImpl(
      url: json['photoUrl'] as String,
      type: const AlbumFileTypeJsonConverter()
          .fromJson(json['photoType'] as String),
    );

Map<String, dynamic> _$$PhotoResourceReqImplToJson(
        _$PhotoResourceReqImpl instance) =>
    <String, dynamic>{
      'photoUrl': instance.url,
      'photoType': const AlbumFileTypeJsonConverter().toJson(instance.type),
    };
