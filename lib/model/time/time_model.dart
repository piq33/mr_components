import 'package:components/model/common_model.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/time/album_file_type_converter.dart';
import 'package:components/model/converter/time/day_string_converter.dart';
import 'package:components/model/diy_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart';
part 'time_model.g.dart';

const timeTags = [
  CatalogType.first,
  CatalogType.wonderful,
  CatalogType.achievement,
  CatalogType.journal,
  CatalogType.other
];

// 时光分类
enum CatalogType {
  unknown(''),

  /// 全部
  @JsonValue('all')
  all('全部'),

  /// 第一次
  @JsonValue('first')
  first('第一次'),

  /// 精彩瞬间
  @JsonValue('wonderful')
  wonderful('精彩瞬间'),

  /// 成就时刻
  @JsonValue('achievement')
  achievement('成就时刻'),

  /// 成长日记
  @JsonValue('journal')
  journal('成长日记'),

  /// 其他
  @JsonValue('other')
  other('随手记');

  final String display;
  const CatalogType(this.display);
}

enum ObjType {
  @JsonValue(1)
  formal('正式'),

  @JsonValue(2)
  latent('潜在');

  final String display;
  const ObjType(this.display);
}

class TabYear {
  final int year;
  final CatalogType type;
  TabYear(this.year, this.type);
}

enum DropdownType {
  edit('编辑'),
  delete('删除'),
  share('分享');

  final String display;
  const DropdownType(this.display);
}

class DropdownItem {
  final String icon;
  final DropdownType type;

  DropdownItem({required this.icon, required this.type});
}

/// 时光的年份列表
@freezed
class TimeListModel with _$TimeListModel {
  const TimeListModel._();
  const factory TimeListModel({int? id}) = _TimeListModel;

  factory TimeListModel.fromJson(Map<String, Object?> json) =>
      _$TimeListModelFromJson(json);
}

@freezed
class TimeMomentsModel with _$TimeMomentsModel {
  const TimeMomentsModel._();
  const factory TimeMomentsModel({
    ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）	string
    @JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
    @Default(CatalogType.unknown)
    CatalogType catalog,

    ///	创建家长手机号	string
    String? createParentPhone,

    ///	创建时间	string
    @DateTimeJsonConverter() DateTime? createTime,

    ///	创建人	integer
    String? createUser,

    ///	是否已删除	integer
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    ///	对象id（学生id或者潜客生id）	integer
    String? objId,

    ///	对象类型(1：正式生、 2 ：潜客生)	integer
    ObjType? objType,

    ///	图片url列表	array	string
    @Default([]) List<String> picUrls,

    ///	录音url列表	array	string
    @Default([]) List<String> audioUrls,

    ///	视频url列表	array	string
    @Default([]) List<String> videoUrls,

    ///	记录时间	string
    @DateTimeJsonConverter() DateTime? recordTime,

    ///	业务状态	integer
    int? status,

    ///	时光内容	string
    String? timeMomentContent,

    ///	时光表ID	integer
    required String timeMomentId,

    ///	时光名字	string
    String? timeMomentName,

    ///	最后修改家长手机号	string
    String? updateParentPhone,

    ///	更新时间	string
    @DateTimeJsonConverter() required DateTime updateTime,

    ///	更新人	integer
    String? updateUser,

    ///	年份	integer
    @JsonKey(name: 'yearNo') int? year,

    /// diy 相册对象
    @JsonKey(name: 'diyStudentAlbum') TemplateDetailModel? diy,
  }) = _TimeMomentsModel;

  factory TimeMomentsModel.fromJson(Map<String, Object?> json) =>
      _$TimeMomentsModelFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class TimeYearListModel with _$TimeYearListModel {
  const TimeYearListModel._();
  const factory TimeYearListModel({
    /// 日期 MM-dd 字符串格式
    @JsonKey(name: 'dayString')
    @DayStringJsonConverter()
    required DateTime dateTime,

    /// 日期 对应的 时光列表
    @JsonKey(name: 'timeMoments') @Default([]) List<TimeMomentsModel> moments,
  }) = _TimeYearListModel;

  factory TimeYearListModel.fromJson(Map<String, Object?> json) =>
      _$TimeYearListModelFromJson(json);
}

/// 时光附件
@freezed
class AttachsModel with _$AttachsModel {
  const AttachsModel._();
  const factory AttachsModel({
    /// 附件类型(pic:图片;video:视频;audio:录音)
    @JsonKey(name: 'attachType')
    @AlbumFileTypeJsonConverter()
    required FileType fileType,

    /// 附件地址
    @JsonKey(name: 'mediaUrl') required String url,
  }) = _AttachsModel;

  factory AttachsModel.fromJson(Map<String, Object?> json) =>
      _$AttachsModelFromJson(json);
}

/// 添加时光
@freezed
class AddTimeLineReq with _$AddTimeLineReq {
  const AddTimeLineReq._();
  const factory AddTimeLineReq({
    ///	附件列表
    List<AttachsModel>? attachs,

    ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
    CatalogType? catalogType,

    ///	时光内容		false	    string
    String? timeMomentContent,

    ///	时光名字		false	    string
    String? timeMomentName,
  }) = _AddTimeLineReq;

  factory AddTimeLineReq.fromJson(Map<String, Object?> json) =>
      _$AddTimeLineReqFromJson(json);
}

/// 编辑时光
@freezed
class EditTimeLineReq with _$EditTimeLineReq {
  const EditTimeLineReq._();
  const factory EditTimeLineReq({
    ///	附件列表
    List<AttachsModel>? attachs,

    ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
    CatalogType? catalogType,

    ///	时光内容		false	    string
    String? timeMomentContent,

    ///	时光表ID		false	    string
    required int timeMomentId,

    ///	时光名字		false	    string
    String? timeMomentName,
  }) = _EditTimeLineReq;

  factory EditTimeLineReq.fromJson(Map<String, Object?> json) =>
      _$EditTimeLineReqFromJson(json);
}

@freezed
class YearDataList with _$YearDataList {
  const YearDataList._();
  const factory YearDataList({
    required int yearNo,
    required CatalogType type,
    required List<TimeYearListModel> items,
  }) = _YearDataList;

  factory YearDataList.fromJson(Map<String, Object?> json) =>
      _$YearDataListFromJson(json);
}
