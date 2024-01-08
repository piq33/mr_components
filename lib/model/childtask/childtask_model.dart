import 'dart:math';

import 'package:components/model/common_model.dart';
import 'package:components/model/converter/childtask/resource_type_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/relationship_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'childtask_model.freezed.dart';
part 'childtask_model.g.dart';

enum ChildtaskStatus {
  @JsonValue(0)
  unknown,
  @JsonValue(1)
  init,
  @JsonValue(2)
  publish,
  @JsonValue(3)
  cancel,
}

@freezed
class ChildtaskInfoModel with _$ChildtaskInfoModel {
  const ChildtaskInfoModel._();
  const factory ChildtaskInfoModel({
    /// 任务日期
    @SimpleDateTimeJsonConverter() DateTime? currDate,

    /// 未完成人数(有可能负，请使用[unFinishCount])
    @Default(0) int unFinishNum,

    /// 完成率(有可能负，请使用[percent])
    @Default(0) double finishPercent,

    /// 任务列表
    @Default([]) List<ChildtaskModel> taskList,
  }) = _ChildtaskInfoModel;

  double get percent => max(0, finishPercent) * 100;
  int get unFinishCount => max(0, unFinishNum);

  factory ChildtaskInfoModel.empty() => const ChildtaskInfoModel();
  factory ChildtaskInfoModel.fromJson(Map<String, Object?> json) =>
      _$ChildtaskInfoModelFromJson(json);
}

/// 班级完成情况
@freezed
class ClassFinishModel with _$ClassFinishModel {
  const ClassFinishModel._();
  const factory ClassFinishModel({
    /// 班级名称
    @Default('') String className,

    /// 班级编码
    @Default('') String classCode,

    /// 完成人数(有可能负，请使用[finishCount])
    @Default(0) int finishNum,

    /// 未完成人数(有可能负，请使用[unFinishCount])
    @Default(0) int unFinishNum,
  }) = _ClassFinishModel;

  int get total => finishCount + unFinishCount;
  int get finishCount => max(0, finishNum);
  int get unFinishCount => max(0, unFinishNum);

  factory ClassFinishModel.fromJson(Map<String, Object?> json) =>
      _$ClassFinishModelFromJson(json);
}

