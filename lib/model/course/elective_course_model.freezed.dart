// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elective_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElectiveCourseReq _$ElectiveCourseReqFromJson(Map<String, dynamic> json) {
  return _ElectiveCourseReq.fromJson(json);
}

/// @nodoc
mixin _$ElectiveCourseReq {
  /// 学生学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 课程主键
  int? get id => throw _privateConstructorUsedError;

  /// 是否有折扣
  bool? get hasDiscount => throw _privateConstructorUsedError;

  /// 开课开始时间
  String? get classDateStart => throw _privateConstructorUsedError;

  /// 开课结束时间
  String? get classDateEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElectiveCourseReqCopyWith<ElectiveCourseReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectiveCourseReqCopyWith<$Res> {
  factory $ElectiveCourseReqCopyWith(
          ElectiveCourseReq value, $Res Function(ElectiveCourseReq) then) =
      _$ElectiveCourseReqCopyWithImpl<$Res, ElectiveCourseReq>;
  @useResult
  $Res call(
      {String studentCode,
      String schoolCode,
      int? id,
      bool? hasDiscount,
      String? classDateStart,
      String? classDateEnd});
}

/// @nodoc
class _$ElectiveCourseReqCopyWithImpl<$Res, $Val extends ElectiveCourseReq>
    implements $ElectiveCourseReqCopyWith<$Res> {
  _$ElectiveCourseReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? schoolCode = null,
    Object? id = freezed,
    Object? hasDiscount = freezed,
    Object? classDateStart = freezed,
    Object? classDateEnd = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      classDateStart: freezed == classDateStart
          ? _value.classDateStart
          : classDateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      classDateEnd: freezed == classDateEnd
          ? _value.classDateEnd
          : classDateEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElectiveCourseReqImplCopyWith<$Res>
    implements $ElectiveCourseReqCopyWith<$Res> {
  factory _$$ElectiveCourseReqImplCopyWith(_$ElectiveCourseReqImpl value,
          $Res Function(_$ElectiveCourseReqImpl) then) =
      __$$ElectiveCourseReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String studentCode,
      String schoolCode,
      int? id,
      bool? hasDiscount,
      String? classDateStart,
      String? classDateEnd});
}

