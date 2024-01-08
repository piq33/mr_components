import 'package:components/model/converter/course/cancel_type_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'elective_course_model.freezed.dart';
part 'elective_course_model.g.dart';

enum CancelType { none, pre, current }

/// 选修课程请求
@freezed
class ElectiveCourseReq with _$ElectiveCourseReq {
  const ElectiveCourseReq._();
  const factory ElectiveCourseReq({
    /// 学生学号
    required String studentCode,

    /// 学校编码
    required String schoolCode,

    /// 课程主键
    int? id,

    /// 是否有折扣
    bool? hasDiscount,

    /// 开课开始时间
    String? classDateStart,

    /// 开课结束时间
    String? classDateEnd,
  }) = _ElectiveCourseReq;

  factory ElectiveCourseReq.fromJson(Map<String, dynamic> json) =>
      _$ElectiveCourseReqFromJson(json);
}

/// 折扣
@freezed
class DiscountModel with _$DiscountModel {
  const DiscountModel._();
  const factory DiscountModel({
    /// 每节课需课时
    @Default(0.0) double classHour,

    /// 每节课折扣后需课时
    @Default(0.0) double discountClassHour,

    /// 课程打折开始时间
    @SimpleDateTimeJsonConverter() DateTime? discountStartDate,

    /// 课程打折结束时间
    @SimpleDateTimeJsonConverter() DateTime? discountEndDate,

    /// 活动报名开始时间
    @SimpleDateTimeJsonConverter() DateTime? singUpStartDate,

    /// 活动报名结束时间
    @SimpleDateTimeJsonConverter() DateTime? singUpEndDate,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}

/// 选修课程
@freezed
class ElectiveCourseModel with _$ElectiveCourseModel {
  const ElectiveCourseModel._();
  const factory ElectiveCourseModel({
    /// 主键
    required String id,

    /// 教师编码
    String? assistantTeacherCode,

    /// 教师名称
    @Default('') String assistantTeacherName,

    /// 取消预约时间(小时)
    @JsonKey(name: 'cancelReservationHour') int? cancelHour,

    /// 取消预约时间(分钟)
    @JsonKey(name: 'cancelReservationMin') int? cancelMin,

    /// 上课结束时间(小时)
    @Default(0) int endHour,

    /// 上课结束时间(分钟)
    @Default(0) endMin,

    /// 取消预约时间类型
    @JsonKey(name: 'cancelReservationType')
    @CancelTypeJsonConverter()
    @Default(CancelType.none)
    CancelType cancelType,

    /// 每节课消耗课时
    @Default(0.0) double classHour,

    /// 课程名称
    @Default('') String courseName,

    /// 上课地点
    @JsonKey(name: 'courseAddress') @Default('') String address,

    /// 上课内容
    @JsonKey(name: 'courseContent') @Default('') String content,

    /// 上课照片
    @JsonKey(name: 'courseCoverPic') String? cover,

    /// 课程开始时间
    @JsonKey(name: 'courseStartDate')
    @SimpleDateTimeJsonConverter()
    DateTime? startDate,

    /// 课程结束时间
    @JsonKey(name: 'courseEndDate')
    @SimpleDateTimeJsonConverter()
    DateTime? endDate,

    /// 当前学生已报名课节数 “已取消”用得上
    @JsonKey(name: 'currentStudentCancelSignUpNum')
    @Default(0)
    int cancelSignUpNum,

    /// 当前学生已报名课节数 “已预约”用得上
    @JsonKey(name: 'currentStudentSignUpNum') @Default(0) int signUpNum,

    /// 总的节课数 “选修课列表”用不上 “已预约”用得上
    @JsonKey(name: 'totalClassTableNum') @Default(0) int tableNum,

    /// 当前学生是否已报名
    @JsonKey(name: 'currentStudentSignUp') @Default(false) bool signUp,

    /// 折扣信息
    @JsonKey(name: 'discountInfoList')
    @Default([])
    List<DiscountModel> discountList,

    /// 剩余名额
    @Default(0) int leftNum,

    /// 主讲老师头像
    String? mainTeacherHeadPic,

    /// 主讲老师介绍
    @Default('') String mainTeacherIntroduce,

    /// 主讲老师对应的老师介绍id
    String? mainTeacherIntroduceId,

    /// 主讲老师名称
    @Default('') String mainTeacherName,

    /// 最多报名人数
    @Default(0) int maxSignUpNum,

    /// 报名时间-开始时间
    @DateTimeJsonConverter() DateTime? signUpStartTime,

    /// 报名时间-结束时间
    @DateTimeJsonConverter() DateTime? signUpEndTime,

    /// 上课开始小时
    @Default(0) int startHour,

    /// 上课开始分钟
    @Default(0) int startMin,

    /// 星期几上课
    int? weekDay,
  }) = _ElectiveCourseModel;

  factory ElectiveCourseModel.fromJson(Map<String, dynamic> json) =>
      _$ElectiveCourseModelFromJson(json);
}
