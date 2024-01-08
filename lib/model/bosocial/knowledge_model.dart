import 'package:components/model/converter/bosocial/knowledge_scope_converter.dart';
import 'package:components/model/converter/bosocial/knowledge_type_converter.dart';
import 'package:components/model/converter/bosocial/status_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'knowledge_model.freezed.dart';
part 'knowledge_model.g.dart';

/// 干货可见范围
enum KnowledgeScope {
  /// 未知
  unknown,

  /// 全部
  all,

  /// 部分
  part,
}

/// 干货类型
enum KnowledgeType {
  /// 未知
  unknown,

  /// 文章
  article,

  /// 视频
  video,
}

/// 状态
enum Status {
  /// 未知
  unknown,

  /// 发布
  publish,

  ///未发布
  notPublish,

  /// 已撤回
  recall,
}

/// 评论类型
enum CommentType {
  /// 未知
  unknown,

  /// 评论
  comment,

  /// 回复
  reply,
}

/// 评论人类型
enum CommentUserType {
  /// 未知
  unknown,

  /// 教师
  teacher,

  /// 学生
  student
}

@freezed
class KnowledgeRefreshOtherParam with _$KnowledgeRefreshOtherParam {
  const KnowledgeRefreshOtherParam._();
  const factory KnowledgeRefreshOtherParam({
    /// 分类id
    String? catalogId,
  }) = _KnowledgeRefreshOtherParam;

  factory KnowledgeRefreshOtherParam.fromJson(Map<String, Object?> json) =>
      _$KnowledgeRefreshOtherParamFromJson(json);
}

@collection
class KnowledgeSearchHistory {
  Id id = Isar.autoIncrement;

  /// 关键词
  String? keyword;

  /// 点击次数
  int? count;

  /// 创建时间
  DateTime? createTime;

  /// 更新时间
  DateTime? updateTime;

  KnowledgeSearchHistory();

  factory KnowledgeSearchHistory.init(String keyword) {
    return KnowledgeSearchHistory()
      ..keyword = keyword
      ..count = 1
      ..createTime = DateTime.now()
      ..updateTime = DateTime.now();
  }