/// @nodoc
class __$$ElectiveCourseReqImplCopyWithImpl<$Res>
    extends _$ElectiveCourseReqCopyWithImpl<$Res, _$ElectiveCourseReqImpl>
    implements _$$ElectiveCourseReqImplCopyWith<$Res> {
  __$$ElectiveCourseReqImplCopyWithImpl(_$ElectiveCourseReqImpl _value,
      $Res Function(_$ElectiveCourseReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? schoolCode = null,
    Object? id = freezed,
    Object? hasDiscount = freezed,
    Object? classDateStart = freezed,
    Object? classDateEnd = freezed,
  }) {
    return _then(_$ElectiveCourseReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      classDateStart: freezed == classDateStart
          ? _value.classDateStart
          : classDateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      classDateEnd: freezed == classDateEnd
          ? _value.classDateEnd
          : classDateEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElectiveCourseReqImpl extends _ElectiveCourseReq {
  const _$ElectiveCourseReqImpl(
      {required this.studentCode,
      required this.schoolCode,
      this.id,
      this.hasDiscount,
      this.classDateStart,
      this.classDateEnd})
      : super._();

  factory _$ElectiveCourseReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElectiveCourseReqImplFromJson(json);

  /// 学生学号
  @override
  final String studentCode;

  /// 学校编码
  @override
  final String schoolCode;

  /// 课程主键
  @override
  final int? id;

  /// 是否有折扣
  @override
  final bool? hasDiscount;

  /// 开课开始时间
  @override
  final String? classDateStart;

  /// 开课结束时间
  @override
  final String? classDateEnd;

  @override
  String toString() {
    return 'ElectiveCourseReq(studentCode: $studentCode, schoolCode: $schoolCode, id: $id, hasDiscount: $hasDiscount, classDateStart: $classDateStart, classDateEnd: $classDateEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElectiveCourseReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.classDateStart, classDateStart) ||
                other.classDateStart == classDateStart) &&
            (identical(other.classDateEnd, classDateEnd) ||
                other.classDateEnd == classDateEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode, schoolCode, id,
      hasDiscount, classDateStart, classDateEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElectiveCourseReqImplCopyWith<_$ElectiveCourseReqImpl> get copyWith =>
      __$$ElectiveCourseReqImplCopyWithImpl<_$ElectiveCourseReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElectiveCourseReqImplToJson(
      this,
    );
  }
}

abstract class _ElectiveCourseReq extends ElectiveCourseReq {
  const factory _ElectiveCourseReq(
      {required final String studentCode,
      required final String schoolCode,
      final int? id,
      final bool? hasDiscount,
      final String? classDateStart,
      final String? classDateEnd}) = _$ElectiveCourseReqImpl;
  const _ElectiveCourseReq._() : super._();

  factory _ElectiveCourseReq.fromJson(Map<String, dynamic> json) =
      _$ElectiveCourseReqImpl.fromJson;

  @override

  /// 学生学号
  String get studentCode;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 课程主键
  int? get id;
  @override

  /// 是否有折扣
  bool? get hasDiscount;
  @override

  /// 开课开始时间
  String? get classDateStart;
  @override

  /// 开课结束时间
  String? get classDateEnd;
  @override
  @JsonKey(ignore: true)
  _$$ElectiveCourseReqImplCopyWith<_$ElectiveCourseReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountModel {
  /// 每节课需课时
  double get classHour => throw _privateConstructorUsedError;

  /// 每节课折扣后需课时
  double get discountClassHour => throw _privateConstructorUsedError;

  /// 课程打折开始时间
  @SimpleDateTimeJsonConverter()
  DateTime? get discountStartDate => throw _privateConstructorUsedError;

  /// 课程打折结束时间
  @SimpleDateTimeJsonConverter()
  DateTime? get discountEndDate => throw _privateConstructorUsedError;

  /// 活动报名开始时间
  @SimpleDateTimeJsonConverter()
  DateTime? get singUpStartDate => throw _privateConstructorUsedError;

  /// 活动报名结束时间
  @SimpleDateTimeJsonConverter()
  DateTime? get singUpEndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res, DiscountModel>;
  @useResult
  $Res call(
      {double classHour,
      double discountClassHour,
      @SimpleDateTimeJsonConverter() DateTime? discountStartDate,
      @SimpleDateTimeJsonConverter() DateTime? discountEndDate,
      @SimpleDateTimeJsonConverter() DateTime? singUpStartDate,
      @SimpleDateTimeJsonConverter() DateTime? singUpEndDate});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res, $Val extends DiscountModel>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classHour = null,
    Object? discountClassHour = null,
    Object? discountStartDate = freezed,
    Object? discountEndDate = freezed,
    Object? singUpStartDate = freezed,
    Object? singUpEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      classHour: null == classHour
          ? _value.classHour
          : classHour // ignore: cast_nullable_to_non_nullable
              as double,
      discountClassHour: null == discountClassHour
          ? _value.discountClassHour
          : discountClassHour // ignore: cast_nullable_to_non_nullable
              as double,
      discountStartDate: freezed == discountStartDate
          ? _value.discountStartDate
          : discountStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      discountEndDate: freezed == discountEndDate
          ? _value.discountEndDate
          : discountEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      singUpStartDate: freezed == singUpStartDate
          ? _value.singUpStartDate
          : singUpStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      singUpEndDate: freezed == singUpEndDate
          ? _value.singUpEndDate
          : singUpEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountModelImplCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$$DiscountModelImplCopyWith(
          _$DiscountModelImpl value, $Res Function(_$DiscountModelImpl) then) =
      __$$DiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double classHour,
      double discountClassHour,
      @SimpleDateTimeJsonConverter() DateTime? discountStartDate,
      @SimpleDateTimeJsonConverter() DateTime? discountEndDate,
      @SimpleDateTimeJsonConverter() DateTime? singUpStartDate,
      @SimpleDateTimeJsonConverter() DateTime? singUpEndDate});
}

/// @nodoc
class __$$DiscountModelImplCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res, _$DiscountModelImpl>
    implements _$$DiscountModelImplCopyWith<$Res> {
  __$$DiscountModelImplCopyWithImpl(
      _$DiscountModelImpl _value, $Res Function(_$DiscountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classHour = null,
    Object? discountClassHour = null,
    Object? discountStartDate = freezed,
    Object? discountEndDate = freezed,
    Object? singUpStartDate = freezed,
    Object? singUpEndDate = freezed,
  }) {
    return _then(_$DiscountModelImpl(
      classHour: null == classHour
          ? _value.classHour
          : classHour // ignore: cast_nullable_to_non_nullable
              as double,
      discountClassHour: null == discountClassHour
          ? _value.discountClassHour
          : discountClassHour // ignore: cast_nullable_to_non_nullable
              as double,
      discountStartDate: freezed == discountStartDate
          ? _value.discountStartDate
          : discountStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      discountEndDate: freezed == discountEndDate
          ? _value.discountEndDate
          : discountEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      singUpStartDate: freezed == singUpStartDate
          ? _value.singUpStartDate
          : singUpStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      singUpEndDate: freezed == singUpEndDate
          ? _value.singUpEndDate
          : singUpEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountModelImpl extends _DiscountModel {
  const _$DiscountModelImpl(
      {this.classHour = 0.0,
      this.discountClassHour = 0.0,
      @SimpleDateTimeJsonConverter() this.discountStartDate,
      @SimpleDateTimeJsonConverter() this.discountEndDate,
      @SimpleDateTimeJsonConverter() this.singUpStartDate,
      @SimpleDateTimeJsonConverter() this.singUpEndDate})
      : super._();

  factory _$DiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountModelImplFromJson(json);

  /// 每节课需课时
  @override
  @JsonKey()
  final double classHour;

  /// 每节课折扣后需课时
  @override
  @JsonKey()
  final double discountClassHour;

  /// 课程打折开始时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? discountStartDate;

  /// 课程打折结束时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? discountEndDate;

  /// 活动报名开始时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? singUpStartDate;

  /// 活动报名结束时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? singUpEndDate;

  @override
  String toString() {
    return 'DiscountModel(classHour: $classHour, discountClassHour: $discountClassHour, discountStartDate: $discountStartDate, discountEndDate: $discountEndDate, singUpStartDate: $singUpStartDate, singUpEndDate: $singUpEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountModelImpl &&
            (identical(other.classHour, classHour) ||
                other.classHour == classHour) &&
            (identical(other.discountClassHour, discountClassHour) ||
                other.discountClassHour == discountClassHour) &&
            (identical(other.discountStartDate, discountStartDate) ||
                other.discountStartDate == discountStartDate) &&
            (identical(other.discountEndDate, discountEndDate) ||
                other.discountEndDate == discountEndDate) &&
            (identical(other.singUpStartDate, singUpStartDate) ||
                other.singUpStartDate == singUpStartDate) &&
            (identical(other.singUpEndDate, singUpEndDate) ||
                other.singUpEndDate == singUpEndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classHour, discountClassHour,
      discountStartDate, discountEndDate, singUpStartDate, singUpEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      __$$DiscountModelImplCopyWithImpl<_$DiscountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountModelImplToJson(
      this,
    );
  }
}

abstract class _DiscountModel extends DiscountModel {
  const factory _DiscountModel(
          {final double classHour,
          final double discountClassHour,
          @SimpleDateTimeJsonConverter() final DateTime? discountStartDate,
          @SimpleDateTimeJsonConverter() final DateTime? discountEndDate,
          @SimpleDateTimeJsonConverter() final DateTime? singUpStartDate,
          @SimpleDateTimeJsonConverter() final DateTime? singUpEndDate}) =
      _$DiscountModelImpl;
  const _DiscountModel._() : super._();

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$DiscountModelImpl.fromJson;

  @override

  /// 每节课需课时
  double get classHour;
  @override

  /// 每节课折扣后需课时
  double get discountClassHour;
  @override

  /// 课程打折开始时间
  @SimpleDateTimeJsonConverter()
  DateTime? get discountStartDate;
  @override

  /// 课程打折结束时间
  @SimpleDateTimeJsonConverter()
  DateTime? get discountEndDate;
  @override

  /// 活动报名开始时间
  @SimpleDateTimeJsonConverter()
  DateTime? get singUpStartDate;
  @override

  /// 活动报名结束时间
  @SimpleDateTimeJsonConverter()
  DateTime? get singUpEndDate;
  @override
  @JsonKey(ignore: true)
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElectiveCourseModel _$ElectiveCourseModelFromJson(Map<String, dynamic> json) {
  return _ElectiveCourseModel.fromJson(json);
}

/// @nodoc
mixin _$ElectiveCourseModel {
  /// 主键
  String get id => throw _privateConstructorUsedError;

  /// 教师编码
  String? get assistantTeacherCode => throw _privateConstructorUsedError;

  /// 教师名称
  String get assistantTeacherName => throw _privateConstructorUsedError;

  /// 取消预约时间(小时)
  @JsonKey(name: 'cancelReservationHour')
  int? get cancelHour => throw _privateConstructorUsedError;

  /// 取消预约时间(分钟)
  @JsonKey(name: 'cancelReservationMin')
  int? get cancelMin => throw _privateConstructorUsedError;

  /// 上课结束时间(小时)
  int get endHour => throw _privateConstructorUsedError;

  /// 上课结束时间(分钟)
  dynamic get endMin => throw _privateConstructorUsedError;

  /// 取消预约时间类型
  @JsonKey(name: 'cancelReservationType')
  @CancelTypeJsonConverter()
  CancelType get cancelType => throw _privateConstructorUsedError;

  /// 每节课消耗课时
  double get classHour => throw _privateConstructorUsedError;

  /// 课程名称
  String get courseName => throw _privateConstructorUsedError;

  /// 上课地点
  @JsonKey(name: 'courseAddress')
  String get address => throw _privateConstructorUsedError;

  /// 上课内容
  @JsonKey(name: 'courseContent')
  String get content => throw _privateConstructorUsedError;

  /// 上课照片
  @JsonKey(name: 'courseCoverPic')
  String? get cover => throw _privateConstructorUsedError;

  /// 课程开始时间
  @JsonKey(name: 'courseStartDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// 课程结束时间
  @JsonKey(name: 'courseEndDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// 当前学生已报名课节数 “已取消”用得上
  @JsonKey(name: 'currentStudentCancelSignUpNum')
  int get cancelSignUpNum => throw _privateConstructorUsedError;

  /// 当前学生已报名课节数 “已预约”用得上
  @JsonKey(name: 'currentStudentSignUpNum')
  int get signUpNum => throw _privateConstructorUsedError;

  /// 总的节课数 “选修课列表”用不上 “已预约”用得上
  @JsonKey(name: 'totalClassTableNum')
  int get tableNum => throw _privateConstructorUsedError;

  /// 当前学生是否已报名
  @JsonKey(name: 'currentStudentSignUp')
  bool get signUp => throw _privateConstructorUsedError;

  /// 折扣信息
  @JsonKey(name: 'discountInfoList')
  List<DiscountModel> get discountList => throw _privateConstructorUsedError;

  /// 剩余名额
  int get leftNum => throw _privateConstructorUsedError;

  /// 主讲老师头像
  String? get mainTeacherHeadPic => throw _privateConstructorUsedError;

  /// 主讲老师介绍
  String get mainTeacherIntroduce => throw _privateConstructorUsedError;

  /// 主讲老师对应的老师介绍id
  String? get mainTeacherIntroduceId => throw _privateConstructorUsedError;

  /// 主讲老师名称
  String get mainTeacherName => throw _privateConstructorUsedError;

  /// 最多报名人数
  int get maxSignUpNum => throw _privateConstructorUsedError;

  /// 报名时间-开始时间
  @DateTimeJsonConverter()
  DateTime? get signUpStartTime => throw _privateConstructorUsedError;

  /// 报名时间-结束时间
  @DateTimeJsonConverter()
  DateTime? get signUpEndTime => throw _privateConstructorUsedError;

  /// 上课开始小时
  int get startHour => throw _privateConstructorUsedError;

  /// 上课开始分钟
  int get startMin => throw _privateConstructorUsedError;

  /// 星期几上课
  int? get weekDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElectiveCourseModelCopyWith<ElectiveCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectiveCourseModelCopyWith<$Res> {
  factory $ElectiveCourseModelCopyWith(
          ElectiveCourseModel value, $Res Function(ElectiveCourseModel) then) =
      _$ElectiveCourseModelCopyWithImpl<$Res, ElectiveCourseModel>;
  @useResult
  $Res call(
      {String id,
      String? assistantTeacherCode,
      String assistantTeacherName,
      @JsonKey(name: 'cancelReservationHour') int? cancelHour,
      @JsonKey(name: 'cancelReservationMin') int? cancelMin,
      int endHour,
      dynamic endMin,
      @JsonKey(name: 'cancelReservationType')
      @CancelTypeJsonConverter()
      CancelType cancelType,
      double classHour,
      String courseName,
      @JsonKey(name: 'courseAddress') String address,
      @JsonKey(name: 'courseContent') String content,
      @JsonKey(name: 'courseCoverPic') String? cover,
      @JsonKey(name: 'courseStartDate')
      @SimpleDateTimeJsonConverter()
      DateTime? startDate,
      @JsonKey(name: 'courseEndDate')
      @SimpleDateTimeJsonConverter()
      DateTime? endDate,
      @JsonKey(name: 'currentStudentCancelSignUpNum') int cancelSignUpNum,
      @JsonKey(name: 'currentStudentSignUpNum') int signUpNum,
      @JsonKey(name: 'totalClassTableNum') int tableNum,
      @JsonKey(name: 'currentStudentSignUp') bool signUp,
      @JsonKey(name: 'discountInfoList') List<DiscountModel> discountList,
      int leftNum,
      String? mainTeacherHeadPic,
      String mainTeacherIntroduce,
      String? mainTeacherIntroduceId,
      String mainTeacherName,
      int maxSignUpNum,
      @DateTimeJsonConverter() DateTime? signUpStartTime,
      @DateTimeJsonConverter() DateTime? signUpEndTime,
      int startHour,
      int startMin,
      int? weekDay});
}

/// @nodoc
class _$ElectiveCourseModelCopyWithImpl<$Res, $Val extends ElectiveCourseModel>
    implements $ElectiveCourseModelCopyWith<$Res> {
  _$ElectiveCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assistantTeacherCode = freezed,
    Object? assistantTeacherName = null,
    Object? cancelHour = freezed,
    Object? cancelMin = freezed,
    Object? endHour = null,
    Object? endMin = freezed,
    Object? cancelType = null,
    Object? classHour = null,
    Object? courseName = null,
    Object? address = null,
    Object? content = null,
    Object? cover = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? cancelSignUpNum = null,
    Object? signUpNum = null,
    Object? tableNum = null,
    Object? signUp = null,
    Object? discountList = null,
    Object? leftNum = null,
    Object? mainTeacherHeadPic = freezed,
    Object? mainTeacherIntroduce = null,
    Object? mainTeacherIntroduceId = freezed,
    Object? mainTeacherName = null,
    Object? maxSignUpNum = null,
    Object? signUpStartTime = freezed,
    Object? signUpEndTime = freezed,
    Object? startHour = null,
    Object? startMin = null,
    Object? weekDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assistantTeacherCode: freezed == assistantTeacherCode
          ? _value.assistantTeacherCode
          : assistantTeacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantTeacherName: null == assistantTeacherName
          ? _value.assistantTeacherName
          : assistantTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      cancelHour: freezed == cancelHour
          ? _value.cancelHour
          : cancelHour // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelMin: freezed == cancelMin
          ? _value.cancelMin
          : cancelMin // ignore: cast_nullable_to_non_nullable
              as int?,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      endMin: freezed == endMin
          ? _value.endMin
          : endMin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelType: null == cancelType
          ? _value.cancelType
          : cancelType // ignore: cast_nullable_to_non_nullable
              as CancelType,
      classHour: null == classHour
          ? _value.classHour
          : classHour // ignore: cast_nullable_to_non_nullable
              as double,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelSignUpNum: null == cancelSignUpNum
          ? _value.cancelSignUpNum
          : cancelSignUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUpNum: null == signUpNum
          ? _value.signUpNum
          : signUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      tableNum: null == tableNum
          ? _value.tableNum
          : tableNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUp: null == signUp
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as bool,
      discountList: null == discountList
          ? _value.discountList
          : discountList // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      leftNum: null == leftNum
          ? _value.leftNum
          : leftNum // ignore: cast_nullable_to_non_nullable
              as int,
      mainTeacherHeadPic: freezed == mainTeacherHeadPic
          ? _value.mainTeacherHeadPic
          : mainTeacherHeadPic // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTeacherIntroduce: null == mainTeacherIntroduce
          ? _value.mainTeacherIntroduce
          : mainTeacherIntroduce // ignore: cast_nullable_to_non_nullable
              as String,
      mainTeacherIntroduceId: freezed == mainTeacherIntroduceId
          ? _value.mainTeacherIntroduceId
          : mainTeacherIntroduceId // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTeacherName: null == mainTeacherName
          ? _value.mainTeacherName
          : mainTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      maxSignUpNum: null == maxSignUpNum
          ? _value.maxSignUpNum
          : maxSignUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUpStartTime: freezed == signUpStartTime
          ? _value.signUpStartTime
          : signUpStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signUpEndTime: freezed == signUpEndTime
          ? _value.signUpEndTime
          : signUpEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      startMin: null == startMin
          ? _value.startMin
          : startMin // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: freezed == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElectiveCourseModelImplCopyWith<$Res>
    implements $ElectiveCourseModelCopyWith<$Res> {
  factory _$$ElectiveCourseModelImplCopyWith(_$ElectiveCourseModelImpl value,
          $Res Function(_$ElectiveCourseModelImpl) then) =
      __$$ElectiveCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? assistantTeacherCode,
      String assistantTeacherName,
      @JsonKey(name: 'cancelReservationHour') int? cancelHour,
      @JsonKey(name: 'cancelReservationMin') int? cancelMin,
      int endHour,
      dynamic endMin,
      @JsonKey(name: 'cancelReservationType')
      @CancelTypeJsonConverter()
      CancelType cancelType,
      double classHour,
      String courseName,
      @JsonKey(name: 'courseAddress') String address,
      @JsonKey(name: 'courseContent') String content,
      @JsonKey(name: 'courseCoverPic') String? cover,
      @JsonKey(name: 'courseStartDate')
      @SimpleDateTimeJsonConverter()
      DateTime? startDate,
      @JsonKey(name: 'courseEndDate')
      @SimpleDateTimeJsonConverter()
      DateTime? endDate,
      @JsonKey(name: 'currentStudentCancelSignUpNum') int cancelSignUpNum,
      @JsonKey(name: 'currentStudentSignUpNum') int signUpNum,
      @JsonKey(name: 'totalClassTableNum') int tableNum,
      @JsonKey(name: 'currentStudentSignUp') bool signUp,
      @JsonKey(name: 'discountInfoList') List<DiscountModel> discountList,
      int leftNum,
      String? mainTeacherHeadPic,
      String mainTeacherIntroduce,
      String? mainTeacherIntroduceId,
      String mainTeacherName,
      int maxSignUpNum,
      @DateTimeJsonConverter() DateTime? signUpStartTime,
      @DateTimeJsonConverter() DateTime? signUpEndTime,
      int startHour,
      int startMin,
      int? weekDay});
}

/// @nodoc
class __$$ElectiveCourseModelImplCopyWithImpl<$Res>
    extends _$ElectiveCourseModelCopyWithImpl<$Res, _$ElectiveCourseModelImpl>
    implements _$$ElectiveCourseModelImplCopyWith<$Res> {
  __$$ElectiveCourseModelImplCopyWithImpl(_$ElectiveCourseModelImpl _value,
      $Res Function(_$ElectiveCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assistantTeacherCode = freezed,
    Object? assistantTeacherName = null,
    Object? cancelHour = freezed,
    Object? cancelMin = freezed,
    Object? endHour = null,
    Object? endMin = freezed,
    Object? cancelType = null,
    Object? classHour = null,
    Object? courseName = null,
    Object? address = null,
    Object? content = null,
    Object? cover = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? cancelSignUpNum = null,
    Object? signUpNum = null,
    Object? tableNum = null,
    Object? signUp = null,
    Object? discountList = null,
    Object? leftNum = null,
    Object? mainTeacherHeadPic = freezed,
    Object? mainTeacherIntroduce = null,
    Object? mainTeacherIntroduceId = freezed,
    Object? mainTeacherName = null,
    Object? maxSignUpNum = null,
    Object? signUpStartTime = freezed,
    Object? signUpEndTime = freezed,
    Object? startHour = null,
    Object? startMin = null,
    Object? weekDay = freezed,
  }) {
    return _then(_$ElectiveCourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assistantTeacherCode: freezed == assistantTeacherCode
          ? _value.assistantTeacherCode
          : assistantTeacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantTeacherName: null == assistantTeacherName
          ? _value.assistantTeacherName
          : assistantTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      cancelHour: freezed == cancelHour
          ? _value.cancelHour
          : cancelHour // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelMin: freezed == cancelMin
          ? _value.cancelMin
          : cancelMin // ignore: cast_nullable_to_non_nullable
              as int?,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      endMin: freezed == endMin ? _value.endMin! : endMin,
      cancelType: null == cancelType
          ? _value.cancelType
          : cancelType // ignore: cast_nullable_to_non_nullable
              as CancelType,
      classHour: null == classHour
          ? _value.classHour
          : classHour // ignore: cast_nullable_to_non_nullable
              as double,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelSignUpNum: null == cancelSignUpNum
          ? _value.cancelSignUpNum
          : cancelSignUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUpNum: null == signUpNum
          ? _value.signUpNum
          : signUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      tableNum: null == tableNum
          ? _value.tableNum
          : tableNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUp: null == signUp
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as bool,
      discountList: null == discountList
          ? _value._discountList
          : discountList // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      leftNum: null == leftNum
          ? _value.leftNum
          : leftNum // ignore: cast_nullable_to_non_nullable
              as int,
      mainTeacherHeadPic: freezed == mainTeacherHeadPic
          ? _value.mainTeacherHeadPic
          : mainTeacherHeadPic // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTeacherIntroduce: null == mainTeacherIntroduce
          ? _value.mainTeacherIntroduce
          : mainTeacherIntroduce // ignore: cast_nullable_to_non_nullable
              as String,
      mainTeacherIntroduceId: freezed == mainTeacherIntroduceId
          ? _value.mainTeacherIntroduceId
          : mainTeacherIntroduceId // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTeacherName: null == mainTeacherName
          ? _value.mainTeacherName
          : mainTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      maxSignUpNum: null == maxSignUpNum
          ? _value.maxSignUpNum
          : maxSignUpNum // ignore: cast_nullable_to_non_nullable
              as int,
      signUpStartTime: freezed == signUpStartTime
          ? _value.signUpStartTime
          : signUpStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signUpEndTime: freezed == signUpEndTime
          ? _value.signUpEndTime
          : signUpEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      startMin: null == startMin
          ? _value.startMin
          : startMin // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: freezed == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElectiveCourseModelImpl extends _ElectiveCourseModel {
  const _$ElectiveCourseModelImpl(
      {required this.id,
      this.assistantTeacherCode,
      this.assistantTeacherName = '',
      @JsonKey(name: 'cancelReservationHour') this.cancelHour,
      @JsonKey(name: 'cancelReservationMin') this.cancelMin,
      this.endHour = 0,
      this.endMin = 0,
      @JsonKey(name: 'cancelReservationType')
      @CancelTypeJsonConverter()
      this.cancelType = CancelType.none,
      this.classHour = 0.0,
      this.courseName = '',
      @JsonKey(name: 'courseAddress') this.address = '',
      @JsonKey(name: 'courseContent') this.content = '',
      @JsonKey(name: 'courseCoverPic') this.cover,
      @JsonKey(name: 'courseStartDate')
      @SimpleDateTimeJsonConverter()
      this.startDate,
      @JsonKey(name: 'courseEndDate')
      @SimpleDateTimeJsonConverter()
      this.endDate,
      @JsonKey(name: 'currentStudentCancelSignUpNum') this.cancelSignUpNum = 0,
      @JsonKey(name: 'currentStudentSignUpNum') this.signUpNum = 0,
      @JsonKey(name: 'totalClassTableNum') this.tableNum = 0,
      @JsonKey(name: 'currentStudentSignUp') this.signUp = false,
      @JsonKey(name: 'discountInfoList')
      final List<DiscountModel> discountList = const [],
      this.leftNum = 0,
      this.mainTeacherHeadPic,
      this.mainTeacherIntroduce = '',
      this.mainTeacherIntroduceId,
      this.mainTeacherName = '',
      this.maxSignUpNum = 0,
      @DateTimeJsonConverter() this.signUpStartTime,
      @DateTimeJsonConverter() this.signUpEndTime,
      this.startHour = 0,
      this.startMin = 0,
      this.weekDay})
      : _discountList = discountList,
        super._();

  factory _$ElectiveCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElectiveCourseModelImplFromJson(json);

  /// 主键
  @override
  final String id;

  /// 教师编码
  @override
  final String? assistantTeacherCode;

  /// 教师名称
  @override
  @JsonKey()
  final String assistantTeacherName;

  /// 取消预约时间(小时)
  @override
  @JsonKey(name: 'cancelReservationHour')
  final int? cancelHour;

  /// 取消预约时间(分钟)
  @override
  @JsonKey(name: 'cancelReservationMin')
  final int? cancelMin;

  /// 上课结束时间(小时)
  @override
  @JsonKey()
  final int endHour;

  /// 上课结束时间(分钟)
  @override
  @JsonKey()
  final dynamic endMin;

  /// 取消预约时间类型
  @override
  @JsonKey(name: 'cancelReservationType')
  @CancelTypeJsonConverter()
  final CancelType cancelType;

  /// 每节课消耗课时
  @override
  @JsonKey()
  final double classHour;

  /// 课程名称
  @override
  @JsonKey()
  final String courseName;

  /// 上课地点
  @override
  @JsonKey(name: 'courseAddress')
  final String address;

  /// 上课内容
  @override
  @JsonKey(name: 'courseContent')
  final String content;

  /// 上课照片
  @override
  @JsonKey(name: 'courseCoverPic')
  final String? cover;

  /// 课程开始时间
  @override
  @JsonKey(name: 'courseStartDate')
  @SimpleDateTimeJsonConverter()
  final DateTime? startDate;

  /// 课程结束时间
  @override
  @JsonKey(name: 'courseEndDate')
  @SimpleDateTimeJsonConverter()
  final DateTime? endDate;

  /// 当前学生已报名课节数 “已取消”用得上
  @override
  @JsonKey(name: 'currentStudentCancelSignUpNum')
  final int cancelSignUpNum;

  /// 当前学生已报名课节数 “已预约”用得上
  @override
  @JsonKey(name: 'currentStudentSignUpNum')
  final int signUpNum;

  /// 总的节课数 “选修课列表”用不上 “已预约”用得上
  @override
  @JsonKey(name: 'totalClassTableNum')
  final int tableNum;

  /// 当前学生是否已报名
  @override
  @JsonKey(name: 'currentStudentSignUp')
  final bool signUp;

  /// 折扣信息
  final List<DiscountModel> _discountList;

  /// 折扣信息
  @override
  @JsonKey(name: 'discountInfoList')
  List<DiscountModel> get discountList {
    if (_discountList is EqualUnmodifiableListView) return _discountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountList);
  }

  /// 剩余名额
  @override
  @JsonKey()
  final int leftNum;

  /// 主讲老师头像
  @override
  final String? mainTeacherHeadPic;

  /// 主讲老师介绍
  @override
  @JsonKey()
  final String mainTeacherIntroduce;

  /// 主讲老师对应的老师介绍id
  @override
  final String? mainTeacherIntroduceId;

  /// 主讲老师名称
  @override
  @JsonKey()
  final String mainTeacherName;

  /// 最多报名人数
  @override
  @JsonKey()
  final int maxSignUpNum;

  /// 报名时间-开始时间
  @override
  @DateTimeJsonConverter()
  final DateTime? signUpStartTime;

  /// 报名时间-结束时间
  @override
  @DateTimeJsonConverter()
  final DateTime? signUpEndTime;

  /// 上课开始小时
  @override
  @JsonKey()
  final int startHour;

  /// 上课开始分钟
  @override
  @JsonKey()
  final int startMin;

  /// 星期几上课
  @override
  final int? weekDay;

  @override
  String toString() {
    return 'ElectiveCourseModel(id: $id, assistantTeacherCode: $assistantTeacherCode, assistantTeacherName: $assistantTeacherName, cancelHour: $cancelHour, cancelMin: $cancelMin, endHour: $endHour, endMin: $endMin, cancelType: $cancelType, classHour: $classHour, courseName: $courseName, address: $address, content: $content, cover: $cover, startDate: $startDate, endDate: $endDate, cancelSignUpNum: $cancelSignUpNum, signUpNum: $signUpNum, tableNum: $tableNum, signUp: $signUp, discountList: $discountList, leftNum: $leftNum, mainTeacherHeadPic: $mainTeacherHeadPic, mainTeacherIntroduce: $mainTeacherIntroduce, mainTeacherIntroduceId: $mainTeacherIntroduceId, mainTeacherName: $mainTeacherName, maxSignUpNum: $maxSignUpNum, signUpStartTime: $signUpStartTime, signUpEndTime: $signUpEndTime, startHour: $startHour, startMin: $startMin, weekDay: $weekDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElectiveCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assistantTeacherCode, assistantTeacherCode) ||
                other.assistantTeacherCode == assistantTeacherCode) &&
            (identical(other.assistantTeacherName, assistantTeacherName) ||
                other.assistantTeacherName == assistantTeacherName) &&
            (identical(other.cancelHour, cancelHour) ||
                other.cancelHour == cancelHour) &&
            (identical(other.cancelMin, cancelMin) ||
                other.cancelMin == cancelMin) &&
            (identical(other.endHour, endHour) || other.endHour == endHour) &&
            const DeepCollectionEquality().equals(other.endMin, endMin) &&
            (identical(other.cancelType, cancelType) ||
                other.cancelType == cancelType) &&
            (identical(other.classHour, classHour) ||
                other.classHour == classHour) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.cancelSignUpNum, cancelSignUpNum) ||
                other.cancelSignUpNum == cancelSignUpNum) &&
            (identical(other.signUpNum, signUpNum) ||
                other.signUpNum == signUpNum) &&
            (identical(other.tableNum, tableNum) ||
                other.tableNum == tableNum) &&
            (identical(other.signUp, signUp) || other.signUp == signUp) &&
            const DeepCollectionEquality()
                .equals(other._discountList, _discountList) &&
            (identical(other.leftNum, leftNum) || other.leftNum == leftNum) &&
            (identical(other.mainTeacherHeadPic, mainTeacherHeadPic) ||
                other.mainTeacherHeadPic == mainTeacherHeadPic) &&
            (identical(other.mainTeacherIntroduce, mainTeacherIntroduce) ||
                other.mainTeacherIntroduce == mainTeacherIntroduce) &&
            (identical(other.mainTeacherIntroduceId, mainTeacherIntroduceId) ||
                other.mainTeacherIntroduceId == mainTeacherIntroduceId) &&
            (identical(other.mainTeacherName, mainTeacherName) ||
                other.mainTeacherName == mainTeacherName) &&
            (identical(other.maxSignUpNum, maxSignUpNum) ||
                other.maxSignUpNum == maxSignUpNum) &&
            (identical(other.signUpStartTime, signUpStartTime) ||
                other.signUpStartTime == signUpStartTime) &&
            (identical(other.signUpEndTime, signUpEndTime) ||
                other.signUpEndTime == signUpEndTime) &&
            (identical(other.startHour, startHour) ||
                other.startHour == startHour) &&
            (identical(other.startMin, startMin) ||
                other.startMin == startMin) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        assistantTeacherCode,
        assistantTeacherName,
        cancelHour,
        cancelMin,
        endHour,
        const DeepCollectionEquality().hash(endMin),
        cancelType,
        classHour,
        courseName,
        address,
        content,
        cover,
        startDate,
        endDate,
        cancelSignUpNum,
        signUpNum,
        tableNum,
        signUp,
        const DeepCollectionEquality().hash(_discountList),
        leftNum,
        mainTeacherHeadPic,
        mainTeacherIntroduce,
        mainTeacherIntroduceId,
        mainTeacherName,
        maxSignUpNum,
        signUpStartTime,
        signUpEndTime,
        startHour,
        startMin,
        weekDay
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElectiveCourseModelImplCopyWith<_$ElectiveCourseModelImpl> get copyWith =>
      __$$ElectiveCourseModelImplCopyWithImpl<_$ElectiveCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElectiveCourseModelImplToJson(
      this,
    );
  }
}

abstract class _ElectiveCourseModel extends ElectiveCourseModel {
  const factory _ElectiveCourseModel(
      {required final String id,
      final String? assistantTeacherCode,
      final String assistantTeacherName,
      @JsonKey(name: 'cancelReservationHour') final int? cancelHour,
      @JsonKey(name: 'cancelReservationMin') final int? cancelMin,
      final int endHour,
      final dynamic endMin,
      @JsonKey(name: 'cancelReservationType')
      @CancelTypeJsonConverter()
      final CancelType cancelType,
      final double classHour,
      final String courseName,
      @JsonKey(name: 'courseAddress') final String address,
      @JsonKey(name: 'courseContent') final String content,
      @JsonKey(name: 'courseCoverPic') final String? cover,
      @JsonKey(name: 'courseStartDate')
      @SimpleDateTimeJsonConverter()
      final DateTime? startDate,
      @JsonKey(name: 'courseEndDate')
      @SimpleDateTimeJsonConverter()
      final DateTime? endDate,
      @JsonKey(name: 'currentStudentCancelSignUpNum') final int cancelSignUpNum,
      @JsonKey(name: 'currentStudentSignUpNum') final int signUpNum,
      @JsonKey(name: 'totalClassTableNum') final int tableNum,
      @JsonKey(name: 'currentStudentSignUp') final bool signUp,
      @JsonKey(name: 'discountInfoList') final List<DiscountModel> discountList,
      final int leftNum,
      final String? mainTeacherHeadPic,
      final String mainTeacherIntroduce,
      final String? mainTeacherIntroduceId,
      final String mainTeacherName,
      final int maxSignUpNum,
      @DateTimeJsonConverter() final DateTime? signUpStartTime,
      @DateTimeJsonConverter() final DateTime? signUpEndTime,
      final int startHour,
      final int startMin,
      final int? weekDay}) = _$ElectiveCourseModelImpl;
  const _ElectiveCourseModel._() : super._();

  factory _ElectiveCourseModel.fromJson(Map<String, dynamic> json) =
      _$ElectiveCourseModelImpl.fromJson;

  @override

  /// 主键
  String get id;
  @override

  /// 教师编码
  String? get assistantTeacherCode;
  @override

  /// 教师名称
  String get assistantTeacherName;
  @override

  /// 取消预约时间(小时)
  @JsonKey(name: 'cancelReservationHour')
  int? get cancelHour;
  @override

  /// 取消预约时间(分钟)
  @JsonKey(name: 'cancelReservationMin')
  int? get cancelMin;
  @override

  /// 上课结束时间(小时)
  int get endHour;
  @override

  /// 上课结束时间(分钟)
  dynamic get endMin;
  @override

  /// 取消预约时间类型
  @JsonKey(name: 'cancelReservationType')
  @CancelTypeJsonConverter()
  CancelType get cancelType;
  @override

  /// 每节课消耗课时
  double get classHour;
  @override

  /// 课程名称
  String get courseName;
  @override

  /// 上课地点
  @JsonKey(name: 'courseAddress')
  String get address;
  @override

  /// 上课内容
  @JsonKey(name: 'courseContent')
  String get content;
  @override

  /// 上课照片
  @JsonKey(name: 'courseCoverPic')
  String? get cover;
  @override

  /// 课程开始时间
  @JsonKey(name: 'courseStartDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate;
  @override

  /// 课程结束时间
  @JsonKey(name: 'courseEndDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate;
  @override

  /// 当前学生已报名课节数 “已取消”用得上
  @JsonKey(name: 'currentStudentCancelSignUpNum')
  int get cancelSignUpNum;
  @override

  /// 当前学生已报名课节数 “已预约”用得上
  @JsonKey(name: 'currentStudentSignUpNum')
  int get signUpNum;
  @override

  /// 总的节课数 “选修课列表”用不上 “已预约”用得上
  @JsonKey(name: 'totalClassTableNum')
  int get tableNum;
  @override

  /// 当前学生是否已报名
  @JsonKey(name: 'currentStudentSignUp')
  bool get signUp;
  @override

  /// 折扣信息
  @JsonKey(name: 'discountInfoList')
  List<DiscountModel> get discountList;
  @override

  /// 剩余名额
  int get leftNum;
  @override

  /// 主讲老师头像
  String? get mainTeacherHeadPic;
  @override

  /// 主讲老师介绍
  String get mainTeacherIntroduce;
  @override

  /// 主讲老师对应的老师介绍id
  String? get mainTeacherIntroduceId;
  @override

  /// 主讲老师名称
  String get mainTeacherName;
  @override

  /// 最多报名人数
  int get maxSignUpNum;
  @override

  /// 报名时间-开始时间
  @DateTimeJsonConverter()
  DateTime? get signUpStartTime;
  @override

  /// 报名时间-结束时间
  @DateTimeJsonConverter()
  DateTime? get signUpEndTime;
  @override

  /// 上课开始小时
  int get startHour;
  @override

  /// 上课开始分钟
  int get startMin;
  @override

  /// 星期几上课
  int? get weekDay;
  @override
  @JsonKey(ignore: true)
  _$$ElectiveCourseModelImplCopyWith<_$ElectiveCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
