import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/time/album_file_type_converter.dart';
import 'package:bsl/model/school_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

enum SearchType {
  @JsonValue(0)
  all('所有', 0),
  @JsonValue(1)
  individual('个人', 1),
  @JsonValue(2)
  clazz('班级', 2),
  @JsonValue(3)
  school('校园', 3);

  final int res;
  final String display;
  const SearchType(this.display, this.res);
}

@freezed
class AlbumPickerModel with _$AlbumPickerModel {
  const AlbumPickerModel._();
  const factory AlbumPickerModel({
    /// 新增图片
    @Default([]) List<String> addPics,

    /// 删除图片
    @Default([]) List<String> dltPics,
  }) = _AlbumPickerModel;

  factory AlbumPickerModel.fromJson(Map<String, Object?> json) =>
      _$AlbumPickerModelFromJson(json);
}

@freezed
class ClipOtherParam with _$ClipOtherParam {
  const ClipOtherParam._();
  const factory ClipOtherParam({
    /// 剪影详情id
    @Default('') String activityId,
  }) = _ClipOtherParam;

  factory ClipOtherParam.fromJson(Map<String, Object?> json) =>
      _$ClipOtherParamFromJson(json);
}

/// 剪影筛选条件
@freezed
class ClipFilterModel with _$ClipFilterModel {
  const ClipFilterModel._();
  const factory ClipFilterModel({
    /// 所选择学年学期
    FilterYearTermModel? selectedYearTerm,
  }) = _ClipFilterModel;

  factory ClipFilterModel.fromJson(Map<String, Object?> json) =>
      _$ClipFilterModelFromJson(json);
}

/// 剪影新增请求
@freezed
class ClipReq with _$ClipReq {
  const ClipReq._();
  const factory ClipReq({
    /// 活动类型 false	 integer(int32)
    int? activityType,

    /// 班级编码		false	 string
    String? classCode,

    /// 课程编码		false	 string
    String? courseCode,

    /// 年级编码		false	 string
    String? gradeCode,

    /// false	 string
    String? periodCode,

    /// 学期编码		false	 string
    String? yearTermCode,
  }) = _ClipReq;

  factory ClipReq.fromJson(Map<String, Object?> json) =>
      _$ClipReqFromJson(json);
}

/// 剪影
@freezed
class ClipResourceModel with _$ClipResourceModel {
  const ClipResourceModel._();
  const factory ClipResourceModel({
    /// 资源id
    @JsonKey(name: 'photoId') required int resourceId,

    /// 资源url
    @JsonKey(name: 'photoUrl') required String url,

    /// 是否视频文件
    @JsonKey(name: 'ifVideo') @Default(false) bool isVideo,

    /// 绑定学员姓名
    @Default([]) List<String> bindNameList,
  }) = _ClipResourceModel;

  factory ClipResourceModel.fromJson(Map<String, Object?> json) =>
      _$ClipResourceModelFromJson(json);
}

/// 剪影信息
@freezed
class ClipModel with _$ClipModel {
  const ClipModel._();
  const factory ClipModel({
    ///	活动ID	integer
    @Default('') String activityId,

    ///	评论次数	integer
    @Default(0) int commentNum,

    ///	标题	string
    @Default('') String title,

    ///	内容	string
    @Default('') String content,

    /// 资源类型(需要获取资源类型后配置)
    @Default(SearchType.all) SearchType searchType,

    ///	发布时间	string
    @DateTimeJsonConverter() DateTime? deployDate,

    ///	发布老师编码	string
    @Default('') String deployTeacherCode,

    ///	发布老师名称	string
    @Default('') String deployTeacherName,

    ///	点赞次数	integer
    @Default(0) int likeNum,

    /// 查看次数 integer
    @Default(0) int viewNum,

    /// 家长查看次数 integer
    @Default(0) int studentViewNum,

    /// 老师查看次数 integer
    @Default(0) int teacherViewNum,

    /// 自己是否点赞
    @JsonKey(name: 'selfLikeFlag') @Default(false) bool selfLike,

    ///	string
    @Default('') String photoInfo,

    ///	string
    @Default('') String avatarUrl,

    /// 资源列表
    @JsonKey(name: 'photoList')
    @Default([])
    List<ClipResourceModel> resourceList,
  }) = _ClipModel;

  factory ClipModel.fromJson(Map<String, Object?> json) =>
      _$ClipModelFromJson(json);
}

/// 个人相册
@freezed
class PhotoResourceModel with _$PhotoResourceModel {
  const PhotoResourceModel._();
  const factory PhotoResourceModel({
    /// 资源id
    @JsonKey(name: 'personalPhotoId') required int resourceId,

    /// 资源url
    @JsonKey(name: 'photoUrl') required String url,

    /// 是否视频文件
    @JsonKey(name: 'ifVideo') @Default(false) bool isVideo,
  }) = _PhotoResourceModel;

  factory PhotoResourceModel.fromJson(Map<String, Object?> json) =>
      _$PhotoResourceModelFromJson(json);
}

/// 个人照片新增请求
@freezed
class PhotoResourceReq with _$PhotoResourceReq {
  const PhotoResourceReq._();
  const factory PhotoResourceReq({
    /// 资源url
    @JsonKey(name: 'photoUrl') required String url,

    /// 资源类型
    @JsonKey(name: 'photoType')
    @AlbumFileTypeJsonConverter()
    required FileType type,
  }) = _PhotoResourceReq;

  factory PhotoResourceReq.fromJson(Map<String, Object?> json) =>
      _$PhotoResourceReqFromJson(json);
}
