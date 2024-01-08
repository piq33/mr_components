// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childtask_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildtaskInfoModelImpl _$$ChildtaskInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskInfoModelImpl(
      currDate: _$JsonConverterFromJson<String, DateTime?>(
          json['currDate'], const SimpleDateTimeJsonConverter().fromJson),
      unFinishNum: json['unFinishNum'] as int? ?? 0,
      finishPercent: (json['finishPercent'] as num?)?.toDouble() ?? 0,
      taskList: (json['taskList'] as List<dynamic>?)
              ?.map((e) => ChildtaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChildtaskInfoModelImplToJson(
        _$ChildtaskInfoModelImpl instance) =>
    <String, dynamic>{
      'currDate': const SimpleDateTimeJsonConverter().toJson(instance.currDate),
      'unFinishNum': instance.unFinishNum,
      'finishPercent': instance.finishPercent,
      'taskList': instance.taskList,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$ClassFinishModelImpl _$$ClassFinishModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassFinishModelImpl(
      className: json['className'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      finishNum: json['finishNum'] as int? ?? 0,
      unFinishNum: json['unFinishNum'] as int? ?? 0,
    );

Map<String, dynamic> _$$ClassFinishModelImplToJson(
        _$ClassFinishModelImpl instance) =>
    <String, dynamic>{
      'className': instance.className,
      'classCode': instance.classCode,
      'finishNum': instance.finishNum,
      'unFinishNum': instance.unFinishNum,
    };

_$ChildtaskModelImpl _$$ChildtaskModelImplFromJson(Map<String, dynamic> json) =>
    _$ChildtaskModelImpl(
      id: json['id'] as int?,
      tenantId: json['tenantId'] as String?,
      code: json['code'] as String? ?? '',
      title: json['title'] as String? ?? '',
      brief: json['brief'] as String? ?? '',
      content: json['content'] as String? ?? '',
      resourceString: json['resourceUrl'] as String? ?? '',
      fileType: json['resourceType'] == null
          ? FileType.none
          : const Int2ResourceTypeJsonConverter()
              .fromJson(json['resourceType'] as int),
      schoolCode: json['schoolCode'] as String? ?? '',
      phaseName: json['phaseName'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      courseName: json['courseName'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      gradeName: json['gradeName'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      className: json['className'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      yearTermName: json['yearTermName'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String? ?? '',
      count: json['count'] as int? ?? 0,
      finishNum: json['finishNum'] as int? ?? 0,
      unFinishNum: json['unFinishNum'] as int? ?? 0,
      status: $enumDecodeNullable(_$ChildtaskStatusEnumMap, json['status']) ??
          ChildtaskStatus.unknown,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      isFinish: json['finishFlag'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['finishFlag'] as int),
      currDate: _$JsonConverterFromJson<String, DateTime?>(
          json['currDate'], const SimpleDateTimeJsonConverter().fromJson),
      startDate: _$JsonConverterFromJson<String, DateTime?>(
          json['startDate'], const SimpleDateTimeJsonConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime?>(
          json['endDate'], const SimpleDateTimeJsonConverter().fromJson),
      remark: json['remark'] as String? ?? '',
      cancelTime: _$JsonConverterFromJson<String, DateTime?>(
          json['cancelTime'], const SimpleDateTimeJsonConverter().fromJson),
      classFinishList: (json['classFinishList'] as List<dynamic>?)
              ?.map((e) => ClassFinishModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      resultList: (json['taskResultList'] as List<dynamic>?)
              ?.map((e) =>
                  ChildtaskResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      publishUserAvatar: json['publishUserAvatar'] as String?,
      publishUser: json['publishUser'] as String?,
      publishTime: _$JsonConverterFromJson<String, DateTime?>(
          json['publishTime'], const DateTimeJsonConverter().fromJson),
      createUser: json['createUser'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String?,
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$ChildtaskModelImplToJson(
        _$ChildtaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'code': instance.code,
      'title': instance.title,
      'brief': instance.brief,
      'content': instance.content,
      'resourceUrl': instance.resourceString,
      'resourceType':
          const Int2ResourceTypeJsonConverter().toJson(instance.fileType),
      'schoolCode': instance.schoolCode,
      'phaseName': instance.phaseName,
      'phaseCode': instance.phaseCode,
      'courseName': instance.courseName,
      'courseCode': instance.courseCode,
      'gradeName': instance.gradeName,
      'gradeCode': instance.gradeCode,
      'className': instance.className,
      'classCode': instance.classCode,
      'yearTermName': instance.yearTermName,
      'yearTermCode': instance.yearTermCode,
      'count': instance.count,
      'finishNum': instance.finishNum,
      'unFinishNum': instance.unFinishNum,
      'status': _$ChildtaskStatusEnumMap[instance.status]!,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'finishFlag': const Int2BoolJsonConverter().toJson(instance.isFinish),
      'currDate': const SimpleDateTimeJsonConverter().toJson(instance.currDate),
      'startDate':
          const SimpleDateTimeJsonConverter().toJson(instance.startDate),
      'endDate': const SimpleDateTimeJsonConverter().toJson(instance.endDate),
      'remark': instance.remark,
      'cancelTime':
          const SimpleDateTimeJsonConverter().toJson(instance.cancelTime),
      'classFinishList': instance.classFinishList,
      'taskResultList': instance.resultList,
      'publishUserAvatar': instance.publishUserAvatar,
      'publishUser': instance.publishUser,
      'publishTime': const DateTimeJsonConverter().toJson(instance.publishTime),
      'createUser': instance.createUser,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

const _$ChildtaskStatusEnumMap = {
  ChildtaskStatus.unknown: 0,
  ChildtaskStatus.init: 1,
  ChildtaskStatus.publish: 2,
  ChildtaskStatus.cancel: 3,
};

_$ChildtaskResultModelImpl _$$ChildtaskResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskResultModelImpl(
      id: json['id'] as int?,
      taskCode: json['taskCode'] as String?,
      studentNo: json['studentNo'] as String? ?? '',
      studentName: json['studentName'] as String? ?? '',
      parentName: json['parentName'] as String? ?? '',
      parentAvatar: json['parentAvatar'] as String?,
      parentPhone: json['parentPhone'] as String? ?? '',
      relationship: json['parentRelation'] == null
          ? Relationship.other
          : const RelationshipStringJsonConverter2()
              .fromJson(json['parentRelation'] as String),
      content: json['content'] as String? ?? '',
      isFinish: json['finishFlag'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['finishFlag'] as int),
      resources: (json['resourceList'] as List<dynamic>?)
              ?.map((e) => ResourceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remark: json['remark'] as String? ?? '',
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$ChildtaskResultModelImplToJson(
        _$ChildtaskResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taskCode': instance.taskCode,
      'studentNo': instance.studentNo,
      'studentName': instance.studentName,
      'parentName': instance.parentName,
      'parentAvatar': instance.parentAvatar,
      'parentPhone': instance.parentPhone,
      'parentRelation': const RelationshipStringJsonConverter2()
          .toJson(instance.relationship),
      'content': instance.content,
      'finishFlag': const Int2BoolJsonConverter().toJson(instance.isFinish),
      'resourceList': instance.resources,
      'remark': instance.remark,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

_$ChildtaskkReqImpl _$$ChildtaskkReqImplFromJson(Map<String, dynamic> json) =>
    _$ChildtaskkReqImpl(
      userId: json['userId'] as int,
      studentNo: json['studentNo'] as String,
      studentName: json['studentName'] as String?,
      parentName: json['parentName'] as String?,
      parentAvatar: json['parentAvatar'] as String?,
      parentPhone: json['parentPhone'] as String?,
      parentRelation: json['parentRelation'] as int?,
      taskCode: json['taskCode'] as String,
      content: json['content'] as String?,
      resourceUrl: json['resourceUrl'] as String?,
      finishFlag: json['finishFlag'] as int,
    );

Map<String, dynamic> _$$ChildtaskkReqImplToJson(_$ChildtaskkReqImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'studentNo': instance.studentNo,
      'studentName': instance.studentName,
      'parentName': instance.parentName,
      'parentAvatar': instance.parentAvatar,
      'parentPhone': instance.parentPhone,
      'parentRelation': instance.parentRelation,
      'taskCode': instance.taskCode,
      'content': instance.content,
      'resourceUrl': instance.resourceUrl,
      'finishFlag': instance.finishFlag,
    };

_$ChildtaskkLikeModelImpl _$$ChildtaskkLikeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskkLikeModelImpl(
      id: json['id'] as int,
      parentName: json['parentName'] as String? ?? '',
      parentAvatar: json['parentAvatar'] as String?,
      parentPhone: json['parentPhone'] as String? ?? '',
      relationship: json['relationship'] == null
          ? Relationship.other
          : const RelationshipStringJsonConverter()
              .fromJson(json['relationship'] as String),
    );

Map<String, dynamic> _$$ChildtaskkLikeModelImplToJson(
        _$ChildtaskkLikeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentName': instance.parentName,
      'parentAvatar': instance.parentAvatar,
      'parentPhone': instance.parentPhone,
      'relationship':
          const RelationshipStringJsonConverter().toJson(instance.relationship),
    };

_$ChildtaskLikeReqImpl _$$ChildtaskLikeReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskLikeReqImpl(
      userId: json['userId'] as int,
      like: json['addOrRemoveFlag'] as bool,
      resultId: json['taskCodeSubId'] as int,
    );

Map<String, dynamic> _$$ChildtaskLikeReqImplToJson(
        _$ChildtaskLikeReqImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'addOrRemoveFlag': instance.like,
      'taskCodeSubId': instance.resultId,
    };

_$ChildtaskLikeModelImpl _$$ChildtaskLikeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskLikeModelImpl(
      like: json['curLikesFlag'] as bool,
      resultId: json['taskCodeSubId'] as int,
      count: json['likesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$ChildtaskLikeModelImplToJson(
        _$ChildtaskLikeModelImpl instance) =>
    <String, dynamic>{
      'curLikesFlag': instance.like,
      'taskCodeSubId': instance.resultId,
      'likesCount': instance.count,
    };

_$ChildtaskOtherParamImpl _$$ChildtaskOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildtaskOtherParamImpl(
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$$ChildtaskOtherParamImplToJson(
        _$ChildtaskOtherParamImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
