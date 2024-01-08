// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'childtask_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChildtaskInfoModel _$ChildtaskInfoModelFromJson(Map<String, dynamic> json) {
  return _ChildtaskInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskInfoModel {
  /// 任务日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate => throw _privateConstructorUsedError;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum => throw _privateConstructorUsedError;

  /// 完成率(有可能负，请使用[percent])
  double get finishPercent => throw _privateConstructorUsedError;

  /// 任务列表
  List<ChildtaskModel> get taskList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskInfoModelCopyWith<ChildtaskInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskInfoModelCopyWith<$Res> {
  factory $ChildtaskInfoModelCopyWith(
          ChildtaskInfoModel value, $Res Function(ChildtaskInfoModel) then) =
      _$ChildtaskInfoModelCopyWithImpl<$Res, ChildtaskInfoModel>;
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      int unFinishNum,
      double finishPercent,
      List<ChildtaskModel> taskList});
}

/// @nodoc
class _$ChildtaskInfoModelCopyWithImpl<$Res, $Val extends ChildtaskInfoModel>
    implements $ChildtaskInfoModelCopyWith<$Res> {
  _$ChildtaskInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? unFinishNum = null,
    Object? finishPercent = null,
    Object? taskList = null,
  }) {
    return _then(_value.copyWith(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
      finishPercent: null == finishPercent
          ? _value.finishPercent
          : finishPercent // ignore: cast_nullable_to_non_nullable
              as double,
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<ChildtaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskInfoModelImplCopyWith<$Res>
    implements $ChildtaskInfoModelCopyWith<$Res> {
  factory _$$ChildtaskInfoModelImplCopyWith(_$ChildtaskInfoModelImpl value,
          $Res Function(_$ChildtaskInfoModelImpl) then) =
      __$$ChildtaskInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      int unFinishNum,
      double finishPercent,
      List<ChildtaskModel> taskList});
}

/// @nodoc
class __$$ChildtaskInfoModelImplCopyWithImpl<$Res>
    extends _$ChildtaskInfoModelCopyWithImpl<$Res, _$ChildtaskInfoModelImpl>
    implements _$$ChildtaskInfoModelImplCopyWith<$Res> {
  __$$ChildtaskInfoModelImplCopyWithImpl(_$ChildtaskInfoModelImpl _value,
      $Res Function(_$ChildtaskInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? unFinishNum = null,
    Object? finishPercent = null,
    Object? taskList = null,
  }) {
    return _then(_$ChildtaskInfoModelImpl(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
      finishPercent: null == finishPercent
          ? _value.finishPercent
          : finishPercent // ignore: cast_nullable_to_non_nullable
              as double,
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<ChildtaskModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskInfoModelImpl extends _ChildtaskInfoModel {
  const _$ChildtaskInfoModelImpl(
      {@SimpleDateTimeJsonConverter() this.currDate,
      this.unFinishNum = 0,
      this.finishPercent = 0,
      final List<ChildtaskModel> taskList = const []})
      : _taskList = taskList,
        super._();

  factory _$ChildtaskInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskInfoModelImplFromJson(json);

  /// 任务日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? currDate;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  @override
  @JsonKey()
  final int unFinishNum;

  /// 完成率(有可能负，请使用[percent])
  @override
  @JsonKey()
  final double finishPercent;

  /// 任务列表
  final List<ChildtaskModel> _taskList;

  /// 任务列表
  @override
  @JsonKey()
  List<ChildtaskModel> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString() {
    return 'ChildtaskInfoModel(currDate: $currDate, unFinishNum: $unFinishNum, finishPercent: $finishPercent, taskList: $taskList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskInfoModelImpl &&
            (identical(other.currDate, currDate) ||
                other.currDate == currDate) &&
            (identical(other.unFinishNum, unFinishNum) ||
                other.unFinishNum == unFinishNum) &&
            (identical(other.finishPercent, finishPercent) ||
                other.finishPercent == finishPercent) &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currDate, unFinishNum,
      finishPercent, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskInfoModelImplCopyWith<_$ChildtaskInfoModelImpl> get copyWith =>
      __$$ChildtaskInfoModelImplCopyWithImpl<_$ChildtaskInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskInfoModel extends ChildtaskInfoModel {
  const factory _ChildtaskInfoModel(
      {@SimpleDateTimeJsonConverter() final DateTime? currDate,
      final int unFinishNum,
      final double finishPercent,
      final List<ChildtaskModel> taskList}) = _$ChildtaskInfoModelImpl;
  const _ChildtaskInfoModel._() : super._();

  factory _ChildtaskInfoModel.fromJson(Map<String, dynamic> json) =
      _$ChildtaskInfoModelImpl.fromJson;

  @override

  /// 任务日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate;
  @override

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum;
  @override

  /// 完成率(有可能负，请使用[percent])
  double get finishPercent;
  @override

  /// 任务列表
  List<ChildtaskModel> get taskList;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskInfoModelImplCopyWith<_$ChildtaskInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassFinishModel _$ClassFinishModelFromJson(Map<String, dynamic> json) {
  return _ClassFinishModel.fromJson(json);
}

/// @nodoc
mixin _$ClassFinishModel {
  /// 班级名称
  String get className => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 完成人数(有可能负，请使用[finishCount])
  int get finishNum => throw _privateConstructorUsedError;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassFinishModelCopyWith<ClassFinishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassFinishModelCopyWith<$Res> {
  factory $ClassFinishModelCopyWith(
          ClassFinishModel value, $Res Function(ClassFinishModel) then) =
      _$ClassFinishModelCopyWithImpl<$Res, ClassFinishModel>;
  @useResult
  $Res call(
      {String className, String classCode, int finishNum, int unFinishNum});
}

/// @nodoc
class _$ClassFinishModelCopyWithImpl<$Res, $Val extends ClassFinishModel>
    implements $ClassFinishModelCopyWith<$Res> {
  _$ClassFinishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? classCode = null,
    Object? finishNum = null,
    Object? unFinishNum = null,
  }) {
    return _then(_value.copyWith(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassFinishModelImplCopyWith<$Res>
    implements $ClassFinishModelCopyWith<$Res> {
  factory _$$ClassFinishModelImplCopyWith(_$ClassFinishModelImpl value,
          $Res Function(_$ClassFinishModelImpl) then) =
      __$$ClassFinishModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String className, String classCode, int finishNum, int unFinishNum});
}

/// @nodoc
class __$$ClassFinishModelImplCopyWithImpl<$Res>
    extends _$ClassFinishModelCopyWithImpl<$Res, _$ClassFinishModelImpl>
    implements _$$ClassFinishModelImplCopyWith<$Res> {
  __$$ClassFinishModelImplCopyWithImpl(_$ClassFinishModelImpl _value,
      $Res Function(_$ClassFinishModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? classCode = null,
    Object? finishNum = null,
    Object? unFinishNum = null,
  }) {
    return _then(_$ClassFinishModelImpl(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassFinishModelImpl extends _ClassFinishModel {
  const _$ClassFinishModelImpl(
      {this.className = '',
      this.classCode = '',
      this.finishNum = 0,
      this.unFinishNum = 0})
      : super._();

  factory _$ClassFinishModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassFinishModelImplFromJson(json);

  /// 班级名称
  @override
  @JsonKey()
  final String className;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 完成人数(有可能负，请使用[finishCount])
  @override
  @JsonKey()
  final int finishNum;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  @override
  @JsonKey()
  final int unFinishNum;

  @override
  String toString() {
    return 'ClassFinishModel(className: $className, classCode: $classCode, finishNum: $finishNum, unFinishNum: $unFinishNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassFinishModelImpl &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.finishNum, finishNum) ||
                other.finishNum == finishNum) &&
            (identical(other.unFinishNum, unFinishNum) ||
                other.unFinishNum == unFinishNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, className, classCode, finishNum, unFinishNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassFinishModelImplCopyWith<_$ClassFinishModelImpl> get copyWith =>
      __$$ClassFinishModelImplCopyWithImpl<_$ClassFinishModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassFinishModelImplToJson(
      this,
    );
  }
}

abstract class _ClassFinishModel extends ClassFinishModel {
  const factory _ClassFinishModel(
      {final String className,
      final String classCode,
      final int finishNum,
      final int unFinishNum}) = _$ClassFinishModelImpl;
  const _ClassFinishModel._() : super._();

  factory _ClassFinishModel.fromJson(Map<String, dynamic> json) =
      _$ClassFinishModelImpl.fromJson;

  @override

  /// 班级名称
  String get className;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 完成人数(有可能负，请使用[finishCount])
  int get finishNum;
  @override

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum;
  @override
  @JsonKey(ignore: true)
  _$$ClassFinishModelImplCopyWith<_$ClassFinishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskModel _$ChildtaskModelFromJson(Map<String, dynamic> json) {
  return _ChildtaskModel.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskModel {
  int? get id => throw _privateConstructorUsedError;

  /// 租客id
  String? get tenantId => throw _privateConstructorUsedError;

  /// 任务编码
  String get code => throw _privateConstructorUsedError;

  /// 任务标题
  String get title => throw _privateConstructorUsedError;

  /// 任务简介
  String get brief => throw _privateConstructorUsedError;

  /// 任务内容
  String get content => throw _privateConstructorUsedError;

  /// 资源链接
  @JsonKey(name: 'resourceUrl')
  String get resourceString => throw _privateConstructorUsedError;

  /// 资源类型
  @JsonKey(name: 'resourceType')
  @Int2ResourceTypeJsonConverter()
  FileType get fileType => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学段名称
  String get phaseName => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 课程名称
  String get courseName => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 年级名称
  String get gradeName => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 班级名称
  String get className => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 学年学期名称
  String get yearTermName => throw _privateConstructorUsedError;

  /// 学年学期编码
  String get yearTermCode => throw _privateConstructorUsedError;

  /// 总人数(有可能负，请使用[total])
  int get count => throw _privateConstructorUsedError;

  /// 完成人数(有可能负，请使用[finishCount])
  int get finishNum => throw _privateConstructorUsedError;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum => throw _privateConstructorUsedError;

  /// 任务状态
  ChildtaskStatus get status => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 是否已完成
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  bool get isFinish => throw _privateConstructorUsedError;

  /// 任务日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate => throw _privateConstructorUsedError;

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 撤回时间
  @SimpleDateTimeJsonConverter()
  DateTime? get cancelTime => throw _privateConstructorUsedError;

  /// 班级完成情况
  List<ClassFinishModel> get classFinishList =>
      throw _privateConstructorUsedError;

  /// 任务进度列表
  @JsonKey(name: 'taskResultList')
  List<ChildtaskResultModel> get resultList =>
      throw _privateConstructorUsedError;

  /// 发布人头像
  String? get publishUserAvatar => throw _privateConstructorUsedError;

  /// 发布人
  String? get publishUser => throw _privateConstructorUsedError;

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新人
  String? get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskModelCopyWith<ChildtaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskModelCopyWith<$Res> {
  factory $ChildtaskModelCopyWith(
          ChildtaskModel value, $Res Function(ChildtaskModel) then) =
      _$ChildtaskModelCopyWithImpl<$Res, ChildtaskModel>;
  @useResult
  $Res call(
      {int? id,
      String? tenantId,
      String code,
      String title,
      String brief,
      String content,
      @JsonKey(name: 'resourceUrl') String resourceString,
      @JsonKey(name: 'resourceType')
      @Int2ResourceTypeJsonConverter()
      FileType fileType,
      String schoolCode,
      String phaseName,
      String phaseCode,
      String courseName,
      String courseCode,
      String gradeName,
      String gradeCode,
      String className,
      String classCode,
      String yearTermName,
      String yearTermCode,
      int count,
      int finishNum,
      int unFinishNum,
      ChildtaskStatus status,
      @Int2BoolJsonConverter() bool isDeleted,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() bool isFinish,
      @SimpleDateTimeJsonConverter() DateTime? currDate,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate,
      String remark,
      @SimpleDateTimeJsonConverter() DateTime? cancelTime,
      List<ClassFinishModel> classFinishList,
      @JsonKey(name: 'taskResultList') List<ChildtaskResultModel> resultList,
      String? publishUserAvatar,
      String? publishUser,
      @DateTimeJsonConverter() DateTime? publishTime,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$ChildtaskModelCopyWithImpl<$Res, $Val extends ChildtaskModel>
    implements $ChildtaskModelCopyWith<$Res> {
  _$ChildtaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? code = null,
    Object? title = null,
    Object? brief = null,
    Object? content = null,
    Object? resourceString = null,
    Object? fileType = null,
    Object? schoolCode = null,
    Object? phaseName = null,
    Object? phaseCode = null,
    Object? courseName = null,
    Object? courseCode = null,
    Object? gradeName = null,
    Object? gradeCode = null,
    Object? className = null,
    Object? classCode = null,
    Object? yearTermName = null,
    Object? yearTermCode = null,
    Object? count = null,
    Object? finishNum = null,
    Object? unFinishNum = null,
    Object? status = null,
    Object? isDeleted = null,
    Object? isFinish = null,
    Object? currDate = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? remark = null,
    Object? cancelTime = freezed,
    Object? classFinishList = null,
    Object? resultList = null,
    Object? publishUserAvatar = freezed,
    Object? publishUser = freezed,
    Object? publishTime = freezed,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brief: null == brief
          ? _value.brief
          : brief // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      resourceString: null == resourceString
          ? _value.resourceString
          : resourceString // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChildtaskStatus,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinish: null == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: freezed == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classFinishList: null == classFinishList
          ? _value.classFinishList
          : classFinishList // ignore: cast_nullable_to_non_nullable
              as List<ClassFinishModel>,
      resultList: null == resultList
          ? _value.resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<ChildtaskResultModel>,
      publishUserAvatar: freezed == publishUserAvatar
          ? _value.publishUserAvatar
          : publishUserAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      publishUser: freezed == publishUser
          ? _value.publishUser
          : publishUser // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskModelImplCopyWith<$Res>
    implements $ChildtaskModelCopyWith<$Res> {
  factory _$$ChildtaskModelImplCopyWith(_$ChildtaskModelImpl value,
          $Res Function(_$ChildtaskModelImpl) then) =
      __$$ChildtaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? tenantId,
      String code,
      String title,
      String brief,
      String content,
      @JsonKey(name: 'resourceUrl') String resourceString,
      @JsonKey(name: 'resourceType')
      @Int2ResourceTypeJsonConverter()
      FileType fileType,
      String schoolCode,
      String phaseName,
      String phaseCode,
      String courseName,
      String courseCode,
      String gradeName,
      String gradeCode,
      String className,
      String classCode,
      String yearTermName,
      String yearTermCode,
      int count,
      int finishNum,
      int unFinishNum,
      ChildtaskStatus status,
      @Int2BoolJsonConverter() bool isDeleted,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() bool isFinish,
      @SimpleDateTimeJsonConverter() DateTime? currDate,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate,
      String remark,
      @SimpleDateTimeJsonConverter() DateTime? cancelTime,
      List<ClassFinishModel> classFinishList,
      @JsonKey(name: 'taskResultList') List<ChildtaskResultModel> resultList,
      String? publishUserAvatar,
      String? publishUser,
      @DateTimeJsonConverter() DateTime? publishTime,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$ChildtaskModelImplCopyWithImpl<$Res>
    extends _$ChildtaskModelCopyWithImpl<$Res, _$ChildtaskModelImpl>
    implements _$$ChildtaskModelImplCopyWith<$Res> {
  __$$ChildtaskModelImplCopyWithImpl(
      _$ChildtaskModelImpl _value, $Res Function(_$ChildtaskModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? code = null,
    Object? title = null,
    Object? brief = null,
    Object? content = null,
    Object? resourceString = null,
    Object? fileType = null,
    Object? schoolCode = null,
    Object? phaseName = null,
    Object? phaseCode = null,
    Object? courseName = null,
    Object? courseCode = null,
    Object? gradeName = null,
    Object? gradeCode = null,
    Object? className = null,
    Object? classCode = null,
    Object? yearTermName = null,
    Object? yearTermCode = null,
    Object? count = null,
    Object? finishNum = null,
    Object? unFinishNum = null,
    Object? status = null,
    Object? isDeleted = null,
    Object? isFinish = null,
    Object? currDate = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? remark = null,
    Object? cancelTime = freezed,
    Object? classFinishList = null,
    Object? resultList = null,
    Object? publishUserAvatar = freezed,
    Object? publishUser = freezed,
    Object? publishTime = freezed,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$ChildtaskModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brief: null == brief
          ? _value.brief
          : brief // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      resourceString: null == resourceString
          ? _value.resourceString
          : resourceString // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      unFinishNum: null == unFinishNum
          ? _value.unFinishNum
          : unFinishNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChildtaskStatus,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinish: null == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: freezed == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classFinishList: null == classFinishList
          ? _value._classFinishList
          : classFinishList // ignore: cast_nullable_to_non_nullable
              as List<ClassFinishModel>,
      resultList: null == resultList
          ? _value._resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<ChildtaskResultModel>,
      publishUserAvatar: freezed == publishUserAvatar
          ? _value.publishUserAvatar
          : publishUserAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      publishUser: freezed == publishUser
          ? _value.publishUser
          : publishUser // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskModelImpl extends _ChildtaskModel {
  const _$ChildtaskModelImpl(
      {this.id,
      this.tenantId,
      this.code = '',
      this.title = '',
      this.brief = '',
      this.content = '',
      @JsonKey(name: 'resourceUrl') this.resourceString = '',
      @JsonKey(name: 'resourceType')
      @Int2ResourceTypeJsonConverter()
      this.fileType = FileType.none,
      this.schoolCode = '',
      this.phaseName = '',
      this.phaseCode = '',
      this.courseName = '',
      this.courseCode = '',
      this.gradeName = '',
      this.gradeCode = '',
      this.className = '',
      this.classCode = '',
      this.yearTermName = '',
      this.yearTermCode = '',
      this.count = 0,
      this.finishNum = 0,
      this.unFinishNum = 0,
      this.status = ChildtaskStatus.unknown,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @JsonKey(name: 'finishFlag')
      @Int2BoolJsonConverter()
      this.isFinish = false,
      @SimpleDateTimeJsonConverter() this.currDate,
      @SimpleDateTimeJsonConverter() this.startDate,
      @SimpleDateTimeJsonConverter() this.endDate,
      this.remark = '',
      @SimpleDateTimeJsonConverter() this.cancelTime,
      final List<ClassFinishModel> classFinishList = const [],
      @JsonKey(name: 'taskResultList')
      final List<ChildtaskResultModel> resultList = const [],
      this.publishUserAvatar,
      this.publishUser,
      @DateTimeJsonConverter() this.publishTime,
      this.createUser,
      @DateTimeJsonConverter() this.createTime,
      this.updateUser,
      @DateTimeJsonConverter() this.updateTime})
      : _classFinishList = classFinishList,
        _resultList = resultList,
        super._();

  factory _$ChildtaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskModelImplFromJson(json);

  @override
  final int? id;

  /// 租客id
  @override
  final String? tenantId;

  /// 任务编码
  @override
  @JsonKey()
  final String code;

  /// 任务标题
  @override
  @JsonKey()
  final String title;

  /// 任务简介
  @override
  @JsonKey()
  final String brief;

  /// 任务内容
  @override
  @JsonKey()
  final String content;

  /// 资源链接
  @override
  @JsonKey(name: 'resourceUrl')
  final String resourceString;

  /// 资源类型
  @override
  @JsonKey(name: 'resourceType')
  @Int2ResourceTypeJsonConverter()
  final FileType fileType;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 学段名称
  @override
  @JsonKey()
  final String phaseName;

  /// 学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 课程名称
  @override
  @JsonKey()
  final String courseName;

  /// 课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 年级名称
  @override
  @JsonKey()
  final String gradeName;

  /// 年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 班级名称
  @override
  @JsonKey()
  final String className;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 学年学期名称
  @override
  @JsonKey()
  final String yearTermName;

  /// 学年学期编码
  @override
  @JsonKey()
  final String yearTermCode;

  /// 总人数(有可能负，请使用[total])
  @override
  @JsonKey()
  final int count;

  /// 完成人数(有可能负，请使用[finishCount])
  @override
  @JsonKey()
  final int finishNum;

  /// 未完成人数(有可能负，请使用[unFinishCount])
  @override
  @JsonKey()
  final int unFinishNum;

  /// 任务状态
  @override
  @JsonKey()
  final ChildtaskStatus status;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 是否已完成
  @override
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  final bool isFinish;

  /// 任务日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? currDate;

  /// 开始日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? startDate;

  /// 结束日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? endDate;

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 撤回时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? cancelTime;

  /// 班级完成情况
  final List<ClassFinishModel> _classFinishList;

  /// 班级完成情况
  @override
  @JsonKey()
  List<ClassFinishModel> get classFinishList {
    if (_classFinishList is EqualUnmodifiableListView) return _classFinishList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classFinishList);
  }

  /// 任务进度列表
  final List<ChildtaskResultModel> _resultList;

  /// 任务进度列表
  @override
  @JsonKey(name: 'taskResultList')
  List<ChildtaskResultModel> get resultList {
    if (_resultList is EqualUnmodifiableListView) return _resultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultList);
  }

  /// 发布人头像
  @override
  final String? publishUserAvatar;

  /// 发布人
  @override
  final String? publishUser;

  /// 发布时间
  @override
  @DateTimeJsonConverter()
  final DateTime? publishTime;

  /// 创建人
  @override
  final String? createUser;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新人
  @override
  final String? updateUser;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'ChildtaskModel(id: $id, tenantId: $tenantId, code: $code, title: $title, brief: $brief, content: $content, resourceString: $resourceString, fileType: $fileType, schoolCode: $schoolCode, phaseName: $phaseName, phaseCode: $phaseCode, courseName: $courseName, courseCode: $courseCode, gradeName: $gradeName, gradeCode: $gradeCode, className: $className, classCode: $classCode, yearTermName: $yearTermName, yearTermCode: $yearTermCode, count: $count, finishNum: $finishNum, unFinishNum: $unFinishNum, status: $status, isDeleted: $isDeleted, isFinish: $isFinish, currDate: $currDate, startDate: $startDate, endDate: $endDate, remark: $remark, cancelTime: $cancelTime, classFinishList: $classFinishList, resultList: $resultList, publishUserAvatar: $publishUserAvatar, publishUser: $publishUser, publishTime: $publishTime, createUser: $createUser, createTime: $createTime, updateUser: $updateUser, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brief, brief) || other.brief == brief) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.resourceString, resourceString) ||
                other.resourceString == resourceString) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeName, gradeName) ||
                other.gradeName == gradeName) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.yearTermName, yearTermName) ||
                other.yearTermName == yearTermName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.finishNum, finishNum) ||
                other.finishNum == finishNum) &&
            (identical(other.unFinishNum, unFinishNum) ||
                other.unFinishNum == unFinishNum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isFinish, isFinish) ||
                other.isFinish == isFinish) &&
            (identical(other.currDate, currDate) ||
                other.currDate == currDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.cancelTime, cancelTime) ||
                other.cancelTime == cancelTime) &&
            const DeepCollectionEquality()
                .equals(other._classFinishList, _classFinishList) &&
            const DeepCollectionEquality()
                .equals(other._resultList, _resultList) &&
            (identical(other.publishUserAvatar, publishUserAvatar) ||
                other.publishUserAvatar == publishUserAvatar) &&
            (identical(other.publishUser, publishUser) ||
                other.publishUser == publishUser) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        tenantId,
        code,
        title,
        brief,
        content,
        resourceString,
        fileType,
        schoolCode,
        phaseName,
        phaseCode,
        courseName,
        courseCode,
        gradeName,
        gradeCode,
        className,
        classCode,
        yearTermName,
        yearTermCode,
        count,
        finishNum,
        unFinishNum,
        status,
        isDeleted,
        isFinish,
        currDate,
        startDate,
        endDate,
        remark,
        cancelTime,
        const DeepCollectionEquality().hash(_classFinishList),
        const DeepCollectionEquality().hash(_resultList),
        publishUserAvatar,
        publishUser,
        publishTime,
        createUser,
        createTime,
        updateUser,
        updateTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskModelImplCopyWith<_$ChildtaskModelImpl> get copyWith =>
      __$$ChildtaskModelImplCopyWithImpl<_$ChildtaskModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskModelImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskModel extends ChildtaskModel {
  const factory _ChildtaskModel(
      {final int? id,
      final String? tenantId,
      final String code,
      final String title,
      final String brief,
      final String content,
      @JsonKey(name: 'resourceUrl') final String resourceString,
      @JsonKey(name: 'resourceType')
      @Int2ResourceTypeJsonConverter()
      final FileType fileType,
      final String schoolCode,
      final String phaseName,
      final String phaseCode,
      final String courseName,
      final String courseCode,
      final String gradeName,
      final String gradeCode,
      final String className,
      final String classCode,
      final String yearTermName,
      final String yearTermCode,
      final int count,
      final int finishNum,
      final int unFinishNum,
      final ChildtaskStatus status,
      @Int2BoolJsonConverter() final bool isDeleted,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() final bool isFinish,
      @SimpleDateTimeJsonConverter() final DateTime? currDate,
      @SimpleDateTimeJsonConverter() final DateTime? startDate,
      @SimpleDateTimeJsonConverter() final DateTime? endDate,
      final String remark,
      @SimpleDateTimeJsonConverter() final DateTime? cancelTime,
      final List<ClassFinishModel> classFinishList,
      @JsonKey(name: 'taskResultList')
      final List<ChildtaskResultModel> resultList,
      final String? publishUserAvatar,
      final String? publishUser,
      @DateTimeJsonConverter() final DateTime? publishTime,
      final String? createUser,
      @DateTimeJsonConverter() final DateTime? createTime,
      final String? updateUser,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$ChildtaskModelImpl;
  const _ChildtaskModel._() : super._();

  factory _ChildtaskModel.fromJson(Map<String, dynamic> json) =
      _$ChildtaskModelImpl.fromJson;

  @override
  int? get id;
  @override

  /// 租客id
  String? get tenantId;
  @override

  /// 任务编码
  String get code;
  @override

  /// 任务标题
  String get title;
  @override

  /// 任务简介
  String get brief;
  @override

  /// 任务内容
  String get content;
  @override

  /// 资源链接
  @JsonKey(name: 'resourceUrl')
  String get resourceString;
  @override

  /// 资源类型
  @JsonKey(name: 'resourceType')
  @Int2ResourceTypeJsonConverter()
  FileType get fileType;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学段名称
  String get phaseName;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 课程名称
  String get courseName;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 年级名称
  String get gradeName;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 班级名称
  String get className;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 学年学期名称
  String get yearTermName;
  @override

  /// 学年学期编码
  String get yearTermCode;
  @override

  /// 总人数(有可能负，请使用[total])
  int get count;
  @override

  /// 完成人数(有可能负，请使用[finishCount])
  int get finishNum;
  @override

  /// 未完成人数(有可能负，请使用[unFinishCount])
  int get unFinishNum;
  @override

  /// 任务状态
  ChildtaskStatus get status;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 是否已完成
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  bool get isFinish;
  @override

  /// 任务日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate;
  @override

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate;
  @override

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate;
  @override

  /// 备注
  String get remark;
  @override

  /// 撤回时间
  @SimpleDateTimeJsonConverter()
  DateTime? get cancelTime;
  @override

  /// 班级完成情况
  List<ClassFinishModel> get classFinishList;
  @override

  /// 任务进度列表
  @JsonKey(name: 'taskResultList')
  List<ChildtaskResultModel> get resultList;
  @override

  /// 发布人头像
  String? get publishUserAvatar;
  @override

  /// 发布人
  String? get publishUser;
  @override

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新人
  String? get updateUser;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskModelImplCopyWith<_$ChildtaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskResultModel _$ChildtaskResultModelFromJson(Map<String, dynamic> json) {
  return _ChildtaskResultModel.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskResultModel {
  int? get id => throw _privateConstructorUsedError;

  /// 任务编码
  String? get taskCode => throw _privateConstructorUsedError;

  /// 学号
  String get studentNo => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 家长姓名
  String get parentName => throw _privateConstructorUsedError;

  /// 家长头像
  String? get parentAvatar => throw _privateConstructorUsedError;

  /// 家长手机号
  String get parentPhone => throw _privateConstructorUsedError;

  /// 亲属关系
  @JsonKey(name: 'parentRelation')
  @RelationshipStringJsonConverter2()
  Relationship get relationship => throw _privateConstructorUsedError;

  /// 补充内容
  String get content => throw _privateConstructorUsedError;

  /// 是否完成
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  bool get isFinish => throw _privateConstructorUsedError;

  /// 资源列表
  @JsonKey(name: 'resourceList')
  List<ResourceModel> get resources => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskResultModelCopyWith<ChildtaskResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskResultModelCopyWith<$Res> {
  factory $ChildtaskResultModelCopyWith(ChildtaskResultModel value,
          $Res Function(ChildtaskResultModel) then) =
      _$ChildtaskResultModelCopyWithImpl<$Res, ChildtaskResultModel>;
  @useResult
  $Res call(
      {int? id,
      String? taskCode,
      String studentNo,
      String studentName,
      String parentName,
      String? parentAvatar,
      String parentPhone,
      @JsonKey(name: 'parentRelation')
      @RelationshipStringJsonConverter2()
      Relationship relationship,
      String content,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() bool isFinish,
      @JsonKey(name: 'resourceList') List<ResourceModel> resources,
      String remark,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$ChildtaskResultModelCopyWithImpl<$Res,
        $Val extends ChildtaskResultModel>
    implements $ChildtaskResultModelCopyWith<$Res> {
  _$ChildtaskResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskCode = freezed,
    Object? studentNo = null,
    Object? studentName = null,
    Object? parentName = null,
    Object? parentAvatar = freezed,
    Object? parentPhone = null,
    Object? relationship = null,
    Object? content = null,
    Object? isFinish = null,
    Object? resources = null,
    Object? remark = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCode: freezed == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNo: null == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFinish: null == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskResultModelImplCopyWith<$Res>
    implements $ChildtaskResultModelCopyWith<$Res> {
  factory _$$ChildtaskResultModelImplCopyWith(_$ChildtaskResultModelImpl value,
          $Res Function(_$ChildtaskResultModelImpl) then) =
      __$$ChildtaskResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? taskCode,
      String studentNo,
      String studentName,
      String parentName,
      String? parentAvatar,
      String parentPhone,
      @JsonKey(name: 'parentRelation')
      @RelationshipStringJsonConverter2()
      Relationship relationship,
      String content,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() bool isFinish,
      @JsonKey(name: 'resourceList') List<ResourceModel> resources,
      String remark,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$ChildtaskResultModelImplCopyWithImpl<$Res>
    extends _$ChildtaskResultModelCopyWithImpl<$Res, _$ChildtaskResultModelImpl>
    implements _$$ChildtaskResultModelImplCopyWith<$Res> {
  __$$ChildtaskResultModelImplCopyWithImpl(_$ChildtaskResultModelImpl _value,
      $Res Function(_$ChildtaskResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskCode = freezed,
    Object? studentNo = null,
    Object? studentName = null,
    Object? parentName = null,
    Object? parentAvatar = freezed,
    Object? parentPhone = null,
    Object? relationship = null,
    Object? content = null,
    Object? isFinish = null,
    Object? resources = null,
    Object? remark = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$ChildtaskResultModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCode: freezed == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNo: null == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFinish: null == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskResultModelImpl extends _ChildtaskResultModel {
  const _$ChildtaskResultModelImpl(
      {this.id,
      this.taskCode,
      this.studentNo = '',
      this.studentName = '',
      this.parentName = '',
      this.parentAvatar,
      this.parentPhone = '',
      @JsonKey(name: 'parentRelation')
      @RelationshipStringJsonConverter2()
      this.relationship = Relationship.other,
      this.content = '',
      @JsonKey(name: 'finishFlag')
      @Int2BoolJsonConverter()
      this.isFinish = false,
      @JsonKey(name: 'resourceList')
      final List<ResourceModel> resources = const [],
      this.remark = '',
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : _resources = resources,
        super._();

  factory _$ChildtaskResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskResultModelImplFromJson(json);

  @override
  final int? id;

  /// 任务编码
  @override
  final String? taskCode;

  /// 学号
  @override
  @JsonKey()
  final String studentNo;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 家长姓名
  @override
  @JsonKey()
  final String parentName;

  /// 家长头像
  @override
  final String? parentAvatar;

  /// 家长手机号
  @override
  @JsonKey()
  final String parentPhone;

  /// 亲属关系
  @override
  @JsonKey(name: 'parentRelation')
  @RelationshipStringJsonConverter2()
  final Relationship relationship;

  /// 补充内容
  @override
  @JsonKey()
  final String content;

  /// 是否完成
  @override
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  final bool isFinish;

  /// 资源列表
  final List<ResourceModel> _resources;

  /// 资源列表
  @override
  @JsonKey(name: 'resourceList')
  List<ResourceModel> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'ChildtaskResultModel(id: $id, taskCode: $taskCode, studentNo: $studentNo, studentName: $studentName, parentName: $parentName, parentAvatar: $parentAvatar, parentPhone: $parentPhone, relationship: $relationship, content: $content, isFinish: $isFinish, resources: $resources, remark: $remark, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskCode, taskCode) ||
                other.taskCode == taskCode) &&
            (identical(other.studentNo, studentNo) ||
                other.studentNo == studentNo) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.parentAvatar, parentAvatar) ||
                other.parentAvatar == parentAvatar) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isFinish, isFinish) ||
                other.isFinish == isFinish) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      taskCode,
      studentNo,
      studentName,
      parentName,
      parentAvatar,
      parentPhone,
      relationship,
      content,
      isFinish,
      const DeepCollectionEquality().hash(_resources),
      remark,
      createTime,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskResultModelImplCopyWith<_$ChildtaskResultModelImpl>
      get copyWith =>
          __$$ChildtaskResultModelImplCopyWithImpl<_$ChildtaskResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskResultModelImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskResultModel extends ChildtaskResultModel {
  const factory _ChildtaskResultModel(
      {final int? id,
      final String? taskCode,
      final String studentNo,
      final String studentName,
      final String parentName,
      final String? parentAvatar,
      final String parentPhone,
      @JsonKey(name: 'parentRelation')
      @RelationshipStringJsonConverter2()
      final Relationship relationship,
      final String content,
      @JsonKey(name: 'finishFlag') @Int2BoolJsonConverter() final bool isFinish,
      @JsonKey(name: 'resourceList') final List<ResourceModel> resources,
      final String remark,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$ChildtaskResultModelImpl;
  const _ChildtaskResultModel._() : super._();

  factory _ChildtaskResultModel.fromJson(Map<String, dynamic> json) =
      _$ChildtaskResultModelImpl.fromJson;

  @override
  int? get id;
  @override

  /// 任务编码
  String? get taskCode;
  @override

  /// 学号
  String get studentNo;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 家长姓名
  String get parentName;
  @override

  /// 家长头像
  String? get parentAvatar;
  @override

  /// 家长手机号
  String get parentPhone;
  @override

  /// 亲属关系
  @JsonKey(name: 'parentRelation')
  @RelationshipStringJsonConverter2()
  Relationship get relationship;
  @override

  /// 补充内容
  String get content;
  @override

  /// 是否完成
  @JsonKey(name: 'finishFlag')
  @Int2BoolJsonConverter()
  bool get isFinish;
  @override

  /// 资源列表
  @JsonKey(name: 'resourceList')
  List<ResourceModel> get resources;
  @override

  /// 备注
  String get remark;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskResultModelImplCopyWith<_$ChildtaskResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChildtaskkReq _$ChildtaskkReqFromJson(Map<String, dynamic> json) {
  return _ChildtaskkReq.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskkReq {
  /// 用户id
  int get userId => throw _privateConstructorUsedError;

  /// 学生编码
  String get studentNo => throw _privateConstructorUsedError;

  /// 学生姓名
  String? get studentName => throw _privateConstructorUsedError;

  /// 家长姓名
  String? get parentName => throw _privateConstructorUsedError;

  /// 家长头像
  String? get parentAvatar => throw _privateConstructorUsedError;

  /// 家长手机号
  String? get parentPhone => throw _privateConstructorUsedError;

  /// 家长关系
  int? get parentRelation => throw _privateConstructorUsedError;

  /// 任务编码
  String get taskCode => throw _privateConstructorUsedError;

  /// 补充内容
  String? get content => throw _privateConstructorUsedError;

  /// 资源文件地址(,分割)
  String? get resourceUrl => throw _privateConstructorUsedError;

  /// 是否完成
  int get finishFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskkReqCopyWith<ChildtaskkReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskkReqCopyWith<$Res> {
  factory $ChildtaskkReqCopyWith(
          ChildtaskkReq value, $Res Function(ChildtaskkReq) then) =
      _$ChildtaskkReqCopyWithImpl<$Res, ChildtaskkReq>;
  @useResult
  $Res call(
      {int userId,
      String studentNo,
      String? studentName,
      String? parentName,
      String? parentAvatar,
      String? parentPhone,
      int? parentRelation,
      String taskCode,
      String? content,
      String? resourceUrl,
      int finishFlag});
}

/// @nodoc
class _$ChildtaskkReqCopyWithImpl<$Res, $Val extends ChildtaskkReq>
    implements $ChildtaskkReqCopyWith<$Res> {
  _$ChildtaskkReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? studentNo = null,
    Object? studentName = freezed,
    Object? parentName = freezed,
    Object? parentAvatar = freezed,
    Object? parentPhone = freezed,
    Object? parentRelation = freezed,
    Object? taskCode = null,
    Object? content = freezed,
    Object? resourceUrl = freezed,
    Object? finishFlag = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      studentNo: null == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: freezed == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      parentRelation: freezed == parentRelation
          ? _value.parentRelation
          : parentRelation // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUrl: freezed == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      finishFlag: null == finishFlag
          ? _value.finishFlag
          : finishFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskkReqImplCopyWith<$Res>
    implements $ChildtaskkReqCopyWith<$Res> {
  factory _$$ChildtaskkReqImplCopyWith(
          _$ChildtaskkReqImpl value, $Res Function(_$ChildtaskkReqImpl) then) =
      __$$ChildtaskkReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String studentNo,
      String? studentName,
      String? parentName,
      String? parentAvatar,
      String? parentPhone,
      int? parentRelation,
      String taskCode,
      String? content,
      String? resourceUrl,
      int finishFlag});
}

/// @nodoc
class __$$ChildtaskkReqImplCopyWithImpl<$Res>
    extends _$ChildtaskkReqCopyWithImpl<$Res, _$ChildtaskkReqImpl>
    implements _$$ChildtaskkReqImplCopyWith<$Res> {
  __$$ChildtaskkReqImplCopyWithImpl(
      _$ChildtaskkReqImpl _value, $Res Function(_$ChildtaskkReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? studentNo = null,
    Object? studentName = freezed,
    Object? parentName = freezed,
    Object? parentAvatar = freezed,
    Object? parentPhone = freezed,
    Object? parentRelation = freezed,
    Object? taskCode = null,
    Object? content = freezed,
    Object? resourceUrl = freezed,
    Object? finishFlag = null,
  }) {
    return _then(_$ChildtaskkReqImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      studentNo: null == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: freezed == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      parentRelation: freezed == parentRelation
          ? _value.parentRelation
          : parentRelation // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUrl: freezed == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      finishFlag: null == finishFlag
          ? _value.finishFlag
          : finishFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskkReqImpl extends _ChildtaskkReq {
  const _$ChildtaskkReqImpl(
      {required this.userId,
      required this.studentNo,
      this.studentName,
      this.parentName,
      this.parentAvatar,
      this.parentPhone,
      this.parentRelation,
      required this.taskCode,
      this.content,
      this.resourceUrl,
      required this.finishFlag})
      : super._();

  factory _$ChildtaskkReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskkReqImplFromJson(json);

  /// 用户id
  @override
  final int userId;

  /// 学生编码
  @override
  final String studentNo;

  /// 学生姓名
  @override
  final String? studentName;

  /// 家长姓名
  @override
  final String? parentName;

  /// 家长头像
  @override
  final String? parentAvatar;

  /// 家长手机号
  @override
  final String? parentPhone;

  /// 家长关系
  @override
  final int? parentRelation;

  /// 任务编码
  @override
  final String taskCode;

  /// 补充内容
  @override
  final String? content;

  /// 资源文件地址(,分割)
  @override
  final String? resourceUrl;

  /// 是否完成
  @override
  final int finishFlag;

  @override
  String toString() {
    return 'ChildtaskkReq(userId: $userId, studentNo: $studentNo, studentName: $studentName, parentName: $parentName, parentAvatar: $parentAvatar, parentPhone: $parentPhone, parentRelation: $parentRelation, taskCode: $taskCode, content: $content, resourceUrl: $resourceUrl, finishFlag: $finishFlag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskkReqImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.studentNo, studentNo) ||
                other.studentNo == studentNo) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.parentAvatar, parentAvatar) ||
                other.parentAvatar == parentAvatar) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.parentRelation, parentRelation) ||
                other.parentRelation == parentRelation) &&
            (identical(other.taskCode, taskCode) ||
                other.taskCode == taskCode) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.resourceUrl, resourceUrl) ||
                other.resourceUrl == resourceUrl) &&
            (identical(other.finishFlag, finishFlag) ||
                other.finishFlag == finishFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      studentNo,
      studentName,
      parentName,
      parentAvatar,
      parentPhone,
      parentRelation,
      taskCode,
      content,
      resourceUrl,
      finishFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskkReqImplCopyWith<_$ChildtaskkReqImpl> get copyWith =>
      __$$ChildtaskkReqImplCopyWithImpl<_$ChildtaskkReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskkReqImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskkReq extends ChildtaskkReq {
  const factory _ChildtaskkReq(
      {required final int userId,
      required final String studentNo,
      final String? studentName,
      final String? parentName,
      final String? parentAvatar,
      final String? parentPhone,
      final int? parentRelation,
      required final String taskCode,
      final String? content,
      final String? resourceUrl,
      required final int finishFlag}) = _$ChildtaskkReqImpl;
  const _ChildtaskkReq._() : super._();

  factory _ChildtaskkReq.fromJson(Map<String, dynamic> json) =
      _$ChildtaskkReqImpl.fromJson;

  @override

  /// 用户id
  int get userId;
  @override

  /// 学生编码
  String get studentNo;
  @override

  /// 学生姓名
  String? get studentName;
  @override

  /// 家长姓名
  String? get parentName;
  @override

  /// 家长头像
  String? get parentAvatar;
  @override

  /// 家长手机号
  String? get parentPhone;
  @override

  /// 家长关系
  int? get parentRelation;
  @override

  /// 任务编码
  String get taskCode;
  @override

  /// 补充内容
  String? get content;
  @override

  /// 资源文件地址(,分割)
  String? get resourceUrl;
  @override

  /// 是否完成
  int get finishFlag;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskkReqImplCopyWith<_$ChildtaskkReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskkLikeModel _$ChildtaskkLikeModelFromJson(Map<String, dynamic> json) {
  return _ChildtaskkLikeModel.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskkLikeModel {
  int get id => throw _privateConstructorUsedError;

  /// 家长姓名
  String get parentName => throw _privateConstructorUsedError;

  /// 家长头像
  String? get parentAvatar => throw _privateConstructorUsedError;

  /// 家长手机号
  String get parentPhone => throw _privateConstructorUsedError;

  /// 亲属关系
  @RelationshipStringJsonConverter()
  Relationship get relationship => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskkLikeModelCopyWith<ChildtaskkLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskkLikeModelCopyWith<$Res> {
  factory $ChildtaskkLikeModelCopyWith(
          ChildtaskkLikeModel value, $Res Function(ChildtaskkLikeModel) then) =
      _$ChildtaskkLikeModelCopyWithImpl<$Res, ChildtaskkLikeModel>;
  @useResult
  $Res call(
      {int id,
      String parentName,
      String? parentAvatar,
      String parentPhone,
      @RelationshipStringJsonConverter() Relationship relationship});
}

/// @nodoc
class _$ChildtaskkLikeModelCopyWithImpl<$Res, $Val extends ChildtaskkLikeModel>
    implements $ChildtaskkLikeModelCopyWith<$Res> {
  _$ChildtaskkLikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentName = null,
    Object? parentAvatar = freezed,
    Object? parentPhone = null,
    Object? relationship = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskkLikeModelImplCopyWith<$Res>
    implements $ChildtaskkLikeModelCopyWith<$Res> {
  factory _$$ChildtaskkLikeModelImplCopyWith(_$ChildtaskkLikeModelImpl value,
          $Res Function(_$ChildtaskkLikeModelImpl) then) =
      __$$ChildtaskkLikeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String parentName,
      String? parentAvatar,
      String parentPhone,
      @RelationshipStringJsonConverter() Relationship relationship});
}

/// @nodoc
class __$$ChildtaskkLikeModelImplCopyWithImpl<$Res>
    extends _$ChildtaskkLikeModelCopyWithImpl<$Res, _$ChildtaskkLikeModelImpl>
    implements _$$ChildtaskkLikeModelImplCopyWith<$Res> {
  __$$ChildtaskkLikeModelImplCopyWithImpl(_$ChildtaskkLikeModelImpl _value,
      $Res Function(_$ChildtaskkLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentName = null,
    Object? parentAvatar = freezed,
    Object? parentPhone = null,
    Object? relationship = null,
  }) {
    return _then(_$ChildtaskkLikeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentAvatar: freezed == parentAvatar
          ? _value.parentAvatar
          : parentAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskkLikeModelImpl extends _ChildtaskkLikeModel {
  const _$ChildtaskkLikeModelImpl(
      {required this.id,
      this.parentName = '',
      this.parentAvatar,
      this.parentPhone = '',
      @RelationshipStringJsonConverter()
      this.relationship = Relationship.other})
      : super._();

  factory _$ChildtaskkLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskkLikeModelImplFromJson(json);

  @override
  final int id;

  /// 家长姓名
  @override
  @JsonKey()
  final String parentName;

  /// 家长头像
  @override
  final String? parentAvatar;

  /// 家长手机号
  @override
  @JsonKey()
  final String parentPhone;

  /// 亲属关系
  @override
  @JsonKey()
  @RelationshipStringJsonConverter()
  final Relationship relationship;

  @override
  String toString() {
    return 'ChildtaskkLikeModel(id: $id, parentName: $parentName, parentAvatar: $parentAvatar, parentPhone: $parentPhone, relationship: $relationship)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskkLikeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.parentAvatar, parentAvatar) ||
                other.parentAvatar == parentAvatar) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentName, parentAvatar, parentPhone, relationship);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskkLikeModelImplCopyWith<_$ChildtaskkLikeModelImpl> get copyWith =>
      __$$ChildtaskkLikeModelImplCopyWithImpl<_$ChildtaskkLikeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskkLikeModelImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskkLikeModel extends ChildtaskkLikeModel {
  const factory _ChildtaskkLikeModel(
          {required final int id,
          final String parentName,
          final String? parentAvatar,
          final String parentPhone,
          @RelationshipStringJsonConverter() final Relationship relationship}) =
      _$ChildtaskkLikeModelImpl;
  const _ChildtaskkLikeModel._() : super._();

  factory _ChildtaskkLikeModel.fromJson(Map<String, dynamic> json) =
      _$ChildtaskkLikeModelImpl.fromJson;

  @override
  int get id;
  @override

  /// 家长姓名
  String get parentName;
  @override

  /// 家长头像
  String? get parentAvatar;
  @override

  /// 家长手机号
  String get parentPhone;
  @override

  /// 亲属关系
  @RelationshipStringJsonConverter()
  Relationship get relationship;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskkLikeModelImplCopyWith<_$ChildtaskkLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskLikeReq _$ChildtaskLikeReqFromJson(Map<String, dynamic> json) {
  return _ChildtaskLikeReq.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskLikeReq {
  /// 登录用户id
  int get userId => throw _privateConstructorUsedError;

  /// 是否点赞
  @JsonKey(name: 'addOrRemoveFlag')
  bool get like => throw _privateConstructorUsedError;

  /// 同学进度id
  @JsonKey(name: 'taskCodeSubId')
  int get resultId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskLikeReqCopyWith<ChildtaskLikeReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskLikeReqCopyWith<$Res> {
  factory $ChildtaskLikeReqCopyWith(
          ChildtaskLikeReq value, $Res Function(ChildtaskLikeReq) then) =
      _$ChildtaskLikeReqCopyWithImpl<$Res, ChildtaskLikeReq>;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'addOrRemoveFlag') bool like,
      @JsonKey(name: 'taskCodeSubId') int resultId});
}

/// @nodoc
class _$ChildtaskLikeReqCopyWithImpl<$Res, $Val extends ChildtaskLikeReq>
    implements $ChildtaskLikeReqCopyWith<$Res> {
  _$ChildtaskLikeReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? like = null,
    Object? resultId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskLikeReqImplCopyWith<$Res>
    implements $ChildtaskLikeReqCopyWith<$Res> {
  factory _$$ChildtaskLikeReqImplCopyWith(_$ChildtaskLikeReqImpl value,
          $Res Function(_$ChildtaskLikeReqImpl) then) =
      __$$ChildtaskLikeReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'addOrRemoveFlag') bool like,
      @JsonKey(name: 'taskCodeSubId') int resultId});
}

/// @nodoc
class __$$ChildtaskLikeReqImplCopyWithImpl<$Res>
    extends _$ChildtaskLikeReqCopyWithImpl<$Res, _$ChildtaskLikeReqImpl>
    implements _$$ChildtaskLikeReqImplCopyWith<$Res> {
  __$$ChildtaskLikeReqImplCopyWithImpl(_$ChildtaskLikeReqImpl _value,
      $Res Function(_$ChildtaskLikeReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? like = null,
    Object? resultId = null,
  }) {
    return _then(_$ChildtaskLikeReqImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskLikeReqImpl extends _ChildtaskLikeReq {
  const _$ChildtaskLikeReqImpl(
      {required this.userId,
      @JsonKey(name: 'addOrRemoveFlag') required this.like,
      @JsonKey(name: 'taskCodeSubId') required this.resultId})
      : super._();

  factory _$ChildtaskLikeReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskLikeReqImplFromJson(json);

  /// 登录用户id
  @override
  final int userId;

  /// 是否点赞
  @override
  @JsonKey(name: 'addOrRemoveFlag')
  final bool like;

  /// 同学进度id
  @override
  @JsonKey(name: 'taskCodeSubId')
  final int resultId;

  @override
  String toString() {
    return 'ChildtaskLikeReq(userId: $userId, like: $like, resultId: $resultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskLikeReqImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, like, resultId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskLikeReqImplCopyWith<_$ChildtaskLikeReqImpl> get copyWith =>
      __$$ChildtaskLikeReqImplCopyWithImpl<_$ChildtaskLikeReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskLikeReqImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskLikeReq extends ChildtaskLikeReq {
  const factory _ChildtaskLikeReq(
          {required final int userId,
          @JsonKey(name: 'addOrRemoveFlag') required final bool like,
          @JsonKey(name: 'taskCodeSubId') required final int resultId}) =
      _$ChildtaskLikeReqImpl;
  const _ChildtaskLikeReq._() : super._();

  factory _ChildtaskLikeReq.fromJson(Map<String, dynamic> json) =
      _$ChildtaskLikeReqImpl.fromJson;

  @override

  /// 登录用户id
  int get userId;
  @override

  /// 是否点赞
  @JsonKey(name: 'addOrRemoveFlag')
  bool get like;
  @override

  /// 同学进度id
  @JsonKey(name: 'taskCodeSubId')
  int get resultId;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskLikeReqImplCopyWith<_$ChildtaskLikeReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskLikeModel _$ChildtaskLikeModelFromJson(Map<String, dynamic> json) {
  return _ChildtaskLikeModel.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskLikeModel {
  /// 当前用户是否点赞了当前亲自作业
  @JsonKey(name: 'curLikesFlag')
  bool get like => throw _privateConstructorUsedError;

  /// 同学进度id
  @JsonKey(name: 'taskCodeSubId')
  int get resultId => throw _privateConstructorUsedError;

  /// 亲子作业点赞数量
  @JsonKey(name: 'likesCount')
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskLikeModelCopyWith<ChildtaskLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskLikeModelCopyWith<$Res> {
  factory $ChildtaskLikeModelCopyWith(
          ChildtaskLikeModel value, $Res Function(ChildtaskLikeModel) then) =
      _$ChildtaskLikeModelCopyWithImpl<$Res, ChildtaskLikeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'curLikesFlag') bool like,
      @JsonKey(name: 'taskCodeSubId') int resultId,
      @JsonKey(name: 'likesCount') int count});
}

/// @nodoc
class _$ChildtaskLikeModelCopyWithImpl<$Res, $Val extends ChildtaskLikeModel>
    implements $ChildtaskLikeModelCopyWith<$Res> {
  _$ChildtaskLikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? resultId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskLikeModelImplCopyWith<$Res>
    implements $ChildtaskLikeModelCopyWith<$Res> {
  factory _$$ChildtaskLikeModelImplCopyWith(_$ChildtaskLikeModelImpl value,
          $Res Function(_$ChildtaskLikeModelImpl) then) =
      __$$ChildtaskLikeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'curLikesFlag') bool like,
      @JsonKey(name: 'taskCodeSubId') int resultId,
      @JsonKey(name: 'likesCount') int count});
}

/// @nodoc
class __$$ChildtaskLikeModelImplCopyWithImpl<$Res>
    extends _$ChildtaskLikeModelCopyWithImpl<$Res, _$ChildtaskLikeModelImpl>
    implements _$$ChildtaskLikeModelImplCopyWith<$Res> {
  __$$ChildtaskLikeModelImplCopyWithImpl(_$ChildtaskLikeModelImpl _value,
      $Res Function(_$ChildtaskLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? resultId = null,
    Object? count = null,
  }) {
    return _then(_$ChildtaskLikeModelImpl(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskLikeModelImpl extends _ChildtaskLikeModel {
  const _$ChildtaskLikeModelImpl(
      {@JsonKey(name: 'curLikesFlag') required this.like,
      @JsonKey(name: 'taskCodeSubId') required this.resultId,
      @JsonKey(name: 'likesCount') this.count = 0})
      : super._();

  factory _$ChildtaskLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskLikeModelImplFromJson(json);

  /// 当前用户是否点赞了当前亲自作业
  @override
  @JsonKey(name: 'curLikesFlag')
  final bool like;

  /// 同学进度id
  @override
  @JsonKey(name: 'taskCodeSubId')
  final int resultId;

  /// 亲子作业点赞数量
  @override
  @JsonKey(name: 'likesCount')
  final int count;

  @override
  String toString() {
    return 'ChildtaskLikeModel(like: $like, resultId: $resultId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskLikeModelImpl &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, like, resultId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskLikeModelImplCopyWith<_$ChildtaskLikeModelImpl> get copyWith =>
      __$$ChildtaskLikeModelImplCopyWithImpl<_$ChildtaskLikeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskLikeModelImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskLikeModel extends ChildtaskLikeModel {
  const factory _ChildtaskLikeModel(
      {@JsonKey(name: 'curLikesFlag') required final bool like,
      @JsonKey(name: 'taskCodeSubId') required final int resultId,
      @JsonKey(name: 'likesCount') final int count}) = _$ChildtaskLikeModelImpl;
  const _ChildtaskLikeModel._() : super._();

  factory _ChildtaskLikeModel.fromJson(Map<String, dynamic> json) =
      _$ChildtaskLikeModelImpl.fromJson;

  @override

  /// 当前用户是否点赞了当前亲自作业
  @JsonKey(name: 'curLikesFlag')
  bool get like;
  @override

  /// 同学进度id
  @JsonKey(name: 'taskCodeSubId')
  int get resultId;
  @override

  /// 亲子作业点赞数量
  @JsonKey(name: 'likesCount')
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskLikeModelImplCopyWith<_$ChildtaskLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildtaskOtherParam _$ChildtaskOtherParamFromJson(Map<String, dynamic> json) {
  return _ChildtaskOtherParam.fromJson(json);
}

/// @nodoc
mixin _$ChildtaskOtherParam {
  /// 亲子任务编码
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildtaskOtherParamCopyWith<ChildtaskOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildtaskOtherParamCopyWith<$Res> {
  factory $ChildtaskOtherParamCopyWith(
          ChildtaskOtherParam value, $Res Function(ChildtaskOtherParam) then) =
      _$ChildtaskOtherParamCopyWithImpl<$Res, ChildtaskOtherParam>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ChildtaskOtherParamCopyWithImpl<$Res, $Val extends ChildtaskOtherParam>
    implements $ChildtaskOtherParamCopyWith<$Res> {
  _$ChildtaskOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildtaskOtherParamImplCopyWith<$Res>
    implements $ChildtaskOtherParamCopyWith<$Res> {
  factory _$$ChildtaskOtherParamImplCopyWith(_$ChildtaskOtherParamImpl value,
          $Res Function(_$ChildtaskOtherParamImpl) then) =
      __$$ChildtaskOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ChildtaskOtherParamImplCopyWithImpl<$Res>
    extends _$ChildtaskOtherParamCopyWithImpl<$Res, _$ChildtaskOtherParamImpl>
    implements _$$ChildtaskOtherParamImplCopyWith<$Res> {
  __$$ChildtaskOtherParamImplCopyWithImpl(_$ChildtaskOtherParamImpl _value,
      $Res Function(_$ChildtaskOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ChildtaskOtherParamImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildtaskOtherParamImpl extends _ChildtaskOtherParam {
  const _$ChildtaskOtherParamImpl({this.code = ''}) : super._();

  factory _$ChildtaskOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildtaskOtherParamImplFromJson(json);

  /// 亲子任务编码
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'ChildtaskOtherParam(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildtaskOtherParamImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildtaskOtherParamImplCopyWith<_$ChildtaskOtherParamImpl> get copyWith =>
      __$$ChildtaskOtherParamImplCopyWithImpl<_$ChildtaskOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildtaskOtherParamImplToJson(
      this,
    );
  }
}

abstract class _ChildtaskOtherParam extends ChildtaskOtherParam {
  const factory _ChildtaskOtherParam({final String code}) =
      _$ChildtaskOtherParamImpl;
  const _ChildtaskOtherParam._() : super._();

  factory _ChildtaskOtherParam.fromJson(Map<String, dynamic> json) =
      _$ChildtaskOtherParamImpl.fromJson;

  @override

  /// 亲子任务编码
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ChildtaskOtherParamImplCopyWith<_$ChildtaskOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