@freezed
class ChildtaskModel with _$ChildtaskModel {
  const ChildtaskModel._();
  const factory ChildtaskModel({
    int? id,

    /// 租客id
    String? tenantId,

    /// 任务编码
    @Default('') String code,

    /// 任务标题
    @Default('') String title,

    /// 任务简介
    @Default('') String brief,

    /// 任务内容
    @Default('') String content,

    /// 资源链接
    @JsonKey(name: 'resourceUrl') @Default('') String resourceString,

    /// 资源类型
    @JsonKey(name: 'resourceType')
    @Int2ResourceTypeJsonConverter()
    @Default(FileType.none)
    FileType fileType,

    /// 学校编码
    @Default('') String schoolCode,

    /// 学段名称
    @Default('') String phaseName,

    /// 学段编码
    @Default('') String phaseCode,

    /// 课程名称
    @Default('') String courseName,

    /// 课程编码
    @Default('') String courseCode,

    /// 年级名称
    @Default('') String gradeName,

    /// 年级编码
    @Default('') String gradeCode,

    /// 班级名称
    @Default('') String className,

    /// 班级编码
    @Default('') String classCode,

    /// 学年学期名称
    @Default('') String yearTermName,

    /// 学年学期编码
    @Default('') String yearTermCode,

    /// 总人数(有可能负，请使用[total])
    @Default(0) int count,

    /// 完成人数(有可能负，请使用[finishCount])
    @Default(0) int finishNum,

    /// 未完成人数(有可能负，请使用[unFinishCount])
    @Default(0) int unFinishNum,

    /// 任务状态
    @Default(ChildtaskStatus.unknown) ChildtaskStatus status,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 是否已完成
    @JsonKey(name: 'finishFlag')
    @Int2BoolJsonConverter()
    @Default(false)
    bool isFinish,

    /// 任务日期
    @SimpleDateTimeJsonConverter() DateTime? currDate,

    /// 开始日期
    @SimpleDateTimeJsonConverter() DateTime? startDate,

    /// 结束日期
    @SimpleDateTimeJsonConverter() DateTime? endDate,

    /// 备注
    @Default('') String remark,

    /// 撤回时间
    @SimpleDateTimeJsonConverter() DateTime? cancelTime,

    /// 班级完成情况
    @Default([]) List<ClassFinishModel> classFinishList,

    /// 任务进度列表
    @JsonKey(name: 'taskResultList')
    @Default([])
    List<ChildtaskResultModel> resultList,

    /// 发布人头像
    String? publishUserAvatar,

    /// 发布人
    String? publishUser,

    /// 发布时间
    @DateTimeJsonConverter() DateTime? publishTime,

    /// 创建人
    String? createUser,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新人
    String? updateUser,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _ChildtaskModel;

  int get total => max(0, count);
  int get finishCount => max(0, finishNum);
  int get unFinishCount => max(0, unFinishNum);
  double get completePercent => total > 0 ? finishCount / total * 100 : 0;
  List<String> get resources => resourceString.isNotEmpty
      ? resourceString.split(',').toList()
      : List.empty();
  String? get img => fileType == FileType.image
      ? resources.isNotEmpty
          ? resources.first
          : null
      : null;
  String? get video => fileType == FileType.video
      ? resources.isNotEmpty
          ? resources.first
          : null
      : null;
  String? get audio => fileType == FileType.audio
      ? resources.isNotEmpty
          ? resources.first
          : null
      : null;

  factory ChildtaskModel.empty() => const ChildtaskModel();
  factory ChildtaskModel.fromJson(Map<String, Object?> json) =>
      _$ChildtaskModelFromJson(json);
}

@freezed
class ChildtaskResultModel with _$ChildtaskResultModel {
  const ChildtaskResultModel._();
  const factory ChildtaskResultModel({
    int? id,

    /// 任务编码
    String? taskCode,

    /// 学号
    @Default('') String studentNo,

    /// 学生姓名
    @Default('') String studentName,

    /// 家长姓名
    @Default('') String parentName,

    /// 家长头像
    String? parentAvatar,

    /// 家长手机号
    @Default('') String parentPhone,

    /// 亲属关系
    @JsonKey(name: 'parentRelation')
    @RelationshipStringJsonConverter2()
    @Default(Relationship.other)
    Relationship relationship,

    /// 补充内容
    @Default('') String content,

    /// 是否完成
    @JsonKey(name: 'finishFlag')
    @Int2BoolJsonConverter()
    @Default(false)
    bool isFinish,

    /// 资源列表
    @JsonKey(name: 'resourceList') @Default([]) List<ResourceModel> resources,

    /// 备注
    @Default('') String remark,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _ChildtaskResultModel;

  factory ChildtaskResultModel.fromJson(Map<String, Object?> json) =>
      _$ChildtaskResultModelFromJson(json);
}

/// 亲子作业处理请求
@freezed
class ChildtaskkReq with _$ChildtaskkReq {
  const ChildtaskkReq._();
  const factory ChildtaskkReq({
    /// 用户id
    required int userId,

    /// 学生编码
    required String studentNo,

    /// 学生姓名
    String? studentName,

    /// 家长姓名
    String? parentName,

    /// 家长头像
    String? parentAvatar,

    /// 家长手机号
    String? parentPhone,

    /// 家长关系
    int? parentRelation,

    /// 任务编码
    required String taskCode,

    /// 补充内容
    String? content,

    /// 资源文件地址(,分割)
    String? resourceUrl,

    /// 是否完成
    required int finishFlag,
  }) = _ChildtaskkReq;

  factory ChildtaskkReq.fromJson(Map<String, Object?> json) =>
      _$ChildtaskkReqFromJson(json);
}

/// 亲子作业点赞
@freezed
class ChildtaskkLikeModel with _$ChildtaskkLikeModel {
  const ChildtaskkLikeModel._();
  const factory ChildtaskkLikeModel({
    required int id,

    /// 家长姓名
    @Default('') String parentName,

    /// 家长头像
    String? parentAvatar,

    /// 家长手机号
    @Default('') String parentPhone,

    /// 亲属关系
    @RelationshipStringJsonConverter()
    @Default(Relationship.other)
    Relationship relationship,
  }) = _ChildtaskkLikeModel;

  factory ChildtaskkLikeModel.fromJson(Map<String, Object?> json) =>
      _$ChildtaskkLikeModelFromJson(json);
}

@freezed
class ChildtaskLikeReq with _$ChildtaskLikeReq {
  const ChildtaskLikeReq._();
  const factory ChildtaskLikeReq({
    /// 登录用户id
    required int userId,

    /// 是否点赞
    @JsonKey(name: 'addOrRemoveFlag') required bool like,

    /// 同学进度id
    @JsonKey(name: 'taskCodeSubId') required int resultId,
  }) = _ChildtaskLikeReq;

  factory ChildtaskLikeReq.fromJson(Map<String, Object?> json) =>
      _$ChildtaskLikeReqFromJson(json);
}

@freezed
class ChildtaskLikeModel with _$ChildtaskLikeModel {
  const ChildtaskLikeModel._();
  const factory ChildtaskLikeModel({
    /// 当前用户是否点赞了当前亲自作业
    @JsonKey(name: 'curLikesFlag') required bool like,

    /// 同学进度id
    @JsonKey(name: 'taskCodeSubId') required int resultId,

    /// 亲子作业点赞数量
    @JsonKey(name: 'likesCount') @Default(0) int count,
  }) = _ChildtaskLikeModel;

  factory ChildtaskLikeModel.fromJson(Map<String, Object?> json) =>
      _$ChildtaskLikeModelFromJson(json);
}

@freezed
class ChildtaskOtherParam with _$ChildtaskOtherParam {
  const ChildtaskOtherParam._();
  const factory ChildtaskOtherParam({
    /// 亲子任务编码
    @Default('') String code,
  }) = _ChildtaskOtherParam;

  factory ChildtaskOtherParam.fromJson(Map<String, Object?> json) =>
      _$ChildtaskOtherParamFromJson(json);
}
