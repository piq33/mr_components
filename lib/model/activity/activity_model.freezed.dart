// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityReq _$ActivityReqFromJson(Map<String, dynamic> json) {
  return _ActivityReq.fromJson(json);
}

/// @nodoc
mixin _$ActivityReq {
// 1.查询所有活动  2.只查所在区域活动
  int get queryType => throw _privateConstructorUsedError;
  List<String> get schoolCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityReqCopyWith<ActivityReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReqCopyWith<$Res> {
  factory $ActivityReqCopyWith(
          ActivityReq value, $Res Function(ActivityReq) then) =
      _$ActivityReqCopyWithImpl<$Res, ActivityReq>;
  @useResult
  $Res call({int queryType, List<String> schoolCodes});
}

/// @nodoc
class _$ActivityReqCopyWithImpl<$Res, $Val extends ActivityReq>
    implements $ActivityReqCopyWith<$Res> {
  _$ActivityReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryType = null,
    Object? schoolCodes = null,
  }) {
    return _then(_value.copyWith(
      queryType: null == queryType
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as int,
      schoolCodes: null == schoolCodes
          ? _value.schoolCodes
          : schoolCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityReqImplCopyWith<$Res>
    implements $ActivityReqCopyWith<$Res> {
  factory _$$ActivityReqImplCopyWith(
          _$ActivityReqImpl value, $Res Function(_$ActivityReqImpl) then) =
      __$$ActivityReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int queryType, List<String> schoolCodes});
}

/// @nodoc
class __$$ActivityReqImplCopyWithImpl<$Res>
    extends _$ActivityReqCopyWithImpl<$Res, _$ActivityReqImpl>
    implements _$$ActivityReqImplCopyWith<$Res> {
  __$$ActivityReqImplCopyWithImpl(
      _$ActivityReqImpl _value, $Res Function(_$ActivityReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryType = null,
    Object? schoolCodes = null,
  }) {
    return _then(_$ActivityReqImpl(
      queryType: null == queryType
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as int,
      schoolCodes: null == schoolCodes
          ? _value._schoolCodes
          : schoolCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityReqImpl extends _ActivityReq {
  const _$ActivityReqImpl(
      {required this.queryType, required final List<String> schoolCodes})
      : _schoolCodes = schoolCodes,
        super._();

  factory _$ActivityReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityReqImplFromJson(json);

// 1.查询所有活动  2.只查所在区域活动
  @override
  final int queryType;
  final List<String> _schoolCodes;
  @override
  List<String> get schoolCodes {
    if (_schoolCodes is EqualUnmodifiableListView) return _schoolCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schoolCodes);
  }

  @override
  String toString() {
    return 'ActivityReq(queryType: $queryType, schoolCodes: $schoolCodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityReqImpl &&
            (identical(other.queryType, queryType) ||
                other.queryType == queryType) &&
            const DeepCollectionEquality()
                .equals(other._schoolCodes, _schoolCodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queryType,
      const DeepCollectionEquality().hash(_schoolCodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityReqImplCopyWith<_$ActivityReqImpl> get copyWith =>
      __$$ActivityReqImplCopyWithImpl<_$ActivityReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityReqImplToJson(
      this,
    );
  }
}

abstract class _ActivityReq extends ActivityReq {
  const factory _ActivityReq(
      {required final int queryType,
      required final List<String> schoolCodes}) = _$ActivityReqImpl;
  const _ActivityReq._() : super._();

  factory _ActivityReq.fromJson(Map<String, dynamic> json) =
      _$ActivityReqImpl.fromJson;

  @override // 1.查询所有活动  2.只查所在区域活动
  int get queryType;
  @override
  List<String> get schoolCodes;
  @override
  @JsonKey(ignore: true)
  _$$ActivityReqImplCopyWith<_$ActivityReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  /// 活动报名id
  @JsonKey(name: 'activityApplyId')
  @String2IntJsonConverter()
  int? get applyId => throw _privateConstructorUsedError;

  /// 活动id
  @JsonKey(name: 'activityId')
  @String2IntJsonConverter()
  int get id => throw _privateConstructorUsedError;

  /// 活动名称
  @JsonKey(name: 'activityName')
  String get name => throw _privateConstructorUsedError;

  /// 学校id
  @String2IntJsonConverter()
  int get schoolId => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 学校名称
  String get schoolName => throw _privateConstructorUsedError;

  /// 学校英文名称
  String get schoolEngName => throw _privateConstructorUsedError;

  /// 活动状态
  @ActivityStatusJsonConverter()
  ActivityStatus get status => throw _privateConstructorUsedError;

  /// 报名状态
  @ApplyStatusJsonConverter()
  ApplyStatus get applyStatus => throw _privateConstructorUsedError;

  /// 参加人数
  @String2IntJsonConverter()
  int get applyCount => throw _privateConstructorUsedError;

  /// 活动开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get activityStartDate => throw _privateConstructorUsedError;

  /// 活动结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get activityEndDate => throw _privateConstructorUsedError;

  /// 活动报名开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get applyStartDate => throw _privateConstructorUsedError;

  /// 活动报名结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get applyEndDate => throw _privateConstructorUsedError;

  /// 活动宣传图
  @JsonKey(name: 'pictureAddress')
  String? get cover => throw _privateConstructorUsedError;

  /// 活动链接
  @JsonKey(name: 'activityLink')
  String? get link => throw _privateConstructorUsedError;

  /// 默认值“活动”
  String? get tag => throw _privateConstructorUsedError;

  /// 活动内容
  @JsonKey(name: 'activityContent')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'activityApplyId')
      @String2IntJsonConverter()
      int? applyId,
      @JsonKey(name: 'activityId') @String2IntJsonConverter() int id,
      @JsonKey(name: 'activityName') String name,
      @String2IntJsonConverter() int schoolId,
      String? schoolCode,
      String schoolName,
      String schoolEngName,
      @ActivityStatusJsonConverter() ActivityStatus status,
      @ApplyStatusJsonConverter() ApplyStatus applyStatus,
      @String2IntJsonConverter() int applyCount,
      @TimestampStringNullableJsonConverter() DateTime? activityStartDate,
      @TimestampStringNullableJsonConverter() DateTime? activityEndDate,
      @TimestampStringNullableJsonConverter() DateTime? applyStartDate,
      @TimestampStringNullableJsonConverter() DateTime? applyEndDate,
      @JsonKey(name: 'pictureAddress') String? cover,
      @JsonKey(name: 'activityLink') String? link,
      String? tag,
      @JsonKey(name: 'activityContent') String content});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyId = freezed,
    Object? id = null,
    Object? name = null,
    Object? schoolId = null,
    Object? schoolCode = freezed,
    Object? schoolName = null,
    Object? schoolEngName = null,
    Object? status = null,
    Object? applyStatus = null,
    Object? applyCount = null,
    Object? activityStartDate = freezed,
    Object? activityEndDate = freezed,
    Object? applyStartDate = freezed,
    Object? applyEndDate = freezed,
    Object? cover = freezed,
    Object? link = freezed,
    Object? tag = freezed,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      applyId: freezed == applyId
          ? _value.applyId
          : applyId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolEngName: null == schoolEngName
          ? _value.schoolEngName
          : schoolEngName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      applyStatus: null == applyStatus
          ? _value.applyStatus
          : applyStatus // ignore: cast_nullable_to_non_nullable
              as ApplyStatus,
      applyCount: null == applyCount
          ? _value.applyCount
          : applyCount // ignore: cast_nullable_to_non_nullable
              as int,
      activityStartDate: freezed == activityStartDate
          ? _value.activityStartDate
          : activityStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityEndDate: freezed == activityEndDate
          ? _value.activityEndDate
          : activityEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      applyStartDate: freezed == applyStartDate
          ? _value.applyStartDate
          : applyStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      applyEndDate: freezed == applyEndDate
          ? _value.applyEndDate
          : applyEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityModelImplCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$ActivityModelImplCopyWith(
          _$ActivityModelImpl value, $Res Function(_$ActivityModelImpl) then) =
      __$$ActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'activityApplyId')
      @String2IntJsonConverter()
      int? applyId,
      @JsonKey(name: 'activityId') @String2IntJsonConverter() int id,
      @JsonKey(name: 'activityName') String name,
      @String2IntJsonConverter() int schoolId,
      String? schoolCode,
      String schoolName,
      String schoolEngName,
      @ActivityStatusJsonConverter() ActivityStatus status,
      @ApplyStatusJsonConverter() ApplyStatus applyStatus,
      @String2IntJsonConverter() int applyCount,
      @TimestampStringNullableJsonConverter() DateTime? activityStartDate,
      @TimestampStringNullableJsonConverter() DateTime? activityEndDate,
      @TimestampStringNullableJsonConverter() DateTime? applyStartDate,
      @TimestampStringNullableJsonConverter() DateTime? applyEndDate,
      @JsonKey(name: 'pictureAddress') String? cover,
      @JsonKey(name: 'activityLink') String? link,
      String? tag,
      @JsonKey(name: 'activityContent') String content});
}

