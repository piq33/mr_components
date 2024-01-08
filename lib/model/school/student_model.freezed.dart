// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelationshipModel _$RelationshipModelFromJson(Map<String, dynamic> json) {
  return _RelationshipModel.fromJson(json);
}

/// @nodoc
mixin _$RelationshipModel {
  /// 关系id
  @JsonKey(name: 'dictId')
  int get id => throw _privateConstructorUsedError;

  /// 关系编码
  @JsonKey(name: 'dictCode')
  int get code => throw _privateConstructorUsedError;

  /// 中文名称
  @JsonKey(name: 'dictValue')
  String get value => throw _privateConstructorUsedError;

  /// 英文名称
  @JsonKey(name: 'dictEngValue')
  String get engValue => throw _privateConstructorUsedError;

  /// 排序
  @String2IntJsonConverter()
  int get seq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationshipModelCopyWith<RelationshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipModelCopyWith<$Res> {
  factory $RelationshipModelCopyWith(
          RelationshipModel value, $Res Function(RelationshipModel) then) =
      _$RelationshipModelCopyWithImpl<$Res, RelationshipModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dictId') int id,
      @JsonKey(name: 'dictCode') int code,
      @JsonKey(name: 'dictValue') String value,
      @JsonKey(name: 'dictEngValue') String engValue,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class _$RelationshipModelCopyWithImpl<$Res, $Val extends RelationshipModel>
    implements $RelationshipModelCopyWith<$Res> {
  _$RelationshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? value = null,
    Object? engValue = null,
    Object? seq = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      engValue: null == engValue
          ? _value.engValue
          : engValue // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationshipModelImplCopyWith<$Res>
    implements $RelationshipModelCopyWith<$Res> {
  factory _$$RelationshipModelImplCopyWith(_$RelationshipModelImpl value,
          $Res Function(_$RelationshipModelImpl) then) =
      __$$RelationshipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dictId') int id,
      @JsonKey(name: 'dictCode') int code,
      @JsonKey(name: 'dictValue') String value,
      @JsonKey(name: 'dictEngValue') String engValue,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class __$$RelationshipModelImplCopyWithImpl<$Res>
    extends _$RelationshipModelCopyWithImpl<$Res, _$RelationshipModelImpl>
    implements _$$RelationshipModelImplCopyWith<$Res> {
  __$$RelationshipModelImplCopyWithImpl(_$RelationshipModelImpl _value,
      $Res Function(_$RelationshipModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? value = null,
    Object? engValue = null,
    Object? seq = null,
  }) {
    return _then(_$RelationshipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      engValue: null == engValue
          ? _value.engValue
          : engValue // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationshipModelImpl extends _RelationshipModel {
  const _$RelationshipModelImpl(
      {@JsonKey(name: 'dictId') required this.id,
      @JsonKey(name: 'dictCode') required this.code,
      @JsonKey(name: 'dictValue') this.value = '',
      @JsonKey(name: 'dictEngValue') this.engValue = '',
      @String2IntJsonConverter() required this.seq})
      : super._();

  factory _$RelationshipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationshipModelImplFromJson(json);

  /// 关系id
  @override
  @JsonKey(name: 'dictId')
  final int id;

  /// 关系编码
  @override
  @JsonKey(name: 'dictCode')
  final int code;

  /// 中文名称
  @override
  @JsonKey(name: 'dictValue')
  final String value;

  /// 英文名称
  @override
  @JsonKey(name: 'dictEngValue')
  final String engValue;

  /// 排序
  @override
  @String2IntJsonConverter()
  final int seq;

  @override
  String toString() {
    return 'RelationshipModel(id: $id, code: $code, value: $value, engValue: $engValue, seq: $seq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationshipModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.engValue, engValue) ||
                other.engValue == engValue) &&
            (identical(other.seq, seq) || other.seq == seq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, value, engValue, seq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationshipModelImplCopyWith<_$RelationshipModelImpl> get copyWith =>
      __$$RelationshipModelImplCopyWithImpl<_$RelationshipModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationshipModelImplToJson(
      this,
    );
  }
}

abstract class _RelationshipModel extends RelationshipModel {
  const factory _RelationshipModel(
          {@JsonKey(name: 'dictId') required final int id,
          @JsonKey(name: 'dictCode') required final int code,
          @JsonKey(name: 'dictValue') final String value,
          @JsonKey(name: 'dictEngValue') final String engValue,
          @String2IntJsonConverter() required final int seq}) =
      _$RelationshipModelImpl;
  const _RelationshipModel._() : super._();

  factory _RelationshipModel.fromJson(Map<String, dynamic> json) =
      _$RelationshipModelImpl.fromJson;

  @override

  /// 关系id
  @JsonKey(name: 'dictId')
  int get id;
  @override

  /// 关系编码
  @JsonKey(name: 'dictCode')
  int get code;
  @override

  /// 中文名称
  @JsonKey(name: 'dictValue')
  String get value;
  @override

  /// 英文名称
  @JsonKey(name: 'dictEngValue')
  String get engValue;
  @override

  /// 排序
  @String2IntJsonConverter()
  int get seq;
  @override
  @JsonKey(ignore: true)
  _$$RelationshipModelImplCopyWith<_$RelationshipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyMemberModel _$FamilyMemberModelFromJson(Map<String, dynamic> json) {
  return _FamilyMemberModel.fromJson(json);
}

/// @nodoc
mixin _$FamilyMemberModel {
  /// 手机号码
  @JsonKey(name: 'parentPhone')
  String get phone => throw _privateConstructorUsedError;

  /// 名称
  @JsonKey(name: 'parentName')
  String get name => throw _privateConstructorUsedError;

  /// 亲属关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship => throw _privateConstructorUsedError;

  /// 亲属关系描述
  @JsonKey(name: 'familyRelationDesc')
  String get relationDesc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyMemberModelCopyWith<FamilyMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMemberModelCopyWith<$Res> {
  factory $FamilyMemberModelCopyWith(
          FamilyMemberModel value, $Res Function(FamilyMemberModel) then) =
      _$FamilyMemberModelCopyWithImpl<$Res, FamilyMemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'parentPhone') String phone,
      @JsonKey(name: 'parentName') String name,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'familyRelationDesc') String relationDesc});
}

/// @nodoc
class _$FamilyMemberModelCopyWithImpl<$Res, $Val extends FamilyMemberModel>
    implements $FamilyMemberModelCopyWith<$Res> {
  _$FamilyMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? relationship = null,
    Object? relationDesc = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      relationDesc: null == relationDesc
          ? _value.relationDesc
          : relationDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyMemberModelImplCopyWith<$Res>
    implements $FamilyMemberModelCopyWith<$Res> {
  factory _$$FamilyMemberModelImplCopyWith(_$FamilyMemberModelImpl value,
          $Res Function(_$FamilyMemberModelImpl) then) =
      __$$FamilyMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'parentPhone') String phone,
      @JsonKey(name: 'parentName') String name,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'familyRelationDesc') String relationDesc});
}

/// @nodoc
class __$$FamilyMemberModelImplCopyWithImpl<$Res>
    extends _$FamilyMemberModelCopyWithImpl<$Res, _$FamilyMemberModelImpl>
    implements _$$FamilyMemberModelImplCopyWith<$Res> {
  __$$FamilyMemberModelImplCopyWithImpl(_$FamilyMemberModelImpl _value,
      $Res Function(_$FamilyMemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? relationship = null,
    Object? relationDesc = null,
  }) {
    return _then(_$FamilyMemberModelImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      relationDesc: null == relationDesc
          ? _value.relationDesc
          : relationDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyMemberModelImpl extends _FamilyMemberModel {
  const _$FamilyMemberModelImpl(
      {@JsonKey(name: 'parentPhone') this.phone = '',
      @JsonKey(name: 'parentName') this.name = '',
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      this.relationship = Relationship.other,
      @JsonKey(name: 'familyRelationDesc') this.relationDesc = ''})
      : super._();

  factory _$FamilyMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyMemberModelImplFromJson(json);

  /// 手机号码
  @override
  @JsonKey(name: 'parentPhone')
  final String phone;

  /// 名称
  @override
  @JsonKey(name: 'parentName')
  final String name;

  /// 亲属关系
  @override
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  final Relationship relationship;

  /// 亲属关系描述
  @override
  @JsonKey(name: 'familyRelationDesc')
  final String relationDesc;

  @override
  String toString() {
    return 'FamilyMemberModel(phone: $phone, name: $name, relationship: $relationship, relationDesc: $relationDesc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyMemberModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.relationDesc, relationDesc) ||
                other.relationDesc == relationDesc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, name, relationship, relationDesc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyMemberModelImplCopyWith<_$FamilyMemberModelImpl> get copyWith =>
      __$$FamilyMemberModelImplCopyWithImpl<_$FamilyMemberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyMemberModelImplToJson(
      this,
    );
  }
}

abstract class _FamilyMemberModel extends FamilyMemberModel {
  const factory _FamilyMemberModel(
          {@JsonKey(name: 'parentPhone') final String phone,
          @JsonKey(name: 'parentName') final String name,
          @JsonKey(name: 'familyRelation')
          @RelationshipJsonConverter()
          final Relationship relationship,
          @JsonKey(name: 'familyRelationDesc') final String relationDesc}) =
      _$FamilyMemberModelImpl;
  const _FamilyMemberModel._() : super._();

  factory _FamilyMemberModel.fromJson(Map<String, dynamic> json) =
      _$FamilyMemberModelImpl.fromJson;

  @override

  /// 手机号码
  @JsonKey(name: 'parentPhone')
  String get phone;
  @override

  /// 名称
  @JsonKey(name: 'parentName')
  String get name;
  @override

  /// 亲属关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship;
  @override

  /// 亲属关系描述
  @JsonKey(name: 'familyRelationDesc')
  String get relationDesc;
  @override
  @JsonKey(ignore: true)
  _$$FamilyMemberModelImplCopyWith<_$FamilyMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveSchoolReq _$LeaveSchoolReqFromJson(Map<String, dynamic> json) {
  return _LeaveSchoolReq.fromJson(json);
}

/// @nodoc
mixin _$LeaveSchoolReq {
  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学生编码
  String get studentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveSchoolReqCopyWith<LeaveSchoolReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveSchoolReqCopyWith<$Res> {
  factory $LeaveSchoolReqCopyWith(
          LeaveSchoolReq value, $Res Function(LeaveSchoolReq) then) =
      _$LeaveSchoolReqCopyWithImpl<$Res, LeaveSchoolReq>;
  @useResult
  $Res call({String schoolCode, String studentCode});
}

/// @nodoc
class _$LeaveSchoolReqCopyWithImpl<$Res, $Val extends LeaveSchoolReq>
    implements $LeaveSchoolReqCopyWith<$Res> {
  _$LeaveSchoolReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? studentCode = null,
  }) {
    return _then(_value.copyWith(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveSchoolReqImplCopyWith<$Res>
    implements $LeaveSchoolReqCopyWith<$Res> {
  factory _$$LeaveSchoolReqImplCopyWith(_$LeaveSchoolReqImpl value,
          $Res Function(_$LeaveSchoolReqImpl) then) =
      __$$LeaveSchoolReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String schoolCode, String studentCode});
}

/// @nodoc
class __$$LeaveSchoolReqImplCopyWithImpl<$Res>
    extends _$LeaveSchoolReqCopyWithImpl<$Res, _$LeaveSchoolReqImpl>
    implements _$$LeaveSchoolReqImplCopyWith<$Res> {
  __$$LeaveSchoolReqImplCopyWithImpl(
      _$LeaveSchoolReqImpl _value, $Res Function(_$LeaveSchoolReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? studentCode = null,
  }) {
    return _then(_$LeaveSchoolReqImpl(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveSchoolReqImpl extends _LeaveSchoolReq {
  const _$LeaveSchoolReqImpl(
      {required this.schoolCode, required this.studentCode})
      : super._();

  factory _$LeaveSchoolReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveSchoolReqImplFromJson(json);

  /// 学校编码
  @override
  final String schoolCode;

  /// 学生编码
  @override
  final String studentCode;

  @override
  String toString() {
    return 'LeaveSchoolReq(schoolCode: $schoolCode, studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveSchoolReqImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolCode, studentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveSchoolReqImplCopyWith<_$LeaveSchoolReqImpl> get copyWith =>
      __$$LeaveSchoolReqImplCopyWithImpl<_$LeaveSchoolReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveSchoolReqImplToJson(
      this,
    );
  }
}

abstract class _LeaveSchoolReq extends LeaveSchoolReq {
  const factory _LeaveSchoolReq(
      {required final String schoolCode,
      required final String studentCode}) = _$LeaveSchoolReqImpl;
  const _LeaveSchoolReq._() : super._();

  factory _LeaveSchoolReq.fromJson(Map<String, dynamic> json) =
      _$LeaveSchoolReqImpl.fromJson;

  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学生编码
  String get studentCode;
  @override
  @JsonKey(ignore: true)
  _$$LeaveSchoolReqImplCopyWith<_$LeaveSchoolReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveSchoolModel _$LeaveSchoolModelFromJson(Map<String, dynamic> json) {
  return _LeaveSchoolModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveSchoolModel {
  @TimestampStringNullableJsonConverter()
  DateTime? get leaveDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveSchoolModelCopyWith<LeaveSchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveSchoolModelCopyWith<$Res> {
  factory $LeaveSchoolModelCopyWith(
          LeaveSchoolModel value, $Res Function(LeaveSchoolModel) then) =
      _$LeaveSchoolModelCopyWithImpl<$Res, LeaveSchoolModel>;
  @useResult
  $Res call({@TimestampStringNullableJsonConverter() DateTime? leaveDate});
}

/// @nodoc
class _$LeaveSchoolModelCopyWithImpl<$Res, $Val extends LeaveSchoolModel>
    implements $LeaveSchoolModelCopyWith<$Res> {
  _$LeaveSchoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveDate = freezed,
  }) {
    return _then(_value.copyWith(
      leaveDate: freezed == leaveDate
          ? _value.leaveDate
          : leaveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveSchoolModelImplCopyWith<$Res>
    implements $LeaveSchoolModelCopyWith<$Res> {
  factory _$$LeaveSchoolModelImplCopyWith(_$LeaveSchoolModelImpl value,
          $Res Function(_$LeaveSchoolModelImpl) then) =
      __$$LeaveSchoolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TimestampStringNullableJsonConverter() DateTime? leaveDate});
}

/// @nodoc
class __$$LeaveSchoolModelImplCopyWithImpl<$Res>
    extends _$LeaveSchoolModelCopyWithImpl<$Res, _$LeaveSchoolModelImpl>
    implements _$$LeaveSchoolModelImplCopyWith<$Res> {
  __$$LeaveSchoolModelImplCopyWithImpl(_$LeaveSchoolModelImpl _value,
      $Res Function(_$LeaveSchoolModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveDate = freezed,
  }) {
    return _then(_$LeaveSchoolModelImpl(
      leaveDate: freezed == leaveDate
          ? _value.leaveDate
          : leaveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveSchoolModelImpl extends _LeaveSchoolModel {
  const _$LeaveSchoolModelImpl(
      {@TimestampStringNullableJsonConverter() this.leaveDate})
      : super._();

  factory _$LeaveSchoolModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveSchoolModelImplFromJson(json);

  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? leaveDate;

  @override
  String toString() {
    return 'LeaveSchoolModel(leaveDate: $leaveDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveSchoolModelImpl &&
            (identical(other.leaveDate, leaveDate) ||
                other.leaveDate == leaveDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leaveDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveSchoolModelImplCopyWith<_$LeaveSchoolModelImpl> get copyWith =>
      __$$LeaveSchoolModelImplCopyWithImpl<_$LeaveSchoolModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveSchoolModelImplToJson(
      this,
    );
  }
}

abstract class _LeaveSchoolModel extends LeaveSchoolModel {
  const factory _LeaveSchoolModel(
          {@TimestampStringNullableJsonConverter() final DateTime? leaveDate}) =
      _$LeaveSchoolModelImpl;
  const _LeaveSchoolModel._() : super._();

  factory _LeaveSchoolModel.fromJson(Map<String, dynamic> json) =
      _$LeaveSchoolModelImpl.fromJson;

  @override
  @TimestampStringNullableJsonConverter()
  DateTime? get leaveDate;
  @override
  @JsonKey(ignore: true)
  _$$LeaveSchoolModelImplCopyWith<_$LeaveSchoolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentReq _$StudentReqFromJson(Map<String, dynamic> json) {
  return _StudentReq.fromJson(json);
}

/// @nodoc
mixin _$StudentReq {
  /// 学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 头像地址
  @JsonKey(name: 'studentAvatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentReqCopyWith<StudentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentReqCopyWith<$Res> {
  factory $StudentReqCopyWith(
          StudentReq value, $Res Function(StudentReq) then) =
      _$StudentReqCopyWithImpl<$Res, StudentReq>;
  @useResult
  $Res call(
      {String studentCode,
      @JsonKey(name: 'studentAvatarUrl') String? avatarUrl});
}

/// @nodoc
class _$StudentReqCopyWithImpl<$Res, $Val extends StudentReq>
    implements $StudentReqCopyWith<$Res> {
  _$StudentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentReqImplCopyWith<$Res>
    implements $StudentReqCopyWith<$Res> {
  factory _$$StudentReqImplCopyWith(
          _$StudentReqImpl value, $Res Function(_$StudentReqImpl) then) =
      __$$StudentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String studentCode,
      @JsonKey(name: 'studentAvatarUrl') String? avatarUrl});
}

/// @nodoc
class __$$StudentReqImplCopyWithImpl<$Res>
    extends _$StudentReqCopyWithImpl<$Res, _$StudentReqImpl>
    implements _$$StudentReqImplCopyWith<$Res> {
  __$$StudentReqImplCopyWithImpl(
      _$StudentReqImpl _value, $Res Function(_$StudentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$StudentReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentReqImpl extends _StudentReq {
  const _$StudentReqImpl(
      {required this.studentCode,
      @JsonKey(name: 'studentAvatarUrl') this.avatarUrl})
      : super._();

  factory _$StudentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentReqImplFromJson(json);

  /// 学号
  @override
  final String studentCode;

  /// 头像地址
  @override
  @JsonKey(name: 'studentAvatarUrl')
  final String? avatarUrl;

  @override
  String toString() {
    return 'StudentReq(studentCode: $studentCode, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentReqImplCopyWith<_$StudentReqImpl> get copyWith =>
      __$$StudentReqImplCopyWithImpl<_$StudentReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentReqImplToJson(
      this,
    );
  }
}

abstract class _StudentReq extends StudentReq {
  const factory _StudentReq(
          {required final String studentCode,
          @JsonKey(name: 'studentAvatarUrl') final String? avatarUrl}) =
      _$StudentReqImpl;
  const _StudentReq._() : super._();

  factory _StudentReq.fromJson(Map<String, dynamic> json) =
      _$StudentReqImpl.fromJson;

  @override

  /// 学号
  String get studentCode;
  @override

  /// 头像地址
  @JsonKey(name: 'studentAvatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$StudentReqImplCopyWith<_$StudentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  /// 正式学生编号
  @JsonKey(name: 'studentId')
  int? get studentId => throw _privateConstructorUsedError;

  /// 潜在学生编号
  @JsonKey(name: 'potentialStuId')
  int? get potentialId => throw _privateConstructorUsedError;

  /// 学生学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String? get name => throw _privateConstructorUsedError;

  /// 学生英文名
  @JsonKey(name: 'schoolEngName')
  String? get engName => throw _privateConstructorUsedError;

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar => throw _privateConstructorUsedError;

  /// 学生就读状态
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  StudentStatus get status => throw _privateConstructorUsedError;

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender get sex => throw _privateConstructorUsedError;

  /// 家庭成员关系
  @JsonKey(name: 'familyRelationship')
  @RelationshipNullableJsonConverter()
  Relationship? get relationship => throw _privateConstructorUsedError;

  /// 出生日期
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth => throw _privateConstructorUsedError;

  /// 出生日期(备选)
  @JsonKey(name: 'brithDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth2 => throw _privateConstructorUsedError;

  /// 当前学生所在园所是否已开通博校声
  @JsonKey(name: 'schoolOpenFlag')
  bool get schoolEnable => throw _privateConstructorUsedError;

  /// 学校id
  int? get schoolId => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 学校名称
  String get schoolName => throw _privateConstructorUsedError;

  /// 学校英文名称
  String get studentEngName => throw _privateConstructorUsedError;

  /// 就读学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 就读学年学期名称
  String? get yearTermName => throw _privateConstructorUsedError;

  /// 就读学期编码
  String? get termCode => throw _privateConstructorUsedError;

  /// 就读学期名称
  String? get termName => throw _privateConstructorUsedError;

  /// 就读学段编码
  String? get phaseCode => throw _privateConstructorUsedError;

  /// 学段名称
  String get phaseName => throw _privateConstructorUsedError;

  /// 就读课程编码
  String? get courseCode => throw _privateConstructorUsedError;

  /// 课程名称
  String get courseName => throw _privateConstructorUsedError;

  /// 年级编码
  String? get gradeCode => throw _privateConstructorUsedError;

  /// 年级名称
  String get gradeName => throw _privateConstructorUsedError;

  /// 班级编码
  String? get classCode => throw _privateConstructorUsedError;

  /// 班级名称
  String get className => throw _privateConstructorUsedError;

  /// 证件类型
  int get credentialsType => throw _privateConstructorUsedError;

  /// 证件号
  String? get credentialsNumber => throw _privateConstructorUsedError;

  /// 离校日期
  @DateTimeJsonConverter()
  DateTime? get leaveDate => throw _privateConstructorUsedError;

  /// 省份
  @JsonKey(name: 'residenceAddressProvince')
  String? get province => throw _privateConstructorUsedError;

  /// 市
  @JsonKey(name: 'residenceAddressCity')
  String? get city => throw _privateConstructorUsedError;

  /// 区
  @JsonKey(name: 'residenceAddressDistrict')
  String? get district => throw _privateConstructorUsedError;

  /// 详细地址
  @JsonKey(name: 'residenceAddressLocation')
  String? get location => throw _privateConstructorUsedError;

  /// 亲属列表
  @JsonKey(name: 'familyVOS')
  List<FamilyMemberModel>? get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) then) =
      _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'studentId') int? studentId,
      @JsonKey(name: 'potentialStuId') int? potentialId,
      String studentCode,
      @JsonKey(name: 'studentName') String? name,
      @JsonKey(name: 'schoolEngName') String? engName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      StudentStatus status,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender sex,
      @JsonKey(name: 'familyRelationship')
      @RelationshipNullableJsonConverter()
      Relationship? relationship,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      DateTime? birth,
      @JsonKey(name: 'brithDate')
      @SimpleDateTimeJsonConverter()
      DateTime? birth2,
      @JsonKey(name: 'schoolOpenFlag') bool schoolEnable,
      int? schoolId,
      String? schoolCode,
      String schoolName,
      String studentEngName,
      String? yearTermCode,
      String? yearTermName,
      String? termCode,
      String? termName,
      String? phaseCode,
      String phaseName,
      String? courseCode,
      String courseName,
      String? gradeCode,
      String gradeName,
      String? classCode,
      String className,
      int credentialsType,
      String? credentialsNumber,
      @DateTimeJsonConverter() DateTime? leaveDate,
      @JsonKey(name: 'residenceAddressProvince') String? province,
      @JsonKey(name: 'residenceAddressCity') String? city,
      @JsonKey(name: 'residenceAddressDistrict') String? district,
      @JsonKey(name: 'residenceAddressLocation') String? location,
      @JsonKey(name: 'familyVOS') List<FamilyMemberModel>? members});
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? potentialId = freezed,
    Object? studentCode = null,
    Object? name = freezed,
    Object? engName = freezed,
    Object? avatar = freezed,
    Object? status = null,
    Object? sex = null,
    Object? relationship = freezed,
    Object? birth = freezed,
    Object? birth2 = freezed,
    Object? schoolEnable = null,
    Object? schoolId = freezed,
    Object? schoolCode = freezed,
    Object? schoolName = null,
    Object? studentEngName = null,
    Object? yearTermCode = freezed,
    Object? yearTermName = freezed,
    Object? termCode = freezed,
    Object? termName = freezed,
    Object? phaseCode = freezed,
    Object? phaseName = null,
    Object? courseCode = freezed,
    Object? courseName = null,
    Object? gradeCode = freezed,
    Object? gradeName = null,
    Object? classCode = freezed,
    Object? className = null,
    Object? credentialsType = null,
    Object? credentialsNumber = freezed,
    Object? leaveDate = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? location = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentStatus,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Gender,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birth2: freezed == birth2
          ? _value.birth2
          : birth2 // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolEnable: null == schoolEnable
          ? _value.schoolEnable
          : schoolEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      studentEngName: null == studentEngName
          ? _value.studentEngName
          : studentEngName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermName: freezed == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String?,
      termCode: freezed == termCode
          ? _value.termCode
          : termCode // ignore: cast_nullable_to_non_nullable
              as String?,
      termName: freezed == termName
          ? _value.termName
          : termName // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseCode: freezed == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: freezed == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: freezed == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: freezed == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String?,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      credentialsType: null == credentialsType
          ? _value.credentialsType
          : credentialsType // ignore: cast_nullable_to_non_nullable
              as int,
      credentialsNumber: freezed == credentialsNumber
          ? _value.credentialsNumber
          : credentialsNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveDate: freezed == leaveDate
          ? _value.leaveDate
          : leaveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentModelImplCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$StudentModelImplCopyWith(
          _$StudentModelImpl value, $Res Function(_$StudentModelImpl) then) =
      __$$StudentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'studentId') int? studentId,
      @JsonKey(name: 'potentialStuId') int? potentialId,
      String studentCode,
      @JsonKey(name: 'studentName') String? name,
      @JsonKey(name: 'schoolEngName') String? engName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      StudentStatus status,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender sex,
      @JsonKey(name: 'familyRelationship')
      @RelationshipNullableJsonConverter()
      Relationship? relationship,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      DateTime? birth,
      @JsonKey(name: 'brithDate')
      @SimpleDateTimeJsonConverter()
      DateTime? birth2,
      @JsonKey(name: 'schoolOpenFlag') bool schoolEnable,
      int? schoolId,
      String? schoolCode,
      String schoolName,
      String studentEngName,
      String? yearTermCode,
      String? yearTermName,
      String? termCode,
      String? termName,
      String? phaseCode,
      String phaseName,
      String? courseCode,
      String courseName,
      String? gradeCode,
      String gradeName,
      String? classCode,
      String className,
      int credentialsType,
      String? credentialsNumber,
      @DateTimeJsonConverter() DateTime? leaveDate,
      @JsonKey(name: 'residenceAddressProvince') String? province,
      @JsonKey(name: 'residenceAddressCity') String? city,
      @JsonKey(name: 'residenceAddressDistrict') String? district,
      @JsonKey(name: 'residenceAddressLocation') String? location,
      @JsonKey(name: 'familyVOS') List<FamilyMemberModel>? members});
}

/// @nodoc
class __$$StudentModelImplCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$StudentModelImpl>
    implements _$$StudentModelImplCopyWith<$Res> {
  __$$StudentModelImplCopyWithImpl(
      _$StudentModelImpl _value, $Res Function(_$StudentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? potentialId = freezed,
    Object? studentCode = null,
    Object? name = freezed,
    Object? engName = freezed,
    Object? avatar = freezed,
    Object? status = null,
    Object? sex = null,
    Object? relationship = freezed,
    Object? birth = freezed,
    Object? birth2 = freezed,
    Object? schoolEnable = null,
    Object? schoolId = freezed,
    Object? schoolCode = freezed,
    Object? schoolName = null,
    Object? studentEngName = null,
    Object? yearTermCode = freezed,
    Object? yearTermName = freezed,
    Object? termCode = freezed,
    Object? termName = freezed,
    Object? phaseCode = freezed,
    Object? phaseName = null,
    Object? courseCode = freezed,
    Object? courseName = null,
    Object? gradeCode = freezed,
    Object? gradeName = null,
    Object? classCode = freezed,
    Object? className = null,
    Object? credentialsType = null,
    Object? credentialsNumber = freezed,
    Object? leaveDate = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? location = freezed,
    Object? members = freezed,
  }) {
    return _then(_$StudentModelImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentStatus,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Gender,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birth2: freezed == birth2
          ? _value.birth2
          : birth2 // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolEnable: null == schoolEnable
          ? _value.schoolEnable
          : schoolEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      studentEngName: null == studentEngName
          ? _value.studentEngName
          : studentEngName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermName: freezed == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String?,
      termCode: freezed == termCode
          ? _value.termCode
          : termCode // ignore: cast_nullable_to_non_nullable
              as String?,
      termName: freezed == termName
          ? _value.termName
          : termName // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseCode: freezed == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: freezed == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: freezed == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: freezed == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String?,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      credentialsType: null == credentialsType
          ? _value.credentialsType
          : credentialsType // ignore: cast_nullable_to_non_nullable
              as int,
      credentialsNumber: freezed == credentialsNumber
          ? _value.credentialsNumber
          : credentialsNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveDate: freezed == leaveDate
          ? _value.leaveDate
          : leaveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentModelImpl extends _StudentModel {
  const _$StudentModelImpl(
      {@JsonKey(name: 'studentId') this.studentId,
      @JsonKey(name: 'potentialStuId') this.potentialId,
      this.studentCode = '',
      @JsonKey(name: 'studentName') this.name,
      @JsonKey(name: 'schoolEngName') this.engName,
      @JsonKey(name: 'avatarUrl') this.avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      this.status = StudentStatus.unknown,
      @JsonKey(name: 'studentSex')
      @GenderIntJsonConverter()
      this.sex = Gender.unknown,
      @JsonKey(name: 'familyRelationship')
      @RelationshipNullableJsonConverter()
      this.relationship,
      @JsonKey(name: 'studentBirth') @SimpleDateTimeJsonConverter() this.birth,
      @JsonKey(name: 'brithDate') @SimpleDateTimeJsonConverter() this.birth2,
      @JsonKey(name: 'schoolOpenFlag') this.schoolEnable = false,
      this.schoolId,
      this.schoolCode,
      this.schoolName = '',
      this.studentEngName = '',
      this.yearTermCode,
      this.yearTermName,
      this.termCode,
      this.termName,
      this.phaseCode,
      this.phaseName = '',
      this.courseCode,
      this.courseName = '',
      this.gradeCode,
      this.gradeName = '',
      this.classCode,
      this.className = '',
      this.credentialsType = 0,
      this.credentialsNumber,
      @DateTimeJsonConverter() this.leaveDate,
      @JsonKey(name: 'residenceAddressProvince') this.province,
      @JsonKey(name: 'residenceAddressCity') this.city,
      @JsonKey(name: 'residenceAddressDistrict') this.district,
      @JsonKey(name: 'residenceAddressLocation') this.location,
      @JsonKey(name: 'familyVOS') final List<FamilyMemberModel>? members})
      : _members = members,
        super._();

  factory _$StudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentModelImplFromJson(json);

  /// 正式学生编号
  @override
  @JsonKey(name: 'studentId')
  final int? studentId;

  /// 潜在学生编号
  @override
  @JsonKey(name: 'potentialStuId')
  final int? potentialId;

  /// 学生学号
  @override
  @JsonKey()
  final String studentCode;

  /// 学生姓名
  @override
  @JsonKey(name: 'studentName')
  final String? name;

  /// 学生英文名
  @override
  @JsonKey(name: 'schoolEngName')
  final String? engName;

  /// 头像
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatar;

  /// 学生就读状态
  @override
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  final StudentStatus status;

  /// 学生性别
  @override
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  final Gender sex;

  /// 家庭成员关系
  @override
  @JsonKey(name: 'familyRelationship')
  @RelationshipNullableJsonConverter()
  final Relationship? relationship;

  /// 出生日期
  @override
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  final DateTime? birth;

  /// 出生日期(备选)
  @override
  @JsonKey(name: 'brithDate')
  @SimpleDateTimeJsonConverter()
  final DateTime? birth2;

  /// 当前学生所在园所是否已开通博校声
  @override
  @JsonKey(name: 'schoolOpenFlag')
  final bool schoolEnable;

  /// 学校id
  @override
  final int? schoolId;

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
  final String studentEngName;

  /// 就读学年学期编码
  @override
  final String? yearTermCode;

  /// 就读学年学期名称
  @override
  final String? yearTermName;

  /// 就读学期编码
  @override
  final String? termCode;

  /// 就读学期名称
  @override
  final String? termName;

  /// 就读学段编码
  @override
  final String? phaseCode;

  /// 学段名称
  @override
  @JsonKey()
  final String phaseName;

  /// 就读课程编码
  @override
  final String? courseCode;

  /// 课程名称
  @override
  @JsonKey()
  final String courseName;

  /// 年级编码
  @override
  final String? gradeCode;

  /// 年级名称
  @override
  @JsonKey()
  final String gradeName;

  /// 班级编码
  @override
  final String? classCode;

  /// 班级名称
  @override
  @JsonKey()
  final String className;

  /// 证件类型
  @override
  @JsonKey()
  final int credentialsType;

  /// 证件号
  @override
  final String? credentialsNumber;

  /// 离校日期
  @override
  @DateTimeJsonConverter()
  final DateTime? leaveDate;

  /// 省份
  @override
  @JsonKey(name: 'residenceAddressProvince')
  final String? province;

  /// 市
  @override
  @JsonKey(name: 'residenceAddressCity')
  final String? city;

  /// 区
  @override
  @JsonKey(name: 'residenceAddressDistrict')
  final String? district;

  /// 详细地址
  @override
  @JsonKey(name: 'residenceAddressLocation')
  final String? location;

  /// 亲属列表
  final List<FamilyMemberModel>? _members;

  /// 亲属列表
  @override
  @JsonKey(name: 'familyVOS')
  List<FamilyMemberModel>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudentModel(studentId: $studentId, potentialId: $potentialId, studentCode: $studentCode, name: $name, engName: $engName, avatar: $avatar, status: $status, sex: $sex, relationship: $relationship, birth: $birth, birth2: $birth2, schoolEnable: $schoolEnable, schoolId: $schoolId, schoolCode: $schoolCode, schoolName: $schoolName, studentEngName: $studentEngName, yearTermCode: $yearTermCode, yearTermName: $yearTermName, termCode: $termCode, termName: $termName, phaseCode: $phaseCode, phaseName: $phaseName, courseCode: $courseCode, courseName: $courseName, gradeCode: $gradeCode, gradeName: $gradeName, classCode: $classCode, className: $className, credentialsType: $credentialsType, credentialsNumber: $credentialsNumber, leaveDate: $leaveDate, province: $province, city: $city, district: $district, location: $location, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentModelImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.potentialId, potentialId) ||
                other.potentialId == potentialId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.birth2, birth2) || other.birth2 == birth2) &&
            (identical(other.schoolEnable, schoolEnable) ||
                other.schoolEnable == schoolEnable) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.studentEngName, studentEngName) ||
                other.studentEngName == studentEngName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.yearTermName, yearTermName) ||
                other.yearTermName == yearTermName) &&
            (identical(other.termCode, termCode) ||
                other.termCode == termCode) &&
            (identical(other.termName, termName) ||
                other.termName == termName) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.gradeName, gradeName) ||
                other.gradeName == gradeName) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.credentialsType, credentialsType) ||
                other.credentialsType == credentialsType) &&
            (identical(other.credentialsNumber, credentialsNumber) ||
                other.credentialsNumber == credentialsNumber) &&
            (identical(other.leaveDate, leaveDate) ||
                other.leaveDate == leaveDate) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        studentId,
        potentialId,
        studentCode,
        name,
        engName,
        avatar,
        status,
        sex,
        relationship,
        birth,
        birth2,
        schoolEnable,
        schoolId,
        schoolCode,
        schoolName,
        studentEngName,
        yearTermCode,
        yearTermName,
        termCode,
        termName,
        phaseCode,
        phaseName,
        courseCode,
        courseName,
        gradeCode,
        gradeName,
        classCode,
        className,
        credentialsType,
        credentialsNumber,
        leaveDate,
        province,
        city,
        district,
        location,
        const DeepCollectionEquality().hash(_members)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      __$$StudentModelImplCopyWithImpl<_$StudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentModelImplToJson(
      this,
    );
  }
}

abstract class _StudentModel extends StudentModel {
  const factory _StudentModel(
      {@JsonKey(name: 'studentId') final int? studentId,
      @JsonKey(name: 'potentialStuId') final int? potentialId,
      final String studentCode,
      @JsonKey(name: 'studentName') final String? name,
      @JsonKey(name: 'schoolEngName') final String? engName,
      @JsonKey(name: 'avatarUrl') final String? avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      final StudentStatus status,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() final Gender sex,
      @JsonKey(name: 'familyRelationship')
      @RelationshipNullableJsonConverter()
      final Relationship? relationship,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      final DateTime? birth,
      @JsonKey(name: 'brithDate')
      @SimpleDateTimeJsonConverter()
      final DateTime? birth2,
      @JsonKey(name: 'schoolOpenFlag') final bool schoolEnable,
      final int? schoolId,
      final String? schoolCode,
      final String schoolName,
      final String studentEngName,
      final String? yearTermCode,
      final String? yearTermName,
      final String? termCode,
      final String? termName,
      final String? phaseCode,
      final String phaseName,
      final String? courseCode,
      final String courseName,
      final String? gradeCode,
      final String gradeName,
      final String? classCode,
      final String className,
      final int credentialsType,
      final String? credentialsNumber,
      @DateTimeJsonConverter() final DateTime? leaveDate,
      @JsonKey(name: 'residenceAddressProvince') final String? province,
      @JsonKey(name: 'residenceAddressCity') final String? city,
      @JsonKey(name: 'residenceAddressDistrict') final String? district,
      @JsonKey(name: 'residenceAddressLocation') final String? location,
      @JsonKey(name: 'familyVOS')
      final List<FamilyMemberModel>? members}) = _$StudentModelImpl;
  const _StudentModel._() : super._();

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$StudentModelImpl.fromJson;

  @override

  /// 正式学生编号
  @JsonKey(name: 'studentId')
  int? get studentId;
  @override

  /// 潜在学生编号
  @JsonKey(name: 'potentialStuId')
  int? get potentialId;
  @override

  /// 学生学号
  String get studentCode;
  @override

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String? get name;
  @override

  /// 学生英文名
  @JsonKey(name: 'schoolEngName')
  String? get engName;
  @override

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar;
  @override

  /// 学生就读状态
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  StudentStatus get status;
  @override

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender get sex;
  @override

  /// 家庭成员关系
  @JsonKey(name: 'familyRelationship')
  @RelationshipNullableJsonConverter()
  Relationship? get relationship;
  @override

  /// 出生日期
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth;
  @override

  /// 出生日期(备选)
  @JsonKey(name: 'brithDate')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth2;
  @override

  /// 当前学生所在园所是否已开通博校声
  @JsonKey(name: 'schoolOpenFlag')
  bool get schoolEnable;
  @override

  /// 学校id
  int? get schoolId;
  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 学校名称
  String get schoolName;
  @override

  /// 学校英文名称
  String get studentEngName;
  @override

  /// 就读学年学期编码
  String? get yearTermCode;
  @override

  /// 就读学年学期名称
  String? get yearTermName;
  @override

  /// 就读学期编码
  String? get termCode;
  @override

  /// 就读学期名称
  String? get termName;
  @override

  /// 就读学段编码
  String? get phaseCode;
  @override

  /// 学段名称
  String get phaseName;
  @override

  /// 就读课程编码
  String? get courseCode;
  @override

  /// 课程名称
  String get courseName;
  @override

  /// 年级编码
  String? get gradeCode;
  @override

  /// 年级名称
  String get gradeName;
  @override

  /// 班级编码
  String? get classCode;
  @override

  /// 班级名称
  String get className;
  @override

  /// 证件类型
  int get credentialsType;
  @override

  /// 证件号
  String? get credentialsNumber;
  @override

  /// 离校日期
  @DateTimeJsonConverter()
  DateTime? get leaveDate;
  @override

  /// 省份
  @JsonKey(name: 'residenceAddressProvince')
  String? get province;
  @override

  /// 市
  @JsonKey(name: 'residenceAddressCity')
  String? get city;
  @override

  /// 区
  @JsonKey(name: 'residenceAddressDistrict')
  String? get district;
  @override

  /// 详细地址
  @JsonKey(name: 'residenceAddressLocation')
  String? get location;
  @override

  /// 亲属列表
  @JsonKey(name: 'familyVOS')
  List<FamilyMemberModel>? get members;
  @override
  @JsonKey(ignore: true)
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PotentialStudentReq _$PotentialStudentReqFromJson(Map<String, dynamic> json) {
  return _PotentialStudentReq.fromJson(json);
}

/// @nodoc
mixin _$PotentialStudentReq {
  /// 学生主键
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;

  /// 学生头像
  @JsonKey(name: 'studentAvatar')
  String? get avatar => throw _privateConstructorUsedError;

  /// 学生出生年月日(yyyy-MM-dd)
  @JsonKey(name: 'studentBirth')
  String? get birth => throw _privateConstructorUsedError;

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String? get name => throw _privateConstructorUsedError;

  /// 学生身份证号
  @JsonKey(name: 'studentIdentity')
  String? get identity => throw _privateConstructorUsedError;

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender? get gender => throw _privateConstructorUsedError;

  /// 家庭关系
  @JsonKey(name: 'familyRelationship')
  int? get relationship => throw _privateConstructorUsedError;

  /// 户籍地址-省
  @JsonKey(name: 'registeredAddressProvince')
  String? get province => throw _privateConstructorUsedError;

  /// 户籍地址-市
  @JsonKey(name: 'registeredAddressCity')
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PotentialStudentReqCopyWith<PotentialStudentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotentialStudentReqCopyWith<$Res> {
  factory $PotentialStudentReqCopyWith(
          PotentialStudentReq value, $Res Function(PotentialStudentReq) then) =
      _$PotentialStudentReqCopyWithImpl<$Res, PotentialStudentReq>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'studentAvatar') String? avatar,
      @JsonKey(name: 'studentBirth') String? birth,
      @JsonKey(name: 'studentName') String? name,
      @JsonKey(name: 'studentIdentity') String? identity,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender? gender,
      @JsonKey(name: 'familyRelationship') int? relationship,
      @JsonKey(name: 'registeredAddressProvince') String? province,
      @JsonKey(name: 'registeredAddressCity') String? city});
}

/// @nodoc
class _$PotentialStudentReqCopyWithImpl<$Res, $Val extends PotentialStudentReq>
    implements $PotentialStudentReqCopyWith<$Res> {
  _$PotentialStudentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? birth = freezed,
    Object? name = freezed,
    Object? identity = freezed,
    Object? gender = freezed,
    Object? relationship = freezed,
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PotentialStudentReqImplCopyWith<$Res>
    implements $PotentialStudentReqCopyWith<$Res> {
  factory _$$PotentialStudentReqImplCopyWith(_$PotentialStudentReqImpl value,
          $Res Function(_$PotentialStudentReqImpl) then) =
      __$$PotentialStudentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'studentAvatar') String? avatar,
      @JsonKey(name: 'studentBirth') String? birth,
      @JsonKey(name: 'studentName') String? name,
      @JsonKey(name: 'studentIdentity') String? identity,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender? gender,
      @JsonKey(name: 'familyRelationship') int? relationship,
      @JsonKey(name: 'registeredAddressProvince') String? province,
      @JsonKey(name: 'registeredAddressCity') String? city});
}

/// @nodoc
class __$$PotentialStudentReqImplCopyWithImpl<$Res>
    extends _$PotentialStudentReqCopyWithImpl<$Res, _$PotentialStudentReqImpl>
    implements _$$PotentialStudentReqImplCopyWith<$Res> {
  __$$PotentialStudentReqImplCopyWithImpl(_$PotentialStudentReqImpl _value,
      $Res Function(_$PotentialStudentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? birth = freezed,
    Object? name = freezed,
    Object? identity = freezed,
    Object? gender = freezed,
    Object? relationship = freezed,
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_$PotentialStudentReqImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotentialStudentReqImpl extends _PotentialStudentReq {
  const _$PotentialStudentReqImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'studentAvatar') this.avatar,
      @JsonKey(name: 'studentBirth') this.birth,
      @JsonKey(name: 'studentName') this.name,
      @JsonKey(name: 'studentIdentity') this.identity,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() this.gender,
      @JsonKey(name: 'familyRelationship') this.relationship,
      @JsonKey(name: 'registeredAddressProvince') this.province,
      @JsonKey(name: 'registeredAddressCity') this.city})
      : super._();

  factory _$PotentialStudentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PotentialStudentReqImplFromJson(json);

  /// 学生主键
  @override
  @JsonKey(includeIfNull: false)
  final int? id;

  /// 学生头像
  @override
  @JsonKey(name: 'studentAvatar')
  final String? avatar;

  /// 学生出生年月日(yyyy-MM-dd)
  @override
  @JsonKey(name: 'studentBirth')
  final String? birth;

  /// 学生姓名
  @override
  @JsonKey(name: 'studentName')
  final String? name;

  /// 学生身份证号
  @override
  @JsonKey(name: 'studentIdentity')
  final String? identity;

  /// 学生性别
  @override
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  final Gender? gender;

  /// 家庭关系
  @override
  @JsonKey(name: 'familyRelationship')
  final int? relationship;

  /// 户籍地址-省
  @override
  @JsonKey(name: 'registeredAddressProvince')
  final String? province;

  /// 户籍地址-市
  @override
  @JsonKey(name: 'registeredAddressCity')
  final String? city;

  @override
  String toString() {
    return 'PotentialStudentReq(id: $id, avatar: $avatar, birth: $birth, name: $name, identity: $identity, gender: $gender, relationship: $relationship, province: $province, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotentialStudentReqImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, avatar, birth, name,
      identity, gender, relationship, province, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PotentialStudentReqImplCopyWith<_$PotentialStudentReqImpl> get copyWith =>
      __$$PotentialStudentReqImplCopyWithImpl<_$PotentialStudentReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotentialStudentReqImplToJson(
      this,
    );
  }
}

abstract class _PotentialStudentReq extends PotentialStudentReq {
  const factory _PotentialStudentReq(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(name: 'studentAvatar') final String? avatar,
          @JsonKey(name: 'studentBirth') final String? birth,
          @JsonKey(name: 'studentName') final String? name,
          @JsonKey(name: 'studentIdentity') final String? identity,
          @JsonKey(name: 'studentSex')
          @GenderIntJsonConverter()
          final Gender? gender,
          @JsonKey(name: 'familyRelationship') final int? relationship,
          @JsonKey(name: 'registeredAddressProvince') final String? province,
          @JsonKey(name: 'registeredAddressCity') final String? city}) =
      _$PotentialStudentReqImpl;
  const _PotentialStudentReq._() : super._();

  factory _PotentialStudentReq.fromJson(Map<String, dynamic> json) =
      _$PotentialStudentReqImpl.fromJson;

  @override

  /// 学生主键
  @JsonKey(includeIfNull: false)
  int? get id;
  @override

  /// 学生头像
  @JsonKey(name: 'studentAvatar')
  String? get avatar;
  @override

  /// 学生出生年月日(yyyy-MM-dd)
  @JsonKey(name: 'studentBirth')
  String? get birth;
  @override

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String? get name;
  @override

  /// 学生身份证号
  @JsonKey(name: 'studentIdentity')
  String? get identity;
  @override

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender? get gender;
  @override

  /// 家庭关系
  @JsonKey(name: 'familyRelationship')
  int? get relationship;
  @override

  /// 户籍地址-省
  @JsonKey(name: 'registeredAddressProvince')
  String? get province;
  @override

  /// 户籍地址-市
  @JsonKey(name: 'registeredAddressCity')
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$PotentialStudentReqImplCopyWith<_$PotentialStudentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PotentialStudentModel _$PotentialStudentModelFromJson(
    Map<String, dynamic> json) {
  return _PotentialStudentModel.fromJson(json);
}

/// @nodoc
mixin _$PotentialStudentModel {
  /// 学生主键
  int? get id => throw _privateConstructorUsedError;

  /// 家长电话
  String get parentPhone => throw _privateConstructorUsedError;

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String get name => throw _privateConstructorUsedError;

  /// 学生头像
  @JsonKey(name: 'studentAvatar')
  String get avatar => throw _privateConstructorUsedError;

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender get gender => throw _privateConstructorUsedError;

  /// 学生出生年月日(yyyy-MM-dd)
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth => throw _privateConstructorUsedError;

  /// 家庭关系
  @JsonKey(name: 'familyRelationship')
  int? get relationship => throw _privateConstructorUsedError;

  /// 家庭关系中文描述
  @JsonKey(name: 'familyRelationshipDesc')
  String get relationshipDesc => throw _privateConstructorUsedError;

  /// 家庭关系英文描述
  @JsonKey(name: 'familyRelationshipEngDesc')
  String get relationshipEngDesc => throw _privateConstructorUsedError;

  /// 身份证
  @JsonKey(name: 'studentIdentity')
  String get identity => throw _privateConstructorUsedError;

  /// 所在省份
  @JsonKey(name: 'registeredAddressProvince')
  String? get province => throw _privateConstructorUsedError;

  /// 所在城市
  @JsonKey(name: 'registeredAddressCity')
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PotentialStudentModelCopyWith<PotentialStudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotentialStudentModelCopyWith<$Res> {
  factory $PotentialStudentModelCopyWith(PotentialStudentModel value,
          $Res Function(PotentialStudentModel) then) =
      _$PotentialStudentModelCopyWithImpl<$Res, PotentialStudentModel>;
  @useResult
  $Res call(
      {int? id,
      String parentPhone,
      @JsonKey(name: 'studentName') String name,
      @JsonKey(name: 'studentAvatar') String avatar,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender gender,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      DateTime? birth,
      @JsonKey(name: 'familyRelationship') int? relationship,
      @JsonKey(name: 'familyRelationshipDesc') String relationshipDesc,
      @JsonKey(name: 'familyRelationshipEngDesc') String relationshipEngDesc,
      @JsonKey(name: 'studentIdentity') String identity,
      @JsonKey(name: 'registeredAddressProvince') String? province,
      @JsonKey(name: 'registeredAddressCity') String? city});
}

/// @nodoc
class _$PotentialStudentModelCopyWithImpl<$Res,
        $Val extends PotentialStudentModel>
    implements $PotentialStudentModelCopyWith<$Res> {
  _$PotentialStudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentPhone = null,
    Object? name = null,
    Object? avatar = null,
    Object? gender = null,
    Object? birth = freezed,
    Object? relationship = freezed,
    Object? relationshipDesc = null,
    Object? relationshipEngDesc = null,
    Object? identity = null,
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipDesc: null == relationshipDesc
          ? _value.relationshipDesc
          : relationshipDesc // ignore: cast_nullable_to_non_nullable
              as String,
      relationshipEngDesc: null == relationshipEngDesc
          ? _value.relationshipEngDesc
          : relationshipEngDesc // ignore: cast_nullable_to_non_nullable
              as String,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PotentialStudentModelImplCopyWith<$Res>
    implements $PotentialStudentModelCopyWith<$Res> {
  factory _$$PotentialStudentModelImplCopyWith(
          _$PotentialStudentModelImpl value,
          $Res Function(_$PotentialStudentModelImpl) then) =
      __$$PotentialStudentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String parentPhone,
      @JsonKey(name: 'studentName') String name,
      @JsonKey(name: 'studentAvatar') String avatar,
      @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender gender,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      DateTime? birth,
      @JsonKey(name: 'familyRelationship') int? relationship,
      @JsonKey(name: 'familyRelationshipDesc') String relationshipDesc,
      @JsonKey(name: 'familyRelationshipEngDesc') String relationshipEngDesc,
      @JsonKey(name: 'studentIdentity') String identity,
      @JsonKey(name: 'registeredAddressProvince') String? province,
      @JsonKey(name: 'registeredAddressCity') String? city});
}

/// @nodoc
class __$$PotentialStudentModelImplCopyWithImpl<$Res>
    extends _$PotentialStudentModelCopyWithImpl<$Res,
        _$PotentialStudentModelImpl>
    implements _$$PotentialStudentModelImplCopyWith<$Res> {
  __$$PotentialStudentModelImplCopyWithImpl(_$PotentialStudentModelImpl _value,
      $Res Function(_$PotentialStudentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentPhone = null,
    Object? name = null,
    Object? avatar = null,
    Object? gender = null,
    Object? birth = freezed,
    Object? relationship = freezed,
    Object? relationshipDesc = null,
    Object? relationshipEngDesc = null,
    Object? identity = null,
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_$PotentialStudentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPhone: null == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipDesc: null == relationshipDesc
          ? _value.relationshipDesc
          : relationshipDesc // ignore: cast_nullable_to_non_nullable
              as String,
      relationshipEngDesc: null == relationshipEngDesc
          ? _value.relationshipEngDesc
          : relationshipEngDesc // ignore: cast_nullable_to_non_nullable
              as String,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotentialStudentModelImpl extends _PotentialStudentModel {
  const _$PotentialStudentModelImpl(
      {this.id,
      this.parentPhone = '',
      @JsonKey(name: 'studentName') required this.name,
      @JsonKey(name: 'studentAvatar') required this.avatar,
      @JsonKey(name: 'studentSex')
      @GenderIntJsonConverter()
      this.gender = Gender.unknown,
      @JsonKey(name: 'studentBirth') @SimpleDateTimeJsonConverter() this.birth,
      @JsonKey(name: 'familyRelationship') this.relationship,
      @JsonKey(name: 'familyRelationshipDesc') this.relationshipDesc = '',
      @JsonKey(name: 'familyRelationshipEngDesc') this.relationshipEngDesc = '',
      @JsonKey(name: 'studentIdentity') this.identity = '',
      @JsonKey(name: 'registeredAddressProvince') this.province,
      @JsonKey(name: 'registeredAddressCity') this.city})
      : super._();

  factory _$PotentialStudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PotentialStudentModelImplFromJson(json);

  /// 学生主键
  @override
  final int? id;

  /// 家长电话
  @override
  @JsonKey()
  final String parentPhone;

  /// 学生姓名
  @override
  @JsonKey(name: 'studentName')
  final String name;

  /// 学生头像
  @override
  @JsonKey(name: 'studentAvatar')
  final String avatar;

  /// 学生性别
  @override
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  final Gender gender;

  /// 学生出生年月日(yyyy-MM-dd)
  @override
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  final DateTime? birth;

  /// 家庭关系
  @override
  @JsonKey(name: 'familyRelationship')
  final int? relationship;

  /// 家庭关系中文描述
  @override
  @JsonKey(name: 'familyRelationshipDesc')
  final String relationshipDesc;

  /// 家庭关系英文描述
  @override
  @JsonKey(name: 'familyRelationshipEngDesc')
  final String relationshipEngDesc;

  /// 身份证
  @override
  @JsonKey(name: 'studentIdentity')
  final String identity;

  /// 所在省份
  @override
  @JsonKey(name: 'registeredAddressProvince')
  final String? province;

  /// 所在城市
  @override
  @JsonKey(name: 'registeredAddressCity')
  final String? city;

  @override
  String toString() {
    return 'PotentialStudentModel(id: $id, parentPhone: $parentPhone, name: $name, avatar: $avatar, gender: $gender, birth: $birth, relationship: $relationship, relationshipDesc: $relationshipDesc, relationshipEngDesc: $relationshipEngDesc, identity: $identity, province: $province, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotentialStudentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.relationshipDesc, relationshipDesc) ||
                other.relationshipDesc == relationshipDesc) &&
            (identical(other.relationshipEngDesc, relationshipEngDesc) ||
                other.relationshipEngDesc == relationshipEngDesc) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parentPhone,
      name,
      avatar,
      gender,
      birth,
      relationship,
      relationshipDesc,
      relationshipEngDesc,
      identity,
      province,
      city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PotentialStudentModelImplCopyWith<_$PotentialStudentModelImpl>
      get copyWith => __$$PotentialStudentModelImplCopyWithImpl<
          _$PotentialStudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotentialStudentModelImplToJson(
      this,
    );
  }
}

abstract class _PotentialStudentModel extends PotentialStudentModel {
  const factory _PotentialStudentModel(
      {final int? id,
      final String parentPhone,
      @JsonKey(name: 'studentName') required final String name,
      @JsonKey(name: 'studentAvatar') required final String avatar,
      @JsonKey(name: 'studentSex')
      @GenderIntJsonConverter()
      final Gender gender,
      @JsonKey(name: 'studentBirth')
      @SimpleDateTimeJsonConverter()
      final DateTime? birth,
      @JsonKey(name: 'familyRelationship') final int? relationship,
      @JsonKey(name: 'familyRelationshipDesc') final String relationshipDesc,
      @JsonKey(name: 'familyRelationshipEngDesc')
      final String relationshipEngDesc,
      @JsonKey(name: 'studentIdentity') final String identity,
      @JsonKey(name: 'registeredAddressProvince') final String? province,
      @JsonKey(name: 'registeredAddressCity')
      final String? city}) = _$PotentialStudentModelImpl;
  const _PotentialStudentModel._() : super._();

  factory _PotentialStudentModel.fromJson(Map<String, dynamic> json) =
      _$PotentialStudentModelImpl.fromJson;

  @override

  /// 学生主键
  int? get id;
  @override

  /// 家长电话
  String get parentPhone;
  @override

  /// 学生姓名
  @JsonKey(name: 'studentName')
  String get name;
  @override

  /// 学生头像
  @JsonKey(name: 'studentAvatar')
  String get avatar;
  @override

  /// 学生性别
  @JsonKey(name: 'studentSex')
  @GenderIntJsonConverter()
  Gender get gender;
  @override

  /// 学生出生年月日(yyyy-MM-dd)
  @JsonKey(name: 'studentBirth')
  @SimpleDateTimeJsonConverter()
  DateTime? get birth;
  @override

  /// 家庭关系
  @JsonKey(name: 'familyRelationship')
  int? get relationship;
  @override

  /// 家庭关系中文描述
  @JsonKey(name: 'familyRelationshipDesc')
  String get relationshipDesc;
  @override

  /// 家庭关系英文描述
  @JsonKey(name: 'familyRelationshipEngDesc')
  String get relationshipEngDesc;
  @override

  /// 身份证
  @JsonKey(name: 'studentIdentity')
  String get identity;
  @override

  /// 所在省份
  @JsonKey(name: 'registeredAddressProvince')
  String? get province;
  @override

  /// 所在城市
  @JsonKey(name: 'registeredAddressCity')
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$PotentialStudentModelImplCopyWith<_$PotentialStudentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeletePotentialReq _$DeletePotentialReqFromJson(Map<String, dynamic> json) {
  return _DeletePotentialReq.fromJson(json);
}

/// @nodoc
mixin _$DeletePotentialReq {
  @JsonKey(name: 'potentialId')
  int get deletePotentialId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mergeToPotentialId')
  int get mergePotentialId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  int get mergeStudentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletePotentialReqCopyWith<DeletePotentialReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePotentialReqCopyWith<$Res> {
  factory $DeletePotentialReqCopyWith(
          DeletePotentialReq value, $Res Function(DeletePotentialReq) then) =
      _$DeletePotentialReqCopyWithImpl<$Res, DeletePotentialReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'potentialId') int deletePotentialId,
      @JsonKey(name: 'mergeToPotentialId') int mergePotentialId,
      @JsonKey(name: 'studentId') int mergeStudentId});
}

/// @nodoc
class _$DeletePotentialReqCopyWithImpl<$Res, $Val extends DeletePotentialReq>
    implements $DeletePotentialReqCopyWith<$Res> {
  _$DeletePotentialReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletePotentialId = null,
    Object? mergePotentialId = null,
    Object? mergeStudentId = null,
  }) {
    return _then(_value.copyWith(
      deletePotentialId: null == deletePotentialId
          ? _value.deletePotentialId
          : deletePotentialId // ignore: cast_nullable_to_non_nullable
              as int,
      mergePotentialId: null == mergePotentialId
          ? _value.mergePotentialId
          : mergePotentialId // ignore: cast_nullable_to_non_nullable
              as int,
      mergeStudentId: null == mergeStudentId
          ? _value.mergeStudentId
          : mergeStudentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletePotentialReqImplCopyWith<$Res>
    implements $DeletePotentialReqCopyWith<$Res> {
  factory _$$DeletePotentialReqImplCopyWith(_$DeletePotentialReqImpl value,
          $Res Function(_$DeletePotentialReqImpl) then) =
      __$$DeletePotentialReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'potentialId') int deletePotentialId,
      @JsonKey(name: 'mergeToPotentialId') int mergePotentialId,
      @JsonKey(name: 'studentId') int mergeStudentId});
}

/// @nodoc
class __$$DeletePotentialReqImplCopyWithImpl<$Res>
    extends _$DeletePotentialReqCopyWithImpl<$Res, _$DeletePotentialReqImpl>
    implements _$$DeletePotentialReqImplCopyWith<$Res> {
  __$$DeletePotentialReqImplCopyWithImpl(_$DeletePotentialReqImpl _value,
      $Res Function(_$DeletePotentialReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletePotentialId = null,
    Object? mergePotentialId = null,
    Object? mergeStudentId = null,
  }) {
    return _then(_$DeletePotentialReqImpl(
      deletePotentialId: null == deletePotentialId
          ? _value.deletePotentialId
          : deletePotentialId // ignore: cast_nullable_to_non_nullable
              as int,
      mergePotentialId: null == mergePotentialId
          ? _value.mergePotentialId
          : mergePotentialId // ignore: cast_nullable_to_non_nullable
              as int,
      mergeStudentId: null == mergeStudentId
          ? _value.mergeStudentId
          : mergeStudentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletePotentialReqImpl extends _DeletePotentialReq {
  const _$DeletePotentialReqImpl(
      {@JsonKey(name: 'potentialId') required this.deletePotentialId,
      @JsonKey(name: 'mergeToPotentialId') required this.mergePotentialId,
      @JsonKey(name: 'studentId') required this.mergeStudentId})
      : super._();

  factory _$DeletePotentialReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletePotentialReqImplFromJson(json);

  @override
  @JsonKey(name: 'potentialId')
  final int deletePotentialId;
  @override
  @JsonKey(name: 'mergeToPotentialId')
  final int mergePotentialId;
  @override
  @JsonKey(name: 'studentId')
  final int mergeStudentId;

  @override
  String toString() {
    return 'DeletePotentialReq(deletePotentialId: $deletePotentialId, mergePotentialId: $mergePotentialId, mergeStudentId: $mergeStudentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePotentialReqImpl &&
            (identical(other.deletePotentialId, deletePotentialId) ||
                other.deletePotentialId == deletePotentialId) &&
            (identical(other.mergePotentialId, mergePotentialId) ||
                other.mergePotentialId == mergePotentialId) &&
            (identical(other.mergeStudentId, mergeStudentId) ||
                other.mergeStudentId == mergeStudentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deletePotentialId, mergePotentialId, mergeStudentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePotentialReqImplCopyWith<_$DeletePotentialReqImpl> get copyWith =>
      __$$DeletePotentialReqImplCopyWithImpl<_$DeletePotentialReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletePotentialReqImplToJson(
      this,
    );
  }
}

abstract class _DeletePotentialReq extends DeletePotentialReq {
  const factory _DeletePotentialReq(
      {@JsonKey(name: 'potentialId') required final int deletePotentialId,
      @JsonKey(name: 'mergeToPotentialId') required final int mergePotentialId,
      @JsonKey(name: 'studentId')
      required final int mergeStudentId}) = _$DeletePotentialReqImpl;
  const _DeletePotentialReq._() : super._();

  factory _DeletePotentialReq.fromJson(Map<String, dynamic> json) =
      _$DeletePotentialReqImpl.fromJson;

  @override
  @JsonKey(name: 'potentialId')
  int get deletePotentialId;
  @override
  @JsonKey(name: 'mergeToPotentialId')
  int get mergePotentialId;
  @override
  @JsonKey(name: 'studentId')
  int get mergeStudentId;
  @override
  @JsonKey(ignore: true)
  _$$DeletePotentialReqImplCopyWith<_$DeletePotentialReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