  void increase() {
    count = (count ?? 0) + 1;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KnowledgeSearchHistory &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          keyword == other.keyword &&
          count == other.count &&
          createTime == other.createTime &&
          updateTime == other.updateTime;

  @override
  int get hashCode =>
      id.hashCode ^
      keyword.hashCode ^
      count.hashCode ^
      createTime.hashCode ^
      updateTime.hashCode;

  @override
  String toString() {
    return 'KnowledgeSearchHistory{id: $id, keyword: $keyword, count: $count, createTime: $createTime, updateTime: $updateTime}';
  }
}

/// 干货标签
@freezed
class CatalogModel with _$CatalogModel {
  const CatalogModel._();
  const factory CatalogModel({
    /// 分类id
    required String catalogId,

    /// 分类名称
    @Default('') String catalogName,

    /// 排序
    @Default(0) int sortNo,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 业务状态
    @StatusJsonConverter() @Default(Status.unknown) Status status,

    /// 创建人
    String? createUser,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新人
    String? updateUser,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _CatalogModel;

  factory CatalogModel.fromJson(Map<String, Object?> json) =>
      _$CatalogModelFromJson(json);
}

/// 干货
@freezed
class KnowledgeModel with _$KnowledgeModel {
  const KnowledgeModel._();
  const factory KnowledgeModel({
    /// 干货id
    @String2IntJsonConverter() required String knowledgeId,

    /// 作者
    @Default('') String author,

    /// 分类id
    String? catalogId,

    /// 评论数
    @Default(0) int commentNum,

    /// 收藏数
    @Default(0) int likeNum,

    /// 标题
    @Default('') String title,

    /// 内容
    @Default('') String content,

    /// 封面
    @JsonKey(name: 'coverUrl') String? url,

    /// 视频地址
    String? videoUrl,

    /// 干货类型
    @KnowledgeTypeJsonConverter()
    @JsonKey(name: 'knType')
    @Default(KnowledgeType.unknown)
    KnowledgeType type,

    /// 可见范围
    @JsonKey(name: 'schoolScope')
    @KnowledgeScopeJsonConverter()
    @Default(KnowledgeScope.unknown)
    KnowledgeScope scope,

    /// 学生观看人数
    @Default(0) int studentViewNum,

    /// 教师编码
    String? teacherCode,

    /// 教师姓名
    @Default('') String teacherName,

    /// 教师观看人数
    @Default(0) int teacherViewNum,

    /// 状态
    @StatusJsonConverter() @Default(Status.unknown) Status status,

    /// 发布单位
    @Default('') String deployOrg,

    /// 发布人
    String? deployUser,

    /// 发布人编码
    String? deployUserCode,

    /// 发布人姓名
    @Default('') String deployUserName,

    /// 发布时间
    @DateTimeJsonConverter() DateTime? deployTime,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 创建人
    String? createUser,

    /// 创建人姓名
    String? createUserName,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新人
    String? updateUser,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,

    /// 撤回人
    int? withdrawUserId,

    /// 撤回人姓名
    String? withdrawUserName,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? withdrawTime,
  }) = _KnowledgeModel;

  factory KnowledgeModel.empty() => const KnowledgeModel(knowledgeId: '');
  KnowledgeModel sync(KnowledgeDetailModel detail) {
    return copyWith(
      author: detail.author,
      catalogId: detail.catalogId,
      commentNum: detail.commentNum,
      likeNum: detail.likeNum,
      title: detail.title,
      content: detail.content,
      url: detail.url,
      videoUrl: detail.videoUrl,
      type: detail.type,
      scope: detail.scope,
      studentViewNum: detail.studentViewNum,
      teacherCode: detail.teacherCode,
      teacherName: detail.teacherName,
      teacherViewNum: detail.teacherViewNum,
      status: detail.status,
      deployOrg: detail.deployOrg,
      deployUser: detail.deployUser,
      deployUserCode: detail.deployUserCode,
      deployUserName: detail.deployUserName,
      deployTime: detail.deployTime,
      isDeleted: detail.isDeleted,
      updateUser: detail.updateUser,
      updateTime: detail.updateTime,
      withdrawUserId: detail.withdrawUserId,
      withdrawUserName: detail.withdrawUserName,
      withdrawTime: detail.withdrawTime,
    );
  }

  bool get validate => knowledgeId.isNotEmpty;
  bool get isVideo => type == KnowledgeType.video;

  factory KnowledgeModel.fromJson(Map<String, Object?> json) =>
      _$KnowledgeModelFromJson(json);
}

/// 干货标签
@freezed
class TagModel with _$TagModel {
  const TagModel._();
  const factory TagModel({
    /// 标签id
    required String tagId,

    /// 干货id
    @String2IntNullableJsonConverter() String? knowledgeId,

    /// 关联id
    String? relaId,

    /// 标签名称
    @Default('') String tagName,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 业务状态
    @StatusJsonConverter() @Default(Status.unknown) Status status,

    /// 创建人
    String? createUser,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新人
    String? updateUser,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, Object?> json) =>
      _$TagModelFromJson(json);
}

/// 干货详情
@freezed
class KnowledgeDetailModel with _$KnowledgeDetailModel {
  const KnowledgeDetailModel._();
  const factory KnowledgeDetailModel({
    /// 干货id
    @String2IntJsonConverter() required String knowledgeId,

    /// 作者
    @Default('') String author,

    /// 分类id
    String? catalogId,

    /// 评论数
    @Default(0) int commentNum,

    /// 收藏数
    @Default(0) int likeNum,

    /// 自己是否点赞
    @JsonKey(name: 'selfLikeFlag') @Default(false) bool selfLike,

    /// 标题
    @Default('') String title,

    /// 内容
    @Default('') String content,

    /// 封面
    @JsonKey(name: 'coverUrl') String? url,

    /// 视频地址
    String? videoUrl,

    /// 干货类型
    @KnowledgeTypeJsonConverter()
    @JsonKey(name: 'knType')
    @Default(KnowledgeType.unknown)
    KnowledgeType type,

    /// 可见范围
    @JsonKey(name: 'schoolScope')
    @KnowledgeScopeJsonConverter()
    @Default(KnowledgeScope.unknown)
    KnowledgeScope scope,

    /// 学生观看人数
    @Default(0) int studentViewNum,

    /// 教师编码
    String? teacherCode,

    /// 教师姓名
    @Default('') String teacherName,

    /// 教师观看人数
    @Default(0) int teacherViewNum,

    /// 状态
    @StatusJsonConverter() @Default(Status.unknown) Status status,

    /// 发布单位
    @Default('') String deployOrg,

    /// 发布人
    String? deployUser,

    /// 发布人编码
    required String deployUserCode,

    /// 发布人姓名
    @Default('') String deployUserName,

    /// 发布时间
    @DateTimeJsonConverter() DateTime? deployTime,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 标签列表
    @JsonKey(name: 'tagList') @Default([]) List<TagModel> tags,

    /// 创建人
    String? createUser,

    /// 创建人姓名
    String? createUserName,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新人
    String? updateUser,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,

    /// 撤回人
    int? withdrawUserId,

    /// 撤回人姓名
    String? withdrawUserName,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? withdrawTime,
  }) = _KnowledgeDetailModel;

  factory KnowledgeDetailModel.empty() =>
      const KnowledgeDetailModel(knowledgeId: '', deployUserCode: '');

  bool get validate => knowledgeId.isNotEmpty;
  bool get isVideo => type == KnowledgeType.video;

  factory KnowledgeDetailModel.fromJson(Map<String, Object?> json) =>
      _$KnowledgeDetailModelFromJson(json);
}
