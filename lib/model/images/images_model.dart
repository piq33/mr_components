import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_model.freezed.dart';
part 'images_model.g.dart';

enum ActivityType {
  @JsonValue(1)
  school('学校', 1),
  @JsonValue(2)
  clazz('班级', 2),
  @JsonValue(3)
  individual('个人', 3);

  final int req;
  final String display;
  const ActivityType(this.display, this.req);
}

/// 个人剪影发布类型(1分别 2组合)
enum PersonalDeployType {
  @JsonValue(1)
  part('分别', 1),
  @JsonValue(2)
  make('组合', 2);

  final int req;
  final String display;
  const PersonalDeployType(this.display, this.req);
}

/// 获取剪影发布列表
@freezed
class PhotoModel with _$PhotoModel {
  const PhotoModel._();
  const factory PhotoModel({
    ///	发布活动ID	integer(int64)
    @Default(0) int activityId,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, Object?> json) =>
      _$PhotoModelFromJson(json);
}

/// 获取剪影发布列表
@freezed
class ImagesModel with _$ImagesModel {
  const ImagesModel._();
  const factory ImagesModel({
    ///	发布活动ID	integer(int64)
    @Default(0) int activityId,

    ///	活动类型(1 学校、 2 班级 、3个人)	integer(int32)
    ActivityType? activityType,

    ///	班级编码	string
    @Default('') String classCode,

    ///	评论人数	integer(int32)
    @Default(0) int commentNum,

    ///	内容	string
    @Default('') String content,

    ///	创建老师编码	string
    @Default('') String createTeacherCode,

    ///	创建时间	string(date-time)
    @StringTimestampNullableJsonConverter() DateTime? createTime,

    ///	创建人	integer(int64)
    @Default('') String createUser,

    ///	发布时间	string(date-time)
    @StringTimestampNullableJsonConverter() DateTime? deployDate,

    ///	发布老师编码	string
    @Default('') String deployTeacherCode,

    ///	发布老师姓名	string
    @Default('') String deployTeacherName,

    ///	年级编码	string
    @Default('') String gradeCode,

    ///	是否已删除	integer(int32)
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    ///	个人剪影发布类型(1分别 2组合)	integer(int32)
    @Default(PersonalDeployType.part) PersonalDeployType personalDeployType,

    ///	照片内容	string
    @Default('') String photoInfo,

    ///	照片列表	array	PhotoDTO
    @Default([]) List<PhotoModel> photoList,

    ///	学校编码	string
    @Default('') String schoolCode,

    ///	业务状态	integer(int32)
    @Default(0) int status,

    ///	标题	string
    @Default('') String title,

    ///	最后修改老师	string
    @Default('') String updateTeacherCode,

    ///	更新时间	string(date-time)
    @StringTimestampNullableJsonConverter() DateTime? updateTime,

    ///	更新人	integer(int64)
    @Default('') String updateUser,

    ///	查看人数	integer(int32)
    @Default(0) int viewNum,

    ///	学期编码	string
    @Default('') String yearTermCode,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, Object?> json) =>
      _$ImagesModelFromJson(json);
}
