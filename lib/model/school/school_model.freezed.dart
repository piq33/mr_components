// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) {
  return _SchoolModel.fromJson(json);
}

/// @nodoc
mixin _$SchoolModel {
  /// 学校id
  @JsonKey(name: 'schoolId')
  int get id => throw _privateConstructorUsedError;

  /// 学校编码
  @JsonKey(name: 'schoolCode')
  String? get code => throw _privateConstructorUsedError;

  /// 学校名称
  @JsonKey(name: 'schoolName')
  String get name => throw _privateConstructorUsedError;

  /// 是否当前学校
  @JsonKey(name: 'curSchoolFlag')
  bool get curSchool => throw _privateConstructorUsedError;

  /// 关联学年学期信息
  @JsonKey(name: 'schoolYearTermVOList')
  List<YearTermModel> get yearTermList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolModelCopyWith<SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolModelCopyWith<$Res> {
  factory $SchoolModelCopyWith(
          SchoolModel value, $Res Function(SchoolModel) then) =
      _$SchoolModelCopyWithImpl<$Res, SchoolModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schoolId') int id,
      @JsonKey(name: 'schoolCode') String? code,
      @JsonKey(name: 'schoolName') String name,
      @JsonKey(name: 'curSchoolFlag') bool curSchool,
      @JsonKey(name: 'schoolYearTermVOList') List<YearTermModel> yearTermList});
}

/// @nodoc
class _$SchoolModelCopyWithImpl<$Res, $Val extends SchoolModel>
    implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = freezed,
    Object? name = null,
    Object? curSchool = null,
    Object? yearTermList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      curSchool: null == curSchool
          ? _value.curSchool
          : curSchool // ignore: cast_nullable_to_non_nullable
              as bool,
      yearTermList: null == yearTermList
          ? _value.yearTermList
          : yearTermList // ignore: cast_nullable_to_non_nullable
              as List<YearTermModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolModelImplCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$$SchoolModelImplCopyWith(
          _$SchoolModelImpl value, $Res Function(_$SchoolModelImpl) then) =
      __$$SchoolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schoolId') int id,
      @JsonKey(name: 'schoolCode') String? code,
      @JsonKey(name: 'schoolName') String name,
      @JsonKey(name: 'curSchoolFlag') bool curSchool,
      @JsonKey(name: 'schoolYearTermVOList') List<YearTermModel> yearTermList});
}