/// @nodoc
class __$$ActivityModelImplCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res, _$ActivityModelImpl>
    implements _$$ActivityModelImplCopyWith<$Res> {
  __$$ActivityModelImplCopyWithImpl(
      _$ActivityModelImpl _value, $Res Function(_$ActivityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyId = freezed,
    Object? id = null,
    Object? name = null,
    Object? schoolId = null,
    Object? schoolCode = freezed,
    Object? schoolName = null,
    Object? schoolEngName = null,
    Object? status = null,
    Object? applyStatus = null,
    Object? applyCount = null,
    Object? activityStartDate = freezed,
    Object? activityEndDate = freezed,
    Object? applyStartDate = freezed,
    Object? applyEndDate = freezed,
    Object? cover = freezed,
    Object? link = freezed,
    Object? tag = freezed,
    Object? content = null,
  }) {
    return _then(_$ActivityModelImpl(
      applyId: freezed == applyId
          ? _value.applyId
          : applyId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolEngName: null == schoolEngName
          ? _value.schoolEngName
          : schoolEngName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      applyStatus: null == applyStatus
          ? _value.applyStatus
          : applyStatus // ignore: cast_nullable_to_non_nullable
              as ApplyStatus,
      applyCount: null == applyCount
          ? _value.applyCount
          : applyCount // ignore: cast_nullable_to_non_nullable
              as int,
      activityStartDate: freezed == activityStartDate
          ? _value.activityStartDate
          : activityStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityEndDate: freezed == activityEndDate
          ? _value.activityEndDate
          : activityEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      applyStartDate: freezed == applyStartDate
          ? _value.applyStartDate
          : applyStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      applyEndDate: freezed == applyEndDate
          ? _value.applyEndDate
          : applyEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityModelImpl extends _ActivityModel {
  const _$ActivityModelImpl(
      {@JsonKey(name: 'activityApplyId')
      @String2IntJsonConverter()
      this.applyId,
      @JsonKey(name: 'activityId') @String2IntJsonConverter() required this.id,
      @JsonKey(name: 'activityName') this.name = '',
      @String2IntJsonConverter() required this.schoolId,
      this.schoolCode,
      this.schoolName = '',
      this.schoolEngName = '',
      @ActivityStatusJsonConverter() this.status = ActivityStatus.unknown,
      @ApplyStatusJsonConverter() this.applyStatus = ApplyStatus.unknown,
      @String2IntJsonConverter() this.applyCount = 0,
      @TimestampStringNullableJsonConverter() this.activityStartDate,
      @TimestampStringNullableJsonConverter() this.activityEndDate,
      @TimestampStringNullableJsonConverter() this.applyStartDate,
      @TimestampStringNullableJsonConverter() this.applyEndDate,
      @JsonKey(name: 'pictureAddress') this.cover,
      @JsonKey(name: 'activityLink') this.link,
      this.tag,
      @JsonKey(name: 'activityContent') this.content = ''})
      : super._();

  factory _$ActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityModelImplFromJson(json);

  /// 活动报名id
  @override
  @JsonKey(name: 'activityApplyId')
  @String2IntJsonConverter()
  final int? applyId;

  /// 活动id
  @override
  @JsonKey(name: 'activityId')
  @String2IntJsonConverter()
  final int id;

  /// 活动名称
  @override
  @JsonKey(name: 'activityName')
  final String name;

  /// 学校id
  @override
  @String2IntJsonConverter()
  final int schoolId;

  /// 学校编码
  @override
  final String? schoolCode;

  /// 学校名称
  @override
  @JsonKey()
  final String schoolName;

  /// 学校英文名称
  @override
  @JsonKey()
  final String schoolEngName;

  /// 活动状态
  @override
  @JsonKey()
  @ActivityStatusJsonConverter()
  final ActivityStatus status;

  /// 报名状态
  @override
  @JsonKey()
  @ApplyStatusJsonConverter()
  final ApplyStatus applyStatus;

  /// 参加人数
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int applyCount;

  /// 活动开始日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? activityStartDate;

  /// 活动结束日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? activityEndDate;

  /// 活动报名开始日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? applyStartDate;

  /// 活动报名结束日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? applyEndDate;

  /// 活动宣传图
  @override
  @JsonKey(name: 'pictureAddress')
  final String? cover;

  /// 活动链接
  @override
  @JsonKey(name: 'activityLink')
  final String? link;

  /// 默认值“活动”
  @override
  final String? tag;

  /// 活动内容
  @override
  @JsonKey(name: 'activityContent')
  final String content;

  @override
  String toString() {
    return 'ActivityModel(applyId: $applyId, id: $id, name: $name, schoolId: $schoolId, schoolCode: $schoolCode, schoolName: $schoolName, schoolEngName: $schoolEngName, status: $status, applyStatus: $applyStatus, applyCount: $applyCount, activityStartDate: $activityStartDate, activityEndDate: $activityEndDate, applyStartDate: $applyStartDate, applyEndDate: $applyEndDate, cover: $cover, link: $link, tag: $tag, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityModelImpl &&
            (identical(other.applyId, applyId) || other.applyId == applyId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolEngName, schoolEngName) ||
                other.schoolEngName == schoolEngName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applyStatus, applyStatus) ||
                other.applyStatus == applyStatus) &&
            (identical(other.applyCount, applyCount) ||
                other.applyCount == applyCount) &&
            (identical(other.activityStartDate, activityStartDate) ||
                other.activityStartDate == activityStartDate) &&
            (identical(other.activityEndDate, activityEndDate) ||
                other.activityEndDate == activityEndDate) &&
            (identical(other.applyStartDate, applyStartDate) ||
                other.applyStartDate == applyStartDate) &&
            (identical(other.applyEndDate, applyEndDate) ||
                other.applyEndDate == applyEndDate) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      applyId,
      id,
      name,
      schoolId,
      schoolCode,
      schoolName,
      schoolEngName,
      status,
      applyStatus,
      applyCount,
      activityStartDate,
      activityEndDate,
      applyStartDate,
      applyEndDate,
      cover,
      link,
      tag,
      content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      __$$ActivityModelImplCopyWithImpl<_$ActivityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityModel extends ActivityModel {
  const factory _ActivityModel(
      {@JsonKey(name: 'activityApplyId')
      @String2IntJsonConverter()
      final int? applyId,
      @JsonKey(name: 'activityId')
      @String2IntJsonConverter()
      required final int id,
      @JsonKey(name: 'activityName') final String name,
      @String2IntJsonConverter() required final int schoolId,
      final String? schoolCode,
      final String schoolName,
      final String schoolEngName,
      @ActivityStatusJsonConverter() final ActivityStatus status,
      @ApplyStatusJsonConverter() final ApplyStatus applyStatus,
      @String2IntJsonConverter() final int applyCount,
      @TimestampStringNullableJsonConverter() final DateTime? activityStartDate,
      @TimestampStringNullableJsonConverter() final DateTime? activityEndDate,
      @TimestampStringNullableJsonConverter() final DateTime? applyStartDate,
      @TimestampStringNullableJsonConverter() final DateTime? applyEndDate,
      @JsonKey(name: 'pictureAddress') final String? cover,
      @JsonKey(name: 'activityLink') final String? link,
      final String? tag,
      @JsonKey(name: 'activityContent')
      final String content}) = _$ActivityModelImpl;
  const _ActivityModel._() : super._();

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$ActivityModelImpl.fromJson;

  @override

  /// 活动报名id
  @JsonKey(name: 'activityApplyId')
  @String2IntJsonConverter()
  int? get applyId;
  @override

  /// 活动id
  @JsonKey(name: 'activityId')
  @String2IntJsonConverter()
  int get id;
  @override

  /// 活动名称
  @JsonKey(name: 'activityName')
  String get name;
  @override

  /// 学校id
  @String2IntJsonConverter()
  int get schoolId;
  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 学校名称
  String get schoolName;
  @override

  /// 学校英文名称
  String get schoolEngName;
  @override

  /// 活动状态
  @ActivityStatusJsonConverter()
  ActivityStatus get status;
  @override

  /// 报名状态
  @ApplyStatusJsonConverter()
  ApplyStatus get applyStatus;
  @override

  /// 参加人数
  @String2IntJsonConverter()
  int get applyCount;
  @override

  /// 活动开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get activityStartDate;
  @override

  /// 活动结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get activityEndDate;
  @override

  /// 活动报名开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get applyStartDate;
  @override

  /// 活动报名结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get applyEndDate;
  @override

  /// 活动宣传图
  @JsonKey(name: 'pictureAddress')
  String? get cover;
  @override

  /// 活动链接
  @JsonKey(name: 'activityLink')
  String? get link;
  @override

  /// 默认值“活动”
  String? get tag;
  @override

  /// 活动内容
  @JsonKey(name: 'activityContent')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignActivityQrCodeModel _$SignActivityQrCodeModelFromJson(
    Map<String, dynamic> json) {
  return _SignActivityQrCodeModel.fromJson(json);
}

/// @nodoc
mixin _$SignActivityQrCodeModel {
  /// 活动报名id
  String get activityApplyId => throw _privateConstructorUsedError;

  /// 活动tag
  String get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignActivityQrCodeModelCopyWith<SignActivityQrCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignActivityQrCodeModelCopyWith<$Res> {
  factory $SignActivityQrCodeModelCopyWith(SignActivityQrCodeModel value,
          $Res Function(SignActivityQrCodeModel) then) =
      _$SignActivityQrCodeModelCopyWithImpl<$Res, SignActivityQrCodeModel>;
  @useResult
  $Res call({String activityApplyId, String tag});
}

/// @nodoc
class _$SignActivityQrCodeModelCopyWithImpl<$Res,
        $Val extends SignActivityQrCodeModel>
    implements $SignActivityQrCodeModelCopyWith<$Res> {
  _$SignActivityQrCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityApplyId = null,
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      activityApplyId: null == activityApplyId
          ? _value.activityApplyId
          : activityApplyId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignActivityQrCodeModelImplCopyWith<$Res>
    implements $SignActivityQrCodeModelCopyWith<$Res> {
  factory _$$SignActivityQrCodeModelImplCopyWith(
          _$SignActivityQrCodeModelImpl value,
          $Res Function(_$SignActivityQrCodeModelImpl) then) =
      __$$SignActivityQrCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String activityApplyId, String tag});
}

/// @nodoc
class __$$SignActivityQrCodeModelImplCopyWithImpl<$Res>
    extends _$SignActivityQrCodeModelCopyWithImpl<$Res,
        _$SignActivityQrCodeModelImpl>
    implements _$$SignActivityQrCodeModelImplCopyWith<$Res> {
  __$$SignActivityQrCodeModelImplCopyWithImpl(
      _$SignActivityQrCodeModelImpl _value,
      $Res Function(_$SignActivityQrCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityApplyId = null,
    Object? tag = null,
  }) {
    return _then(_$SignActivityQrCodeModelImpl(
      activityApplyId: null == activityApplyId
          ? _value.activityApplyId
          : activityApplyId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignActivityQrCodeModelImpl extends _SignActivityQrCodeModel {
  const _$SignActivityQrCodeModelImpl(
      {required this.activityApplyId, required this.tag})
      : super._();

  factory _$SignActivityQrCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignActivityQrCodeModelImplFromJson(json);

  /// 活动报名id
  @override
  final String activityApplyId;

  /// 活动tag
  @override
  final String tag;

  @override
  String toString() {
    return 'SignActivityQrCodeModel(activityApplyId: $activityApplyId, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignActivityQrCodeModelImpl &&
            (identical(other.activityApplyId, activityApplyId) ||
                other.activityApplyId == activityApplyId) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityApplyId, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignActivityQrCodeModelImplCopyWith<_$SignActivityQrCodeModelImpl>
      get copyWith => __$$SignActivityQrCodeModelImplCopyWithImpl<
          _$SignActivityQrCodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignActivityQrCodeModelImplToJson(
      this,
    );
  }
}

abstract class _SignActivityQrCodeModel extends SignActivityQrCodeModel {
  const factory _SignActivityQrCodeModel(
      {required final String activityApplyId,
      required final String tag}) = _$SignActivityQrCodeModelImpl;
  const _SignActivityQrCodeModel._() : super._();

  factory _SignActivityQrCodeModel.fromJson(Map<String, dynamic> json) =
      _$SignActivityQrCodeModelImpl.fromJson;

  @override

  /// 活动报名id
  String get activityApplyId;
  @override

  /// 活动tag
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$$SignActivityQrCodeModelImplCopyWith<_$SignActivityQrCodeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