/// @nodoc
class __$$SchoolModelImplCopyWithImpl<$Res>
    extends _$SchoolModelCopyWithImpl<$Res, _$SchoolModelImpl>
    implements _$$SchoolModelImplCopyWith<$Res> {
  __$$SchoolModelImplCopyWithImpl(
      _$SchoolModelImpl _value, $Res Function(_$SchoolModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = freezed,
    Object? name = null,
    Object? curSchool = null,
    Object? yearTermList = null,
  }) {
    return _then(_$SchoolModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      curSchool: null == curSchool
          ? _value.curSchool
          : curSchool // ignore: cast_nullable_to_non_nullable
              as bool,
      yearTermList: null == yearTermList
          ? _value._yearTermList
          : yearTermList // ignore: cast_nullable_to_non_nullable
              as List<YearTermModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolModelImpl extends _SchoolModel {
  const _$SchoolModelImpl(
      {@JsonKey(name: 'schoolId') required this.id,
      @JsonKey(name: 'schoolCode') this.code,
      @JsonKey(name: 'schoolName') this.name = '',
      @JsonKey(name: 'curSchoolFlag') this.curSchool = false,
      @JsonKey(name: 'schoolYearTermVOList')
      final List<YearTermModel> yearTermList = const []})
      : _yearTermList = yearTermList,
        super._();

  factory _$SchoolModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolModelImplFromJson(json);

  /// 学校id
  @override
  @JsonKey(name: 'schoolId')
  final int id;

  /// 学校编码
  @override
  @JsonKey(name: 'schoolCode')
  final String? code;

  /// 学校名称
  @override
  @JsonKey(name: 'schoolName')
  final String name;

  /// 是否当前学校
  @override
  @JsonKey(name: 'curSchoolFlag')
  final bool curSchool;

  /// 关联学年学期信息
  final List<YearTermModel> _yearTermList;

  /// 关联学年学期信息
  @override
  @JsonKey(name: 'schoolYearTermVOList')
  List<YearTermModel> get yearTermList {
    if (_yearTermList is EqualUnmodifiableListView) return _yearTermList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearTermList);
  }

  @override
  String toString() {
    return 'SchoolModel(id: $id, code: $code, name: $name, curSchool: $curSchool, yearTermList: $yearTermList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.curSchool, curSchool) ||
                other.curSchool == curSchool) &&
            const DeepCollectionEquality()
                .equals(other._yearTermList, _yearTermList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, curSchool,
      const DeepCollectionEquality().hash(_yearTermList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolModelImplCopyWith<_$SchoolModelImpl> get copyWith =>
      __$$SchoolModelImplCopyWithImpl<_$SchoolModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolModelImplToJson(
      this,
    );
  }
}

abstract class _SchoolModel extends SchoolModel {
  const factory _SchoolModel(
      {@JsonKey(name: 'schoolId') required final int id,
      @JsonKey(name: 'schoolCode') final String? code,
      @JsonKey(name: 'schoolName') final String name,
      @JsonKey(name: 'curSchoolFlag') final bool curSchool,
      @JsonKey(name: 'schoolYearTermVOList')
      final List<YearTermModel> yearTermList}) = _$SchoolModelImpl;
  const _SchoolModel._() : super._();

  factory _SchoolModel.fromJson(Map<String, dynamic> json) =
      _$SchoolModelImpl.fromJson;

  @override

  /// 学校id
  @JsonKey(name: 'schoolId')
  int get id;
  @override

  /// 学校编码
  @JsonKey(name: 'schoolCode')
  String? get code;
  @override

  /// 学校名称
  @JsonKey(name: 'schoolName')
  String get name;
  @override

  /// 是否当前学校
  @JsonKey(name: 'curSchoolFlag')
  bool get curSchool;
  @override

  /// 关联学年学期信息
  @JsonKey(name: 'schoolYearTermVOList')
  List<YearTermModel> get yearTermList;
  @override
  @JsonKey(ignore: true)
  _$$SchoolModelImplCopyWith<_$SchoolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterSchoolModel _$FilterSchoolModelFromJson(Map<String, dynamic> json) {
  return _FilterSchoolModel.fromJson(json);
}

/// @nodoc
mixin _$FilterSchoolModel {
  /// 学校编码
  @JsonKey(name: 'schoolCode')
  String? get code => throw _privateConstructorUsedError;

  /// 学校名称
  @JsonKey(name: 'schoolName')
  String get name => throw _privateConstructorUsedError;

  /// 关联学年学期信息
  List<FilterYearTermModel> get yearTermList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterSchoolModelCopyWith<FilterSchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSchoolModelCopyWith<$Res> {
  factory $FilterSchoolModelCopyWith(
          FilterSchoolModel value, $Res Function(FilterSchoolModel) then) =
      _$FilterSchoolModelCopyWithImpl<$Res, FilterSchoolModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schoolCode') String? code,
      @JsonKey(name: 'schoolName') String name,
      List<FilterYearTermModel> yearTermList});
}

/// @nodoc
class _$FilterSchoolModelCopyWithImpl<$Res, $Val extends FilterSchoolModel>
    implements $FilterSchoolModelCopyWith<$Res> {
  _$FilterSchoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = null,
    Object? yearTermList = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermList: null == yearTermList
          ? _value.yearTermList
          : yearTermList // ignore: cast_nullable_to_non_nullable
              as List<FilterYearTermModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSchoolModelImplCopyWith<$Res>
    implements $FilterSchoolModelCopyWith<$Res> {
  factory _$$FilterSchoolModelImplCopyWith(_$FilterSchoolModelImpl value,
          $Res Function(_$FilterSchoolModelImpl) then) =
      __$$FilterSchoolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schoolCode') String? code,
      @JsonKey(name: 'schoolName') String name,
      List<FilterYearTermModel> yearTermList});
}

/// @nodoc
class __$$FilterSchoolModelImplCopyWithImpl<$Res>
    extends _$FilterSchoolModelCopyWithImpl<$Res, _$FilterSchoolModelImpl>
    implements _$$FilterSchoolModelImplCopyWith<$Res> {
  __$$FilterSchoolModelImplCopyWithImpl(_$FilterSchoolModelImpl _value,
      $Res Function(_$FilterSchoolModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = null,
    Object? yearTermList = null,
  }) {
    return _then(_$FilterSchoolModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermList: null == yearTermList
          ? _value._yearTermList
          : yearTermList // ignore: cast_nullable_to_non_nullable
              as List<FilterYearTermModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterSchoolModelImpl extends _FilterSchoolModel {
  const _$FilterSchoolModelImpl(
      {@JsonKey(name: 'schoolCode') this.code,
      @JsonKey(name: 'schoolName') this.name = '',
      final List<FilterYearTermModel> yearTermList = const []})
      : _yearTermList = yearTermList,
        super._();

  factory _$FilterSchoolModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterSchoolModelImplFromJson(json);

  /// 学校编码
  @override
  @JsonKey(name: 'schoolCode')
  final String? code;

  /// 学校名称
  @override
  @JsonKey(name: 'schoolName')
  final String name;

  /// 关联学年学期信息
  final List<FilterYearTermModel> _yearTermList;

  /// 关联学年学期信息
  @override
  @JsonKey()
  List<FilterYearTermModel> get yearTermList {
    if (_yearTermList is EqualUnmodifiableListView) return _yearTermList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearTermList);
  }

  @override
  String toString() {
    return 'FilterSchoolModel(code: $code, name: $name, yearTermList: $yearTermList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSchoolModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._yearTermList, _yearTermList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name,
      const DeepCollectionEquality().hash(_yearTermList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSchoolModelImplCopyWith<_$FilterSchoolModelImpl> get copyWith =>
      __$$FilterSchoolModelImplCopyWithImpl<_$FilterSchoolModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterSchoolModelImplToJson(
      this,
    );
  }
}

abstract class _FilterSchoolModel extends FilterSchoolModel {
  const factory _FilterSchoolModel(
      {@JsonKey(name: 'schoolCode') final String? code,
      @JsonKey(name: 'schoolName') final String name,
      final List<FilterYearTermModel> yearTermList}) = _$FilterSchoolModelImpl;
  const _FilterSchoolModel._() : super._();

  factory _FilterSchoolModel.fromJson(Map<String, dynamic> json) =
      _$FilterSchoolModelImpl.fromJson;

  @override

  /// 学校编码
  @JsonKey(name: 'schoolCode')
  String? get code;
  @override

  /// 学校名称
  @JsonKey(name: 'schoolName')
  String get name;
  @override

  /// 关联学年学期信息
  List<FilterYearTermModel> get yearTermList;
  @override
  @JsonKey(ignore: true)
  _$$FilterSchoolModelImplCopyWith<_$FilterSchoolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YearTermModel _$YearTermModelFromJson(Map<String, dynamic> json) {
  return _YearTermModel.fromJson(json);
}

/// @nodoc
mixin _$YearTermModel {
  /// 学期编码
  @JsonKey(name: 'yearTermCode')
  String get code => throw _privateConstructorUsedError;

  /// 学期名称
  @JsonKey(name: 'yearTermName')
  String get name => throw _privateConstructorUsedError;

  /// 学期英文名称
  @JsonKey(name: 'yearTermEngName')
  String get engName => throw _privateConstructorUsedError;

  /// 首个就读学年学期编码
  @JsonKey(name: 'firstYearTermCode')
  String? get firstCode => throw _privateConstructorUsedError;

  /// 是否当前学年学期
  @JsonKey(name: 'curYearTermFlag')
  bool get curYearTerm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YearTermModelCopyWith<YearTermModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearTermModelCopyWith<$Res> {
  factory $YearTermModelCopyWith(
          YearTermModel value, $Res Function(YearTermModel) then) =
      _$YearTermModelCopyWithImpl<$Res, YearTermModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'yearTermCode') String code,
      @JsonKey(name: 'yearTermName') String name,
      @JsonKey(name: 'yearTermEngName') String engName,
      @JsonKey(name: 'firstYearTermCode') String? firstCode,
      @JsonKey(name: 'curYearTermFlag') bool curYearTerm});
}

/// @nodoc
class _$YearTermModelCopyWithImpl<$Res, $Val extends YearTermModel>
    implements $YearTermModelCopyWith<$Res> {
  _$YearTermModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? engName = null,
    Object? firstCode = freezed,
    Object? curYearTerm = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      firstCode: freezed == firstCode
          ? _value.firstCode
          : firstCode // ignore: cast_nullable_to_non_nullable
              as String?,
      curYearTerm: null == curYearTerm
          ? _value.curYearTerm
          : curYearTerm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearTermModelImplCopyWith<$Res>
    implements $YearTermModelCopyWith<$Res> {
  factory _$$YearTermModelImplCopyWith(
          _$YearTermModelImpl value, $Res Function(_$YearTermModelImpl) then) =
      __$$YearTermModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'yearTermCode') String code,
      @JsonKey(name: 'yearTermName') String name,
      @JsonKey(name: 'yearTermEngName') String engName,
      @JsonKey(name: 'firstYearTermCode') String? firstCode,
      @JsonKey(name: 'curYearTermFlag') bool curYearTerm});
}

/// @nodoc
class __$$YearTermModelImplCopyWithImpl<$Res>
    extends _$YearTermModelCopyWithImpl<$Res, _$YearTermModelImpl>
    implements _$$YearTermModelImplCopyWith<$Res> {
  __$$YearTermModelImplCopyWithImpl(
      _$YearTermModelImpl _value, $Res Function(_$YearTermModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? engName = null,
    Object? firstCode = freezed,
    Object? curYearTerm = null,
  }) {
    return _then(_$YearTermModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      firstCode: freezed == firstCode
          ? _value.firstCode
          : firstCode // ignore: cast_nullable_to_non_nullable
              as String?,
      curYearTerm: null == curYearTerm
          ? _value.curYearTerm
          : curYearTerm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearTermModelImpl extends _YearTermModel {
  const _$YearTermModelImpl(
      {@JsonKey(name: 'yearTermCode') required this.code,
      @JsonKey(name: 'yearTermName') this.name = '',
      @JsonKey(name: 'yearTermEngName') this.engName = '',
      @JsonKey(name: 'firstYearTermCode') this.firstCode,
      @JsonKey(name: 'curYearTermFlag') this.curYearTerm = false})
      : super._();

  factory _$YearTermModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearTermModelImplFromJson(json);

  /// 学期编码
  @override
  @JsonKey(name: 'yearTermCode')
  final String code;

  /// 学期名称
  @override
  @JsonKey(name: 'yearTermName')
  final String name;

  /// 学期英文名称
  @override
  @JsonKey(name: 'yearTermEngName')
  final String engName;

  /// 首个就读学年学期编码
  @override
  @JsonKey(name: 'firstYearTermCode')
  final String? firstCode;

  /// 是否当前学年学期
  @override
  @JsonKey(name: 'curYearTermFlag')
  final bool curYearTerm;

  @override
  String toString() {
    return 'YearTermModel(code: $code, name: $name, engName: $engName, firstCode: $firstCode, curYearTerm: $curYearTerm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearTermModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.firstCode, firstCode) ||
                other.firstCode == firstCode) &&
            (identical(other.curYearTerm, curYearTerm) ||
                other.curYearTerm == curYearTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, engName, firstCode, curYearTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearTermModelImplCopyWith<_$YearTermModelImpl> get copyWith =>
      __$$YearTermModelImplCopyWithImpl<_$YearTermModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearTermModelImplToJson(
      this,
    );
  }
}

abstract class _YearTermModel extends YearTermModel {
  const factory _YearTermModel(
          {@JsonKey(name: 'yearTermCode') required final String code,
          @JsonKey(name: 'yearTermName') final String name,
          @JsonKey(name: 'yearTermEngName') final String engName,
          @JsonKey(name: 'firstYearTermCode') final String? firstCode,
          @JsonKey(name: 'curYearTermFlag') final bool curYearTerm}) =
      _$YearTermModelImpl;
  const _YearTermModel._() : super._();

  factory _YearTermModel.fromJson(Map<String, dynamic> json) =
      _$YearTermModelImpl.fromJson;

  @override

  /// 学期编码
  @JsonKey(name: 'yearTermCode')
  String get code;
  @override

  /// 学期名称
  @JsonKey(name: 'yearTermName')
  String get name;
  @override

  /// 学期英文名称
  @JsonKey(name: 'yearTermEngName')
  String get engName;
  @override

  /// 首个就读学年学期编码
  @JsonKey(name: 'firstYearTermCode')
  String? get firstCode;
  @override

  /// 是否当前学年学期
  @JsonKey(name: 'curYearTermFlag')
  bool get curYearTerm;
  @override
  @JsonKey(ignore: true)
  _$$YearTermModelImplCopyWith<_$YearTermModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterYearTermModel _$FilterYearTermModelFromJson(Map<String, dynamic> json) {
  return _FilterYearTermModel.fromJson(json);
}

/// @nodoc
mixin _$FilterYearTermModel {
  /// 学期编码
  @JsonKey(name: 'yearTermCode')
  String? get code => throw _privateConstructorUsedError;

  /// 学期名称
  @JsonKey(name: 'yearTermName')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterYearTermModelCopyWith<FilterYearTermModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterYearTermModelCopyWith<$Res> {
  factory $FilterYearTermModelCopyWith(
          FilterYearTermModel value, $Res Function(FilterYearTermModel) then) =
      _$FilterYearTermModelCopyWithImpl<$Res, FilterYearTermModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'yearTermCode') String? code,
      @JsonKey(name: 'yearTermName') String name});
}

/// @nodoc
class _$FilterYearTermModelCopyWithImpl<$Res, $Val extends FilterYearTermModel>
    implements $FilterYearTermModelCopyWith<$Res> {
  _$FilterYearTermModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterYearTermModelImplCopyWith<$Res>
    implements $FilterYearTermModelCopyWith<$Res> {
  factory _$$FilterYearTermModelImplCopyWith(_$FilterYearTermModelImpl value,
          $Res Function(_$FilterYearTermModelImpl) then) =
      __$$FilterYearTermModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'yearTermCode') String? code,
      @JsonKey(name: 'yearTermName') String name});
}

/// @nodoc
class __$$FilterYearTermModelImplCopyWithImpl<$Res>
    extends _$FilterYearTermModelCopyWithImpl<$Res, _$FilterYearTermModelImpl>
    implements _$$FilterYearTermModelImplCopyWith<$Res> {
  __$$FilterYearTermModelImplCopyWithImpl(_$FilterYearTermModelImpl _value,
      $Res Function(_$FilterYearTermModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = null,
  }) {
    return _then(_$FilterYearTermModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterYearTermModelImpl extends _FilterYearTermModel {
  const _$FilterYearTermModelImpl(
      {@JsonKey(name: 'yearTermCode') this.code,
      @JsonKey(name: 'yearTermName') this.name = ''})
      : super._();

  factory _$FilterYearTermModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterYearTermModelImplFromJson(json);

  /// 学期编码
  @override
  @JsonKey(name: 'yearTermCode')
  final String? code;

  /// 学期名称
  @override
  @JsonKey(name: 'yearTermName')
  final String name;

  @override
  String toString() {
    return 'FilterYearTermModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterYearTermModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterYearTermModelImplCopyWith<_$FilterYearTermModelImpl> get copyWith =>
      __$$FilterYearTermModelImplCopyWithImpl<_$FilterYearTermModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterYearTermModelImplToJson(
      this,
    );
  }
}

abstract class _FilterYearTermModel extends FilterYearTermModel {
  const factory _FilterYearTermModel(
          {@JsonKey(name: 'yearTermCode') final String? code,
          @JsonKey(name: 'yearTermName') final String name}) =
      _$FilterYearTermModelImpl;
  const _FilterYearTermModel._() : super._();

  factory _FilterYearTermModel.fromJson(Map<String, dynamic> json) =
      _$FilterYearTermModelImpl.fromJson;

  @override

  /// 学期编码
  @JsonKey(name: 'yearTermCode')
  String? get code;
  @override

  /// 学期名称
  @JsonKey(name: 'yearTermName')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FilterYearTermModelImplCopyWith<_$FilterYearTermModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolCalendarEventReq _$SchoolCalendarEventReqFromJson(
    Map<String, dynamic> json) {
  return _SchoolCalendarEventReq.fromJson(json);
}

/// @nodoc
mixin _$SchoolCalendarEventReq {
  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 开始日期
  String get startDate => throw _privateConstructorUsedError;

  /// 结束日期
  String get endDate => throw _privateConstructorUsedError;

  /// 事件类型
  List<int>? get typeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCalendarEventReqCopyWith<SchoolCalendarEventReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCalendarEventReqCopyWith<$Res> {
  factory $SchoolCalendarEventReqCopyWith(SchoolCalendarEventReq value,
          $Res Function(SchoolCalendarEventReq) then) =
      _$SchoolCalendarEventReqCopyWithImpl<$Res, SchoolCalendarEventReq>;
  @useResult
  $Res call(
      {String schoolCode,
      String? yearTermCode,
      String startDate,
      String endDate,
      List<int>? typeList});
}

/// @nodoc
class _$SchoolCalendarEventReqCopyWithImpl<$Res,
        $Val extends SchoolCalendarEventReq>
    implements $SchoolCalendarEventReqCopyWith<$Res> {
  _$SchoolCalendarEventReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? yearTermCode = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? typeList = freezed,
  }) {
    return _then(_value.copyWith(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      typeList: freezed == typeList
          ? _value.typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolCalendarEventReqImplCopyWith<$Res>
    implements $SchoolCalendarEventReqCopyWith<$Res> {
  factory _$$SchoolCalendarEventReqImplCopyWith(
          _$SchoolCalendarEventReqImpl value,
          $Res Function(_$SchoolCalendarEventReqImpl) then) =
      __$$SchoolCalendarEventReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolCode,
      String? yearTermCode,
      String startDate,
      String endDate,
      List<int>? typeList});
}

/// @nodoc
class __$$SchoolCalendarEventReqImplCopyWithImpl<$Res>
    extends _$SchoolCalendarEventReqCopyWithImpl<$Res,
        _$SchoolCalendarEventReqImpl>
    implements _$$SchoolCalendarEventReqImplCopyWith<$Res> {
  __$$SchoolCalendarEventReqImplCopyWithImpl(
      _$SchoolCalendarEventReqImpl _value,
      $Res Function(_$SchoolCalendarEventReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? yearTermCode = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? typeList = freezed,
  }) {
    return _then(_$SchoolCalendarEventReqImpl(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      typeList: freezed == typeList
          ? _value._typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolCalendarEventReqImpl extends _SchoolCalendarEventReq {
  const _$SchoolCalendarEventReqImpl(
      {required this.schoolCode,
      this.yearTermCode,
      required this.startDate,
      required this.endDate,
      final List<int>? typeList})
      : _typeList = typeList,
        super._();

  factory _$SchoolCalendarEventReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolCalendarEventReqImplFromJson(json);

  /// 学校编码
  @override
  final String schoolCode;

  /// 学年学期编码
  @override
  final String? yearTermCode;

  /// 开始日期
  @override
  final String startDate;

  /// 结束日期
  @override
  final String endDate;

  /// 事件类型
  final List<int>? _typeList;

  /// 事件类型
  @override
  List<int>? get typeList {
    final value = _typeList;
    if (value == null) return null;
    if (_typeList is EqualUnmodifiableListView) return _typeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchoolCalendarEventReq(schoolCode: $schoolCode, yearTermCode: $yearTermCode, startDate: $startDate, endDate: $endDate, typeList: $typeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolCalendarEventReqImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._typeList, _typeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolCode, yearTermCode,
      startDate, endDate, const DeepCollectionEquality().hash(_typeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolCalendarEventReqImplCopyWith<_$SchoolCalendarEventReqImpl>
      get copyWith => __$$SchoolCalendarEventReqImplCopyWithImpl<
          _$SchoolCalendarEventReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolCalendarEventReqImplToJson(
      this,
    );
  }
}

abstract class _SchoolCalendarEventReq extends SchoolCalendarEventReq {
  const factory _SchoolCalendarEventReq(
      {required final String schoolCode,
      final String? yearTermCode,
      required final String startDate,
      required final String endDate,
      final List<int>? typeList}) = _$SchoolCalendarEventReqImpl;
  const _SchoolCalendarEventReq._() : super._();

  factory _SchoolCalendarEventReq.fromJson(Map<String, dynamic> json) =
      _$SchoolCalendarEventReqImpl.fromJson;

  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学年学期编码
  String? get yearTermCode;
  @override

  /// 开始日期
  String get startDate;
  @override

  /// 结束日期
  String get endDate;
  @override

  /// 事件类型
  List<int>? get typeList;
  @override
  @JsonKey(ignore: true)
  _$$SchoolCalendarEventReqImplCopyWith<_$SchoolCalendarEventReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SchoolCalendarEventModel _$SchoolCalendarEventModelFromJson(
    Map<String, dynamic> json) {
  return _SchoolCalendarEventModel.fromJson(json);
}

/// @nodoc
mixin _$SchoolCalendarEventModel {
  /// 日历id
  @String2IntJsonConverter()
  int get calendarId => throw _privateConstructorUsedError;

  /// 事件id
  @String2IntNullableJsonConverter()
  int? get eventId => throw _privateConstructorUsedError;

  /// 公历日期
  @EventDateJsonConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  /// 星期几
  @String2IntNullableJsonConverter()
  int? get week => throw _privateConstructorUsedError;

  /// 是否周末
  @JsonKey(name: 'weekend')
  @String2BoolJsonConverter()
  bool get isWeekend => throw _privateConstructorUsedError;

  /// 是否为工作日（包含调休在内需要上班的日子）,1为工作日(上课日),2为非工作日(放假)
  @JsonKey(name: 'workday')
  @String2BoolJsonConverter()
  bool get isWorkday => throw _privateConstructorUsedError;

  /// 公历年份
  @String2IntNullableJsonConverter()
  int? get year => throw _privateConstructorUsedError;

  /// 公历月份
  @EventMonthJsonConverter()
  int? get month => throw _privateConstructorUsedError;

  /// 公历一年中的第几天
  @String2IntNullableJsonConverter()
  int? get yearday => throw _privateConstructorUsedError;

  /// 公历一年中的第几周
  @EventYearWeekJsonConverter()
  int? get yearweek => throw _privateConstructorUsedError;

  /// 农历日期
  @EventDateJsonConverter()
  DateTime? get lunarDate => throw _privateConstructorUsedError;

  /// 农历年份
  @String2IntNullableJsonConverter()
  int? get lunarYear => throw _privateConstructorUsedError;

  /// 农历月份
  @EventMonthJsonConverter()
  int? get lunarMonth => throw _privateConstructorUsedError;

  /// 农历一年中的第几天
  @String2IntNullableJsonConverter()
  int? get lunarYearday => throw _privateConstructorUsedError;

  /// 节假日名称
  String get holidayCn => throw _privateConstructorUsedError;

  /// 事件标题
  String get title => throw _privateConstructorUsedError;

  /// 事件类型
  @CalendarTypeJsonConverter()
  CalendarType get type => throw _privateConstructorUsedError;

  /// 是否未法定节假日(三倍工资)
  @String2BoolJsonConverter()
  bool get isHolidayLegal => throw _privateConstructorUsedError;

  /// 节假日，这里使用两位数字枚举表示节假日，其中特殊数字10表示非节假日，特殊数字99表示全部节假日
  @HolidayTypeJsonConverter()
  HolidayType? get holiday => throw _privateConstructorUsedError;

  /// 其他节假日，枚举与节假日相同，表示同一天中的另一个节日，如 2020-10-01
  @HolidayTypeJsonConverter()
  HolidayType? get holidayOr => throw _privateConstructorUsedError;

  /// 节假日调休，枚举与节假日相同
  @HolidayTypeJsonConverter()
  HolidayType? get holidayOvertime => throw _privateConstructorUsedError;

  /// 是否为假期节假日（节日是否放假）
  @String2BoolJsonConverter()
  bool get holidayRecess => throw _privateConstructorUsedError;

  /// 是否为节日当天
  @String2BoolJsonConverter()
  bool get holidayToday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCalendarEventModelCopyWith<SchoolCalendarEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCalendarEventModelCopyWith<$Res> {
  factory $SchoolCalendarEventModelCopyWith(SchoolCalendarEventModel value,
          $Res Function(SchoolCalendarEventModel) then) =
      _$SchoolCalendarEventModelCopyWithImpl<$Res, SchoolCalendarEventModel>;
  @useResult
  $Res call(
      {@String2IntJsonConverter() int calendarId,
      @String2IntNullableJsonConverter() int? eventId,
      @EventDateJsonConverter() DateTime? date,
      @String2IntNullableJsonConverter() int? week,
      @JsonKey(name: 'weekend') @String2BoolJsonConverter() bool isWeekend,
      @JsonKey(name: 'workday') @String2BoolJsonConverter() bool isWorkday,
      @String2IntNullableJsonConverter() int? year,
      @EventMonthJsonConverter() int? month,
      @String2IntNullableJsonConverter() int? yearday,
      @EventYearWeekJsonConverter() int? yearweek,
      @EventDateJsonConverter() DateTime? lunarDate,
      @String2IntNullableJsonConverter() int? lunarYear,
      @EventMonthJsonConverter() int? lunarMonth,
      @String2IntNullableJsonConverter() int? lunarYearday,
      String holidayCn,
      String title,
      @CalendarTypeJsonConverter() CalendarType type,
      @String2BoolJsonConverter() bool isHolidayLegal,
      @HolidayTypeJsonConverter() HolidayType? holiday,
      @HolidayTypeJsonConverter() HolidayType? holidayOr,
      @HolidayTypeJsonConverter() HolidayType? holidayOvertime,
      @String2BoolJsonConverter() bool holidayRecess,
      @String2BoolJsonConverter() bool holidayToday});
}

/// @nodoc
class _$SchoolCalendarEventModelCopyWithImpl<$Res,
        $Val extends SchoolCalendarEventModel>
    implements $SchoolCalendarEventModelCopyWith<$Res> {
  _$SchoolCalendarEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarId = null,
    Object? eventId = freezed,
    Object? date = freezed,
    Object? week = freezed,
    Object? isWeekend = null,
    Object? isWorkday = null,
    Object? year = freezed,
    Object? month = freezed,
    Object? yearday = freezed,
    Object? yearweek = freezed,
    Object? lunarDate = freezed,
    Object? lunarYear = freezed,
    Object? lunarMonth = freezed,
    Object? lunarYearday = freezed,
    Object? holidayCn = null,
    Object? title = null,
    Object? type = null,
    Object? isHolidayLegal = null,
    Object? holiday = freezed,
    Object? holidayOr = freezed,
    Object? holidayOvertime = freezed,
    Object? holidayRecess = null,
    Object? holidayToday = null,
  }) {
    return _then(_value.copyWith(
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      isWeekend: null == isWeekend
          ? _value.isWeekend
          : isWeekend // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkday: null == isWorkday
          ? _value.isWorkday
          : isWorkday // ignore: cast_nullable_to_non_nullable
              as bool,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      yearday: freezed == yearday
          ? _value.yearday
          : yearday // ignore: cast_nullable_to_non_nullable
              as int?,
      yearweek: freezed == yearweek
          ? _value.yearweek
          : yearweek // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarDate: freezed == lunarDate
          ? _value.lunarDate
          : lunarDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lunarYear: freezed == lunarYear
          ? _value.lunarYear
          : lunarYear // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarMonth: freezed == lunarMonth
          ? _value.lunarMonth
          : lunarMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarYearday: freezed == lunarYearday
          ? _value.lunarYearday
          : lunarYearday // ignore: cast_nullable_to_non_nullable
              as int?,
      holidayCn: null == holidayCn
          ? _value.holidayCn
          : holidayCn // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CalendarType,
      isHolidayLegal: null == isHolidayLegal
          ? _value.isHolidayLegal
          : isHolidayLegal // ignore: cast_nullable_to_non_nullable
              as bool,
      holiday: freezed == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayOr: freezed == holidayOr
          ? _value.holidayOr
          : holidayOr // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayOvertime: freezed == holidayOvertime
          ? _value.holidayOvertime
          : holidayOvertime // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayRecess: null == holidayRecess
          ? _value.holidayRecess
          : holidayRecess // ignore: cast_nullable_to_non_nullable
              as bool,
      holidayToday: null == holidayToday
          ? _value.holidayToday
          : holidayToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolCalendarEventModelImplCopyWith<$Res>
    implements $SchoolCalendarEventModelCopyWith<$Res> {
  factory _$$SchoolCalendarEventModelImplCopyWith(
          _$SchoolCalendarEventModelImpl value,
          $Res Function(_$SchoolCalendarEventModelImpl) then) =
      __$$SchoolCalendarEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntJsonConverter() int calendarId,
      @String2IntNullableJsonConverter() int? eventId,
      @EventDateJsonConverter() DateTime? date,
      @String2IntNullableJsonConverter() int? week,
      @JsonKey(name: 'weekend') @String2BoolJsonConverter() bool isWeekend,
      @JsonKey(name: 'workday') @String2BoolJsonConverter() bool isWorkday,
      @String2IntNullableJsonConverter() int? year,
      @EventMonthJsonConverter() int? month,
      @String2IntNullableJsonConverter() int? yearday,
      @EventYearWeekJsonConverter() int? yearweek,
      @EventDateJsonConverter() DateTime? lunarDate,
      @String2IntNullableJsonConverter() int? lunarYear,
      @EventMonthJsonConverter() int? lunarMonth,
      @String2IntNullableJsonConverter() int? lunarYearday,
      String holidayCn,
      String title,
      @CalendarTypeJsonConverter() CalendarType type,
      @String2BoolJsonConverter() bool isHolidayLegal,
      @HolidayTypeJsonConverter() HolidayType? holiday,
      @HolidayTypeJsonConverter() HolidayType? holidayOr,
      @HolidayTypeJsonConverter() HolidayType? holidayOvertime,
      @String2BoolJsonConverter() bool holidayRecess,
      @String2BoolJsonConverter() bool holidayToday});
}

/// @nodoc
class __$$SchoolCalendarEventModelImplCopyWithImpl<$Res>
    extends _$SchoolCalendarEventModelCopyWithImpl<$Res,
        _$SchoolCalendarEventModelImpl>
    implements _$$SchoolCalendarEventModelImplCopyWith<$Res> {
  __$$SchoolCalendarEventModelImplCopyWithImpl(
      _$SchoolCalendarEventModelImpl _value,
      $Res Function(_$SchoolCalendarEventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarId = null,
    Object? eventId = freezed,
    Object? date = freezed,
    Object? week = freezed,
    Object? isWeekend = null,
    Object? isWorkday = null,
    Object? year = freezed,
    Object? month = freezed,
    Object? yearday = freezed,
    Object? yearweek = freezed,
    Object? lunarDate = freezed,
    Object? lunarYear = freezed,
    Object? lunarMonth = freezed,
    Object? lunarYearday = freezed,
    Object? holidayCn = null,
    Object? title = null,
    Object? type = null,
    Object? isHolidayLegal = null,
    Object? holiday = freezed,
    Object? holidayOr = freezed,
    Object? holidayOvertime = freezed,
    Object? holidayRecess = null,
    Object? holidayToday = null,
  }) {
    return _then(_$SchoolCalendarEventModelImpl(
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      isWeekend: null == isWeekend
          ? _value.isWeekend
          : isWeekend // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkday: null == isWorkday
          ? _value.isWorkday
          : isWorkday // ignore: cast_nullable_to_non_nullable
              as bool,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      yearday: freezed == yearday
          ? _value.yearday
          : yearday // ignore: cast_nullable_to_non_nullable
              as int?,
      yearweek: freezed == yearweek
          ? _value.yearweek
          : yearweek // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarDate: freezed == lunarDate
          ? _value.lunarDate
          : lunarDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lunarYear: freezed == lunarYear
          ? _value.lunarYear
          : lunarYear // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarMonth: freezed == lunarMonth
          ? _value.lunarMonth
          : lunarMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      lunarYearday: freezed == lunarYearday
          ? _value.lunarYearday
          : lunarYearday // ignore: cast_nullable_to_non_nullable
              as int?,
      holidayCn: null == holidayCn
          ? _value.holidayCn
          : holidayCn // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CalendarType,
      isHolidayLegal: null == isHolidayLegal
          ? _value.isHolidayLegal
          : isHolidayLegal // ignore: cast_nullable_to_non_nullable
              as bool,
      holiday: freezed == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayOr: freezed == holidayOr
          ? _value.holidayOr
          : holidayOr // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayOvertime: freezed == holidayOvertime
          ? _value.holidayOvertime
          : holidayOvertime // ignore: cast_nullable_to_non_nullable
              as HolidayType?,
      holidayRecess: null == holidayRecess
          ? _value.holidayRecess
          : holidayRecess // ignore: cast_nullable_to_non_nullable
              as bool,
      holidayToday: null == holidayToday
          ? _value.holidayToday
          : holidayToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolCalendarEventModelImpl extends _SchoolCalendarEventModel {
  const _$SchoolCalendarEventModelImpl(
      {@String2IntJsonConverter() required this.calendarId,
      @String2IntNullableJsonConverter() this.eventId,
      @EventDateJsonConverter() this.date,
      @String2IntNullableJsonConverter() this.week,
      @JsonKey(name: 'weekend')
      @String2BoolJsonConverter()
      this.isWeekend = false,
      @JsonKey(name: 'workday')
      @String2BoolJsonConverter()
      this.isWorkday = false,
      @String2IntNullableJsonConverter() this.year,
      @EventMonthJsonConverter() this.month,
      @String2IntNullableJsonConverter() this.yearday,
      @EventYearWeekJsonConverter() this.yearweek,
      @EventDateJsonConverter() this.lunarDate,
      @String2IntNullableJsonConverter() this.lunarYear,
      @EventMonthJsonConverter() this.lunarMonth,
      @String2IntNullableJsonConverter() this.lunarYearday,
      this.holidayCn = '',
      this.title = '',
      @CalendarTypeJsonConverter() this.type = CalendarType.none,
      @String2BoolJsonConverter() this.isHolidayLegal = false,
      @HolidayTypeJsonConverter() this.holiday = HolidayType.none,
      @HolidayTypeJsonConverter() this.holidayOr = HolidayType.none,
      @HolidayTypeJsonConverter() this.holidayOvertime = HolidayType.none,
      @String2BoolJsonConverter() this.holidayRecess = false,
      @String2BoolJsonConverter() this.holidayToday = false})
      : super._();

  factory _$SchoolCalendarEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolCalendarEventModelImplFromJson(json);

  /// 日历id
  @override
  @String2IntJsonConverter()
  final int calendarId;

  /// 事件id
  @override
  @String2IntNullableJsonConverter()
  final int? eventId;

  /// 公历日期
  @override
  @EventDateJsonConverter()
  final DateTime? date;

  /// 星期几
  @override
  @String2IntNullableJsonConverter()
  final int? week;

  /// 是否周末
  @override
  @JsonKey(name: 'weekend')
  @String2BoolJsonConverter()
  final bool isWeekend;

  /// 是否为工作日（包含调休在内需要上班的日子）,1为工作日(上课日),2为非工作日(放假)
  @override
  @JsonKey(name: 'workday')
  @String2BoolJsonConverter()
  final bool isWorkday;

  /// 公历年份
  @override
  @String2IntNullableJsonConverter()
  final int? year;

  /// 公历月份
  @override
  @EventMonthJsonConverter()
  final int? month;

  /// 公历一年中的第几天
  @override
  @String2IntNullableJsonConverter()
  final int? yearday;

  /// 公历一年中的第几周
  @override
  @EventYearWeekJsonConverter()
  final int? yearweek;

  /// 农历日期
  @override
  @EventDateJsonConverter()
  final DateTime? lunarDate;

  /// 农历年份
  @override
  @String2IntNullableJsonConverter()
  final int? lunarYear;

  /// 农历月份
  @override
  @EventMonthJsonConverter()
  final int? lunarMonth;

  /// 农历一年中的第几天
  @override
  @String2IntNullableJsonConverter()
  final int? lunarYearday;

  /// 节假日名称
  @override
  @JsonKey()
  final String holidayCn;

  /// 事件标题
  @override
  @JsonKey()
  final String title;

  /// 事件类型
  @override
  @JsonKey()
  @CalendarTypeJsonConverter()
  final CalendarType type;

  /// 是否未法定节假日(三倍工资)
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isHolidayLegal;

  /// 节假日，这里使用两位数字枚举表示节假日，其中特殊数字10表示非节假日，特殊数字99表示全部节假日
  @override
  @JsonKey()
  @HolidayTypeJsonConverter()
  final HolidayType? holiday;

  /// 其他节假日，枚举与节假日相同，表示同一天中的另一个节日，如 2020-10-01
  @override
  @JsonKey()
  @HolidayTypeJsonConverter()
  final HolidayType? holidayOr;

  /// 节假日调休，枚举与节假日相同
  @override
  @JsonKey()
  @HolidayTypeJsonConverter()
  final HolidayType? holidayOvertime;

  /// 是否为假期节假日（节日是否放假）
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool holidayRecess;

  /// 是否为节日当天
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool holidayToday;

  @override
  String toString() {
    return 'SchoolCalendarEventModel(calendarId: $calendarId, eventId: $eventId, date: $date, week: $week, isWeekend: $isWeekend, isWorkday: $isWorkday, year: $year, month: $month, yearday: $yearday, yearweek: $yearweek, lunarDate: $lunarDate, lunarYear: $lunarYear, lunarMonth: $lunarMonth, lunarYearday: $lunarYearday, holidayCn: $holidayCn, title: $title, type: $type, isHolidayLegal: $isHolidayLegal, holiday: $holiday, holidayOr: $holidayOr, holidayOvertime: $holidayOvertime, holidayRecess: $holidayRecess, holidayToday: $holidayToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolCalendarEventModelImpl &&
            (identical(other.calendarId, calendarId) ||
                other.calendarId == calendarId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.isWeekend, isWeekend) ||
                other.isWeekend == isWeekend) &&
            (identical(other.isWorkday, isWorkday) ||
                other.isWorkday == isWorkday) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.yearday, yearday) || other.yearday == yearday) &&
            (identical(other.yearweek, yearweek) ||
                other.yearweek == yearweek) &&
            (identical(other.lunarDate, lunarDate) ||
                other.lunarDate == lunarDate) &&
            (identical(other.lunarYear, lunarYear) ||
                other.lunarYear == lunarYear) &&
            (identical(other.lunarMonth, lunarMonth) ||
                other.lunarMonth == lunarMonth) &&
            (identical(other.lunarYearday, lunarYearday) ||
                other.lunarYearday == lunarYearday) &&
            (identical(other.holidayCn, holidayCn) ||
                other.holidayCn == holidayCn) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isHolidayLegal, isHolidayLegal) ||
                other.isHolidayLegal == isHolidayLegal) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            (identical(other.holidayOr, holidayOr) ||
                other.holidayOr == holidayOr) &&
            (identical(other.holidayOvertime, holidayOvertime) ||
                other.holidayOvertime == holidayOvertime) &&
            (identical(other.holidayRecess, holidayRecess) ||
                other.holidayRecess == holidayRecess) &&
            (identical(other.holidayToday, holidayToday) ||
                other.holidayToday == holidayToday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        calendarId,
        eventId,
        date,
        week,
        isWeekend,
        isWorkday,
        year,
        month,
        yearday,
        yearweek,
        lunarDate,
        lunarYear,
        lunarMonth,
        lunarYearday,
        holidayCn,
        title,
        type,
        isHolidayLegal,
        holiday,
        holidayOr,
        holidayOvertime,
        holidayRecess,
        holidayToday
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolCalendarEventModelImplCopyWith<_$SchoolCalendarEventModelImpl>
      get copyWith => __$$SchoolCalendarEventModelImplCopyWithImpl<
          _$SchoolCalendarEventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolCalendarEventModelImplToJson(
      this,
    );
  }
}

abstract class _SchoolCalendarEventModel extends SchoolCalendarEventModel {
  const factory _SchoolCalendarEventModel(
          {@String2IntJsonConverter() required final int calendarId,
          @String2IntNullableJsonConverter() final int? eventId,
          @EventDateJsonConverter() final DateTime? date,
          @String2IntNullableJsonConverter() final int? week,
          @JsonKey(name: 'weekend')
          @String2BoolJsonConverter()
          final bool isWeekend,
          @JsonKey(name: 'workday')
          @String2BoolJsonConverter()
          final bool isWorkday,
          @String2IntNullableJsonConverter() final int? year,
          @EventMonthJsonConverter() final int? month,
          @String2IntNullableJsonConverter() final int? yearday,
          @EventYearWeekJsonConverter() final int? yearweek,
          @EventDateJsonConverter() final DateTime? lunarDate,
          @String2IntNullableJsonConverter() final int? lunarYear,
          @EventMonthJsonConverter() final int? lunarMonth,
          @String2IntNullableJsonConverter() final int? lunarYearday,
          final String holidayCn,
          final String title,
          @CalendarTypeJsonConverter() final CalendarType type,
          @String2BoolJsonConverter() final bool isHolidayLegal,
          @HolidayTypeJsonConverter() final HolidayType? holiday,
          @HolidayTypeJsonConverter() final HolidayType? holidayOr,
          @HolidayTypeJsonConverter() final HolidayType? holidayOvertime,
          @String2BoolJsonConverter() final bool holidayRecess,
          @String2BoolJsonConverter() final bool holidayToday}) =
      _$SchoolCalendarEventModelImpl;
  const _SchoolCalendarEventModel._() : super._();

  factory _SchoolCalendarEventModel.fromJson(Map<String, dynamic> json) =
      _$SchoolCalendarEventModelImpl.fromJson;

  @override

  /// 日历id
  @String2IntJsonConverter()
  int get calendarId;
  @override

  /// 事件id
  @String2IntNullableJsonConverter()
  int? get eventId;
  @override

  /// 公历日期
  @EventDateJsonConverter()
  DateTime? get date;
  @override

  /// 星期几
  @String2IntNullableJsonConverter()
  int? get week;
  @override

  /// 是否周末
  @JsonKey(name: 'weekend')
  @String2BoolJsonConverter()
  bool get isWeekend;
  @override

  /// 是否为工作日（包含调休在内需要上班的日子）,1为工作日(上课日),2为非工作日(放假)
  @JsonKey(name: 'workday')
  @String2BoolJsonConverter()
  bool get isWorkday;
  @override

  /// 公历年份
  @String2IntNullableJsonConverter()
  int? get year;
  @override

  /// 公历月份
  @EventMonthJsonConverter()
  int? get month;
  @override

  /// 公历一年中的第几天
  @String2IntNullableJsonConverter()
  int? get yearday;
  @override

  /// 公历一年中的第几周
  @EventYearWeekJsonConverter()
  int? get yearweek;
  @override

  /// 农历日期
  @EventDateJsonConverter()
  DateTime? get lunarDate;
  @override

  /// 农历年份
  @String2IntNullableJsonConverter()
  int? get lunarYear;
  @override

  /// 农历月份
  @EventMonthJsonConverter()
  int? get lunarMonth;
  @override

  /// 农历一年中的第几天
  @String2IntNullableJsonConverter()
  int? get lunarYearday;
  @override

  /// 节假日名称
  String get holidayCn;
  @override

  /// 事件标题
  String get title;
  @override

  /// 事件类型
  @CalendarTypeJsonConverter()
  CalendarType get type;
  @override

  /// 是否未法定节假日(三倍工资)
  @String2BoolJsonConverter()
  bool get isHolidayLegal;
  @override

  /// 节假日，这里使用两位数字枚举表示节假日，其中特殊数字10表示非节假日，特殊数字99表示全部节假日
  @HolidayTypeJsonConverter()
  HolidayType? get holiday;
  @override

  /// 其他节假日，枚举与节假日相同，表示同一天中的另一个节日，如 2020-10-01
  @HolidayTypeJsonConverter()
  HolidayType? get holidayOr;
  @override

  /// 节假日调休，枚举与节假日相同
  @HolidayTypeJsonConverter()
  HolidayType? get holidayOvertime;
  @override

  /// 是否为假期节假日（节日是否放假）
  @String2BoolJsonConverter()
  bool get holidayRecess;
  @override

  /// 是否为节日当天
  @String2BoolJsonConverter()
  bool get holidayToday;
  @override
  @JsonKey(ignore: true)
  _$$SchoolCalendarEventModelImplCopyWith<_$SchoolCalendarEventModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
