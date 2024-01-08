// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumPickerModel _$AlbumPickerModelFromJson(Map<String, dynamic> json) {
  return _AlbumPickerModel.fromJson(json);
}

/// @nodoc
mixin _$AlbumPickerModel {
  /// 新增图片
  List<String> get addPics => throw _privateConstructorUsedError;

  /// 删除图片
  List<String> get dltPics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumPickerModelCopyWith<AlbumPickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumPickerModelCopyWith<$Res> {
  factory $AlbumPickerModelCopyWith(
          AlbumPickerModel value, $Res Function(AlbumPickerModel) then) =
      _$AlbumPickerModelCopyWithImpl<$Res, AlbumPickerModel>;
  @useResult
  $Res call({List<String> addPics, List<String> dltPics});
}

/// @nodoc
class _$AlbumPickerModelCopyWithImpl<$Res, $Val extends AlbumPickerModel>
    implements $AlbumPickerModelCopyWith<$Res> {
  _$AlbumPickerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPics = null,
    Object? dltPics = null,
  }) {
    return _then(_value.copyWith(
      addPics: null == addPics
          ? _value.addPics
          : addPics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dltPics: null == dltPics
          ? _value.dltPics
          : dltPics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumPickerModelImplCopyWith<$Res>
    implements $AlbumPickerModelCopyWith<$Res> {
  factory _$$AlbumPickerModelImplCopyWith(_$AlbumPickerModelImpl value,
          $Res Function(_$AlbumPickerModelImpl) then) =
      __$$AlbumPickerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> addPics, List<String> dltPics});
}

/// @nodoc
class __$$AlbumPickerModelImplCopyWithImpl<$Res>
    extends _$AlbumPickerModelCopyWithImpl<$Res, _$AlbumPickerModelImpl>
    implements _$$AlbumPickerModelImplCopyWith<$Res> {
  __$$AlbumPickerModelImplCopyWithImpl(_$AlbumPickerModelImpl _value,
      $Res Function(_$AlbumPickerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPics = null,
    Object? dltPics = null,
  }) {
    return _then(_$AlbumPickerModelImpl(
      addPics: null == addPics
          ? _value._addPics
          : addPics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dltPics: null == dltPics
          ? _value._dltPics
          : dltPics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumPickerModelImpl extends _AlbumPickerModel {
  const _$AlbumPickerModelImpl(
      {final List<String> addPics = const [],
      final List<String> dltPics = const []})
      : _addPics = addPics,
        _dltPics = dltPics,
        super._();

  factory _$AlbumPickerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumPickerModelImplFromJson(json);

  /// 新增图片
  final List<String> _addPics;

  /// 新增图片
  @override
  @JsonKey()
  List<String> get addPics {
    if (_addPics is EqualUnmodifiableListView) return _addPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addPics);
  }

  /// 删除图片
  final List<String> _dltPics;

  /// 删除图片
  @override
  @JsonKey()
  List<String> get dltPics {
    if (_dltPics is EqualUnmodifiableListView) return _dltPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dltPics);
  }

  @override
  String toString() {
    return 'AlbumPickerModel(addPics: $addPics, dltPics: $dltPics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumPickerModelImpl &&
            const DeepCollectionEquality().equals(other._addPics, _addPics) &&
            const DeepCollectionEquality().equals(other._dltPics, _dltPics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addPics),
      const DeepCollectionEquality().hash(_dltPics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumPickerModelImplCopyWith<_$AlbumPickerModelImpl> get copyWith =>
      __$$AlbumPickerModelImplCopyWithImpl<_$AlbumPickerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumPickerModelImplToJson(
      this,
    );
  }
}

abstract class _AlbumPickerModel extends AlbumPickerModel {
  const factory _AlbumPickerModel(
      {final List<String> addPics,
      final List<String> dltPics}) = _$AlbumPickerModelImpl;
  const _AlbumPickerModel._() : super._();

  factory _AlbumPickerModel.fromJson(Map<String, dynamic> json) =
      _$AlbumPickerModelImpl.fromJson;

  @override

  /// 新增图片
  List<String> get addPics;
  @override

  /// 删除图片
  List<String> get dltPics;
  @override
  @JsonKey(ignore: true)
  _$$AlbumPickerModelImplCopyWith<_$AlbumPickerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipOtherParam _$ClipOtherParamFromJson(Map<String, dynamic> json) {
  return _ClipOtherParam.fromJson(json);
}

/// @nodoc
mixin _$ClipOtherParam {
  /// 剪影详情id
  String get activityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipOtherParamCopyWith<ClipOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipOtherParamCopyWith<$Res> {
  factory $ClipOtherParamCopyWith(
          ClipOtherParam value, $Res Function(ClipOtherParam) then) =
      _$ClipOtherParamCopyWithImpl<$Res, ClipOtherParam>;
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class _$ClipOtherParamCopyWithImpl<$Res, $Val extends ClipOtherParam>
    implements $ClipOtherParamCopyWith<$Res> {
  _$ClipOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_value.copyWith(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipOtherParamImplCopyWith<$Res>
    implements $ClipOtherParamCopyWith<$Res> {
  factory _$$ClipOtherParamImplCopyWith(_$ClipOtherParamImpl value,
          $Res Function(_$ClipOtherParamImpl) then) =
      __$$ClipOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class __$$ClipOtherParamImplCopyWithImpl<$Res>
    extends _$ClipOtherParamCopyWithImpl<$Res, _$ClipOtherParamImpl>
    implements _$$ClipOtherParamImplCopyWith<$Res> {
  __$$ClipOtherParamImplCopyWithImpl(
      _$ClipOtherParamImpl _value, $Res Function(_$ClipOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_$ClipOtherParamImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipOtherParamImpl extends _ClipOtherParam {
  const _$ClipOtherParamImpl({this.activityId = ''}) : super._();

  factory _$ClipOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipOtherParamImplFromJson(json);

  /// 剪影详情id
  @override
  @JsonKey()
  final String activityId;

  @override
  String toString() {
    return 'ClipOtherParam(activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipOtherParamImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipOtherParamImplCopyWith<_$ClipOtherParamImpl> get copyWith =>
      __$$ClipOtherParamImplCopyWithImpl<_$ClipOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipOtherParamImplToJson(
      this,
    );
  }
}

abstract class _ClipOtherParam extends ClipOtherParam {
  const factory _ClipOtherParam({final String activityId}) =
      _$ClipOtherParamImpl;
  const _ClipOtherParam._() : super._();

  factory _ClipOtherParam.fromJson(Map<String, dynamic> json) =
      _$ClipOtherParamImpl.fromJson;

  @override

  /// 剪影详情id
  String get activityId;
  @override
  @JsonKey(ignore: true)
  _$$ClipOtherParamImplCopyWith<_$ClipOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipFilterModel _$ClipFilterModelFromJson(Map<String, dynamic> json) {
  return _ClipFilterModel.fromJson(json);
}

/// @nodoc
mixin _$ClipFilterModel {
  /// 所选择学年学期
  FilterYearTermModel? get selectedYearTerm =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipFilterModelCopyWith<ClipFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipFilterModelCopyWith<$Res> {
  factory $ClipFilterModelCopyWith(
          ClipFilterModel value, $Res Function(ClipFilterModel) then) =
      _$ClipFilterModelCopyWithImpl<$Res, ClipFilterModel>;
  @useResult
  $Res call({FilterYearTermModel? selectedYearTerm});

  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm;
}

/// @nodoc
class _$ClipFilterModelCopyWithImpl<$Res, $Val extends ClipFilterModel>
    implements $ClipFilterModelCopyWith<$Res> {
  _$ClipFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedYearTerm = freezed,
  }) {
    return _then(_value.copyWith(
      selectedYearTerm: freezed == selectedYearTerm
          ? _value.selectedYearTerm
          : selectedYearTerm // ignore: cast_nullable_to_non_nullable
              as FilterYearTermModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm {
    if (_value.selectedYearTerm == null) {
      return null;
    }

    return $FilterYearTermModelCopyWith<$Res>(_value.selectedYearTerm!,
        (value) {
      return _then(_value.copyWith(selectedYearTerm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClipFilterModelImplCopyWith<$Res>
    implements $ClipFilterModelCopyWith<$Res> {
  factory _$$ClipFilterModelImplCopyWith(_$ClipFilterModelImpl value,
          $Res Function(_$ClipFilterModelImpl) then) =
      __$$ClipFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FilterYearTermModel? selectedYearTerm});

  @override
  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm;
}

/// @nodoc
class __$$ClipFilterModelImplCopyWithImpl<$Res>
    extends _$ClipFilterModelCopyWithImpl<$Res, _$ClipFilterModelImpl>
    implements _$$ClipFilterModelImplCopyWith<$Res> {
  __$$ClipFilterModelImplCopyWithImpl(
      _$ClipFilterModelImpl _value, $Res Function(_$ClipFilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedYearTerm = freezed,
  }) {
    return _then(_$ClipFilterModelImpl(
      selectedYearTerm: freezed == selectedYearTerm
          ? _value.selectedYearTerm
          : selectedYearTerm // ignore: cast_nullable_to_non_nullable
              as FilterYearTermModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipFilterModelImpl extends _ClipFilterModel {
  const _$ClipFilterModelImpl({this.selectedYearTerm}) : super._();

  factory _$ClipFilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipFilterModelImplFromJson(json);

  /// 所选择学年学期
  @override
  final FilterYearTermModel? selectedYearTerm;

  @override
  String toString() {
    return 'ClipFilterModel(selectedYearTerm: $selectedYearTerm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipFilterModelImpl &&
            (identical(other.selectedYearTerm, selectedYearTerm) ||
                other.selectedYearTerm == selectedYearTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedYearTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipFilterModelImplCopyWith<_$ClipFilterModelImpl> get copyWith =>
      __$$ClipFilterModelImplCopyWithImpl<_$ClipFilterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipFilterModelImplToJson(
      this,
    );
  }
}

abstract class _ClipFilterModel extends ClipFilterModel {
  const factory _ClipFilterModel(
      {final FilterYearTermModel? selectedYearTerm}) = _$ClipFilterModelImpl;
  const _ClipFilterModel._() : super._();

  factory _ClipFilterModel.fromJson(Map<String, dynamic> json) =
      _$ClipFilterModelImpl.fromJson;

  @override

  /// 所选择学年学期
  FilterYearTermModel? get selectedYearTerm;
  @override
  @JsonKey(ignore: true)
  _$$ClipFilterModelImplCopyWith<_$ClipFilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipReq _$ClipReqFromJson(Map<String, dynamic> json) {
  return _ClipReq.fromJson(json);
}

/// @nodoc
mixin _$ClipReq {
  /// 活动类型 false	 integer(int32)
  int? get activityType => throw _privateConstructorUsedError;

  /// 班级编码		false	 string
  String? get classCode => throw _privateConstructorUsedError;

  /// 课程编码		false	 string
  String? get courseCode => throw _privateConstructorUsedError;

  /// 年级编码		false	 string
  String? get gradeCode => throw _privateConstructorUsedError;

  /// false	 string
  String? get periodCode => throw _privateConstructorUsedError;

  /// 学期编码		false	 string
  String? get yearTermCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipReqCopyWith<ClipReq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipReqCopyWith<$Res> {
  factory $ClipReqCopyWith(ClipReq value, $Res Function(ClipReq) then) =
      _$ClipReqCopyWithImpl<$Res, ClipReq>;
  @useResult
  $Res call(
      {int? activityType,
      String? classCode,
      String? courseCode,
      String? gradeCode,
      String? periodCode,
      String? yearTermCode});
}

/// @nodoc
class _$ClipReqCopyWithImpl<$Res, $Val extends ClipReq>
    implements $ClipReqCopyWith<$Res> {
  _$ClipReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? classCode = freezed,
    Object? courseCode = freezed,
    Object? gradeCode = freezed,
    Object? periodCode = freezed,
    Object? yearTermCode = freezed,
  }) {
    return _then(_value.copyWith(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as int?,
      classCode: freezed == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCode: freezed == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeCode: freezed == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodCode: freezed == periodCode
          ? _value.periodCode
          : periodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipReqImplCopyWith<$Res> implements $ClipReqCopyWith<$Res> {
  factory _$$ClipReqImplCopyWith(
          _$ClipReqImpl value, $Res Function(_$ClipReqImpl) then) =
      __$$ClipReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? activityType,
      String? classCode,
      String? courseCode,
      String? gradeCode,
      String? periodCode,
      String? yearTermCode});
}

/// @nodoc
class __$$ClipReqImplCopyWithImpl<$Res>
    extends _$ClipReqCopyWithImpl<$Res, _$ClipReqImpl>
    implements _$$ClipReqImplCopyWith<$Res> {
  __$$ClipReqImplCopyWithImpl(
      _$ClipReqImpl _value, $Res Function(_$ClipReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? classCode = freezed,
    Object? courseCode = freezed,
    Object? gradeCode = freezed,
    Object? periodCode = freezed,
    Object? yearTermCode = freezed,
  }) {
    return _then(_$ClipReqImpl(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as int?,
      classCode: freezed == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCode: freezed == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeCode: freezed == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodCode: freezed == periodCode
          ? _value.periodCode
          : periodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipReqImpl extends _ClipReq {
  const _$ClipReqImpl(
      {this.activityType,
      this.classCode,
      this.courseCode,
      this.gradeCode,
      this.periodCode,
      this.yearTermCode})
      : super._();

  factory _$ClipReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipReqImplFromJson(json);

  /// 活动类型 false	 integer(int32)
  @override
  final int? activityType;

  /// 班级编码		false	 string
  @override
  final String? classCode;

  /// 课程编码		false	 string
  @override
  final String? courseCode;

  /// 年级编码		false	 string
  @override
  final String? gradeCode;

  /// false	 string
  @override
  final String? periodCode;

  /// 学期编码		false	 string
  @override
  final String? yearTermCode;

  @override
  String toString() {
    return 'ClipReq(activityType: $activityType, classCode: $classCode, courseCode: $courseCode, gradeCode: $gradeCode, periodCode: $periodCode, yearTermCode: $yearTermCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipReqImpl &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.periodCode, periodCode) ||
                other.periodCode == periodCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityType, classCode,
      courseCode, gradeCode, periodCode, yearTermCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipReqImplCopyWith<_$ClipReqImpl> get copyWith =>
      __$$ClipReqImplCopyWithImpl<_$ClipReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipReqImplToJson(
      this,
    );
  }
}

abstract class _ClipReq extends ClipReq {
  const factory _ClipReq(
      {final int? activityType,
      final String? classCode,
      final String? courseCode,
      final String? gradeCode,
      final String? periodCode,
      final String? yearTermCode}) = _$ClipReqImpl;
  const _ClipReq._() : super._();

  factory _ClipReq.fromJson(Map<String, dynamic> json) = _$ClipReqImpl.fromJson;

  @override

  /// 活动类型 false	 integer(int32)
  int? get activityType;
  @override

  /// 班级编码		false	 string
  String? get classCode;
  @override

  /// 课程编码		false	 string
  String? get courseCode;
  @override

  /// 年级编码		false	 string
  String? get gradeCode;
  @override

  /// false	 string
  String? get periodCode;
  @override

  /// 学期编码		false	 string
  String? get yearTermCode;
  @override
  @JsonKey(ignore: true)
  _$$ClipReqImplCopyWith<_$ClipReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipResourceModel _$ClipResourceModelFromJson(Map<String, dynamic> json) {
  return _ClipResourceModel.fromJson(json);
}

/// @nodoc
mixin _$ClipResourceModel {
  /// 资源id
  @JsonKey(name: 'photoId')
  int get resourceId => throw _privateConstructorUsedError;

  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url => throw _privateConstructorUsedError;

  /// 是否视频文件
  @JsonKey(name: 'ifVideo')
  bool get isVideo => throw _privateConstructorUsedError;

  /// 绑定学员姓名
  List<String> get bindNameList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipResourceModelCopyWith<ClipResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipResourceModelCopyWith<$Res> {
  factory $ClipResourceModelCopyWith(
          ClipResourceModel value, $Res Function(ClipResourceModel) then) =
      _$ClipResourceModelCopyWithImpl<$Res, ClipResourceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photoId') int resourceId,
      @JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'ifVideo') bool isVideo,
      List<String> bindNameList});
}

/// @nodoc
class _$ClipResourceModelCopyWithImpl<$Res, $Val extends ClipResourceModel>
    implements $ClipResourceModelCopyWith<$Res> {
  _$ClipResourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? url = null,
    Object? isVideo = null,
    Object? bindNameList = null,
  }) {
    return _then(_value.copyWith(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      bindNameList: null == bindNameList
          ? _value.bindNameList
          : bindNameList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipResourceModelImplCopyWith<$Res>
    implements $ClipResourceModelCopyWith<$Res> {
  factory _$$ClipResourceModelImplCopyWith(_$ClipResourceModelImpl value,
          $Res Function(_$ClipResourceModelImpl) then) =
      __$$ClipResourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photoId') int resourceId,
      @JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'ifVideo') bool isVideo,
      List<String> bindNameList});
}

/// @nodoc
class __$$ClipResourceModelImplCopyWithImpl<$Res>
    extends _$ClipResourceModelCopyWithImpl<$Res, _$ClipResourceModelImpl>
    implements _$$ClipResourceModelImplCopyWith<$Res> {
  __$$ClipResourceModelImplCopyWithImpl(_$ClipResourceModelImpl _value,
      $Res Function(_$ClipResourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? url = null,
    Object? isVideo = null,
    Object? bindNameList = null,
  }) {
    return _then(_$ClipResourceModelImpl(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      bindNameList: null == bindNameList
          ? _value._bindNameList
          : bindNameList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipResourceModelImpl extends _ClipResourceModel {
  const _$ClipResourceModelImpl(
      {@JsonKey(name: 'photoId') required this.resourceId,
      @JsonKey(name: 'photoUrl') required this.url,
      @JsonKey(name: 'ifVideo') this.isVideo = false,
      final List<String> bindNameList = const []})
      : _bindNameList = bindNameList,
        super._();

  factory _$ClipResourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipResourceModelImplFromJson(json);

  /// 资源id
  @override
  @JsonKey(name: 'photoId')
  final int resourceId;

  /// 资源url
  @override
  @JsonKey(name: 'photoUrl')
  final String url;

  /// 是否视频文件
  @override
  @JsonKey(name: 'ifVideo')
  final bool isVideo;

  /// 绑定学员姓名
  final List<String> _bindNameList;

  /// 绑定学员姓名
  @override
  @JsonKey()
  List<String> get bindNameList {
    if (_bindNameList is EqualUnmodifiableListView) return _bindNameList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bindNameList);
  }

  @override
  String toString() {
    return 'ClipResourceModel(resourceId: $resourceId, url: $url, isVideo: $isVideo, bindNameList: $bindNameList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipResourceModelImpl &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            const DeepCollectionEquality()
                .equals(other._bindNameList, _bindNameList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceId, url, isVideo,
      const DeepCollectionEquality().hash(_bindNameList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipResourceModelImplCopyWith<_$ClipResourceModelImpl> get copyWith =>
      __$$ClipResourceModelImplCopyWithImpl<_$ClipResourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipResourceModelImplToJson(
      this,
    );
  }
}

abstract class _ClipResourceModel extends ClipResourceModel {
  const factory _ClipResourceModel(
      {@JsonKey(name: 'photoId') required final int resourceId,
      @JsonKey(name: 'photoUrl') required final String url,
      @JsonKey(name: 'ifVideo') final bool isVideo,
      final List<String> bindNameList}) = _$ClipResourceModelImpl;
  const _ClipResourceModel._() : super._();

  factory _ClipResourceModel.fromJson(Map<String, dynamic> json) =
      _$ClipResourceModelImpl.fromJson;

  @override

  /// 资源id
  @JsonKey(name: 'photoId')
  int get resourceId;
  @override

  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url;
  @override

  /// 是否视频文件
  @JsonKey(name: 'ifVideo')
  bool get isVideo;
  @override

  /// 绑定学员姓名
  List<String> get bindNameList;
  @override
  @JsonKey(ignore: true)
  _$$ClipResourceModelImplCopyWith<_$ClipResourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipModel _$ClipModelFromJson(Map<String, dynamic> json) {
  return _ClipModel.fromJson(json);
}

/// @nodoc
mixin _$ClipModel {
  ///	活动ID	integer
  String get activityId => throw _privateConstructorUsedError;

  ///	评论次数	integer
  int get commentNum => throw _privateConstructorUsedError;

  ///	标题	string
  String get title => throw _privateConstructorUsedError;

  ///	内容	string
  String get content => throw _privateConstructorUsedError;

  /// 资源类型(需要获取资源类型后配置)
  SearchType get searchType => throw _privateConstructorUsedError;

  ///	发布时间	string
  @DateTimeJsonConverter()
  DateTime? get deployDate => throw _privateConstructorUsedError;

  ///	发布老师编码	string
  String get deployTeacherCode => throw _privateConstructorUsedError;

  ///	发布老师名称	string
  String get deployTeacherName => throw _privateConstructorUsedError;

  ///	点赞次数	integer
  int get likeNum => throw _privateConstructorUsedError;

  /// 查看次数 integer
  int get viewNum => throw _privateConstructorUsedError;

  /// 家长查看次数 integer
  int get studentViewNum => throw _privateConstructorUsedError;

  /// 老师查看次数 integer
  int get teacherViewNum => throw _privateConstructorUsedError;

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike => throw _privateConstructorUsedError;

  ///	string
  String get photoInfo => throw _privateConstructorUsedError;

  ///	string
  String get avatarUrl => throw _privateConstructorUsedError;

  /// 资源列表
  @JsonKey(name: 'photoList')
  List<ClipResourceModel> get resourceList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipModelCopyWith<ClipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipModelCopyWith<$Res> {
  factory $ClipModelCopyWith(ClipModel value, $Res Function(ClipModel) then) =
      _$ClipModelCopyWithImpl<$Res, ClipModel>;
  @useResult
  $Res call(
      {String activityId,
      int commentNum,
      String title,
      String content,
      SearchType searchType,
      @DateTimeJsonConverter() DateTime? deployDate,
      String deployTeacherCode,
      String deployTeacherName,
      int likeNum,
      int viewNum,
      int studentViewNum,
      int teacherViewNum,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      String photoInfo,
      String avatarUrl,
      @JsonKey(name: 'photoList') List<ClipResourceModel> resourceList});
}

/// @nodoc
class _$ClipModelCopyWithImpl<$Res, $Val extends ClipModel>
    implements $ClipModelCopyWith<$Res> {
  _$ClipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentNum = null,
    Object? title = null,
    Object? content = null,
    Object? searchType = null,
    Object? deployDate = freezed,
    Object? deployTeacherCode = null,
    Object? deployTeacherName = null,
    Object? likeNum = null,
    Object? viewNum = null,
    Object? studentViewNum = null,
    Object? teacherViewNum = null,
    Object? selfLike = null,
    Object? photoInfo = null,
    Object? avatarUrl = null,
    Object? resourceList = null,
  }) {
    return _then(_value.copyWith(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      deployDate: freezed == deployDate
          ? _value.deployDate
          : deployDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deployTeacherCode: null == deployTeacherCode
          ? _value.deployTeacherCode
          : deployTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      deployTeacherName: null == deployTeacherName
          ? _value.deployTeacherName
          : deployTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      viewNum: null == viewNum
          ? _value.viewNum
          : viewNum // ignore: cast_nullable_to_non_nullable
              as int,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      photoInfo: null == photoInfo
          ? _value.photoInfo
          : photoInfo // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      resourceList: null == resourceList
          ? _value.resourceList
          : resourceList // ignore: cast_nullable_to_non_nullable
              as List<ClipResourceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipModelImplCopyWith<$Res>
    implements $ClipModelCopyWith<$Res> {
  factory _$$ClipModelImplCopyWith(
          _$ClipModelImpl value, $Res Function(_$ClipModelImpl) then) =
      __$$ClipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String activityId,
      int commentNum,
      String title,
      String content,
      SearchType searchType,
      @DateTimeJsonConverter() DateTime? deployDate,
      String deployTeacherCode,
      String deployTeacherName,
      int likeNum,
      int viewNum,
      int studentViewNum,
      int teacherViewNum,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      String photoInfo,
      String avatarUrl,
      @JsonKey(name: 'photoList') List<ClipResourceModel> resourceList});
}

/// @nodoc
class __$$ClipModelImplCopyWithImpl<$Res>
    extends _$ClipModelCopyWithImpl<$Res, _$ClipModelImpl>
    implements _$$ClipModelImplCopyWith<$Res> {
  __$$ClipModelImplCopyWithImpl(
      _$ClipModelImpl _value, $Res Function(_$ClipModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentNum = null,
    Object? title = null,
    Object? content = null,
    Object? searchType = null,
    Object? deployDate = freezed,
    Object? deployTeacherCode = null,
    Object? deployTeacherName = null,
    Object? likeNum = null,
    Object? viewNum = null,
    Object? studentViewNum = null,
    Object? teacherViewNum = null,
    Object? selfLike = null,
    Object? photoInfo = null,
    Object? avatarUrl = null,
    Object? resourceList = null,
  }) {
    return _then(_$ClipModelImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      deployDate: freezed == deployDate
          ? _value.deployDate
          : deployDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deployTeacherCode: null == deployTeacherCode
          ? _value.deployTeacherCode
          : deployTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      deployTeacherName: null == deployTeacherName
          ? _value.deployTeacherName
          : deployTeacherName // ignore: cast_nullable_to_non_nullable
              as String,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      viewNum: null == viewNum
          ? _value.viewNum
          : viewNum // ignore: cast_nullable_to_non_nullable
              as int,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      photoInfo: null == photoInfo
          ? _value.photoInfo
          : photoInfo // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      resourceList: null == resourceList
          ? _value._resourceList
          : resourceList // ignore: cast_nullable_to_non_nullable
              as List<ClipResourceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipModelImpl extends _ClipModel {
  const _$ClipModelImpl(
      {this.activityId = '',
      this.commentNum = 0,
      this.title = '',
      this.content = '',
      this.searchType = SearchType.all,
      @DateTimeJsonConverter() this.deployDate,
      this.deployTeacherCode = '',
      this.deployTeacherName = '',
      this.likeNum = 0,
      this.viewNum = 0,
      this.studentViewNum = 0,
      this.teacherViewNum = 0,
      @JsonKey(name: 'selfLikeFlag') this.selfLike = false,
      this.photoInfo = '',
      this.avatarUrl = '',
      @JsonKey(name: 'photoList')
      final List<ClipResourceModel> resourceList = const []})
      : _resourceList = resourceList,
        super._();

  factory _$ClipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipModelImplFromJson(json);

  ///	活动ID	integer
  @override
  @JsonKey()
  final String activityId;

  ///	评论次数	integer
  @override
  @JsonKey()
  final int commentNum;

  ///	标题	string
  @override
  @JsonKey()
  final String title;

  ///	内容	string
  @override
  @JsonKey()
  final String content;

  /// 资源类型(需要获取资源类型后配置)
  @override
  @JsonKey()
  final SearchType searchType;

  ///	发布时间	string
  @override
  @DateTimeJsonConverter()
  final DateTime? deployDate;

  ///	发布老师编码	string
  @override
  @JsonKey()
  final String deployTeacherCode;

  ///	发布老师名称	string
  @override
  @JsonKey()
  final String deployTeacherName;

  ///	点赞次数	integer
  @override
  @JsonKey()
  final int likeNum;

  /// 查看次数 integer
  @override
  @JsonKey()
  final int viewNum;

  /// 家长查看次数 integer
  @override
  @JsonKey()
  final int studentViewNum;

  /// 老师查看次数 integer
  @override
  @JsonKey()
  final int teacherViewNum;

  /// 自己是否点赞
  @override
  @JsonKey(name: 'selfLikeFlag')
  final bool selfLike;

  ///	string
  @override
  @JsonKey()
  final String photoInfo;

  ///	string
  @override
  @JsonKey()
  final String avatarUrl;

  /// 资源列表
  final List<ClipResourceModel> _resourceList;

  /// 资源列表
  @override
  @JsonKey(name: 'photoList')
  List<ClipResourceModel> get resourceList {
    if (_resourceList is EqualUnmodifiableListView) return _resourceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resourceList);
  }

  @override
  String toString() {
    return 'ClipModel(activityId: $activityId, commentNum: $commentNum, title: $title, content: $content, searchType: $searchType, deployDate: $deployDate, deployTeacherCode: $deployTeacherCode, deployTeacherName: $deployTeacherName, likeNum: $likeNum, viewNum: $viewNum, studentViewNum: $studentViewNum, teacherViewNum: $teacherViewNum, selfLike: $selfLike, photoInfo: $photoInfo, avatarUrl: $avatarUrl, resourceList: $resourceList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipModelImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.commentNum, commentNum) ||
                other.commentNum == commentNum) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.deployDate, deployDate) ||
                other.deployDate == deployDate) &&
            (identical(other.deployTeacherCode, deployTeacherCode) ||
                other.deployTeacherCode == deployTeacherCode) &&
            (identical(other.deployTeacherName, deployTeacherName) ||
                other.deployTeacherName == deployTeacherName) &&
            (identical(other.likeNum, likeNum) || other.likeNum == likeNum) &&
            (identical(other.viewNum, viewNum) || other.viewNum == viewNum) &&
            (identical(other.studentViewNum, studentViewNum) ||
                other.studentViewNum == studentViewNum) &&
            (identical(other.teacherViewNum, teacherViewNum) ||
                other.teacherViewNum == teacherViewNum) &&
            (identical(other.selfLike, selfLike) ||
                other.selfLike == selfLike) &&
            (identical(other.photoInfo, photoInfo) ||
                other.photoInfo == photoInfo) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._resourceList, _resourceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activityId,
      commentNum,
      title,
      content,
      searchType,
      deployDate,
      deployTeacherCode,
      deployTeacherName,
      likeNum,
      viewNum,
      studentViewNum,
      teacherViewNum,
      selfLike,
      photoInfo,
      avatarUrl,
      const DeepCollectionEquality().hash(_resourceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipModelImplCopyWith<_$ClipModelImpl> get copyWith =>
      __$$ClipModelImplCopyWithImpl<_$ClipModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipModelImplToJson(
      this,
    );
  }
}

abstract class _ClipModel extends ClipModel {
  const factory _ClipModel(
      {final String activityId,
      final int commentNum,
      final String title,
      final String content,
      final SearchType searchType,
      @DateTimeJsonConverter() final DateTime? deployDate,
      final String deployTeacherCode,
      final String deployTeacherName,
      final int likeNum,
      final int viewNum,
      final int studentViewNum,
      final int teacherViewNum,
      @JsonKey(name: 'selfLikeFlag') final bool selfLike,
      final String photoInfo,
      final String avatarUrl,
      @JsonKey(name: 'photoList')
      final List<ClipResourceModel> resourceList}) = _$ClipModelImpl;
  const _ClipModel._() : super._();

  factory _ClipModel.fromJson(Map<String, dynamic> json) =
      _$ClipModelImpl.fromJson;

  @override

  ///	活动ID	integer
  String get activityId;
  @override

  ///	评论次数	integer
  int get commentNum;
  @override

  ///	标题	string
  String get title;
  @override

  ///	内容	string
  String get content;
  @override

  /// 资源类型(需要获取资源类型后配置)
  SearchType get searchType;
  @override

  ///	发布时间	string
  @DateTimeJsonConverter()
  DateTime? get deployDate;
  @override

  ///	发布老师编码	string
  String get deployTeacherCode;
  @override

  ///	发布老师名称	string
  String get deployTeacherName;
  @override

  ///	点赞次数	integer
  int get likeNum;
  @override

  /// 查看次数 integer
  int get viewNum;
  @override

  /// 家长查看次数 integer
  int get studentViewNum;
  @override

  /// 老师查看次数 integer
  int get teacherViewNum;
  @override

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike;
  @override

  ///	string
  String get photoInfo;
  @override

  ///	string
  String get avatarUrl;
  @override

  /// 资源列表
  @JsonKey(name: 'photoList')
  List<ClipResourceModel> get resourceList;
  @override
  @JsonKey(ignore: true)
  _$$ClipModelImplCopyWith<_$ClipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoResourceModel _$PhotoResourceModelFromJson(Map<String, dynamic> json) {
  return _PhotoResourceModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoResourceModel {
  /// 资源id
  @JsonKey(name: 'personalPhotoId')
  int get resourceId => throw _privateConstructorUsedError;

  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url => throw _privateConstructorUsedError;

  /// 是否视频文件
  @JsonKey(name: 'ifVideo')
  bool get isVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoResourceModelCopyWith<PhotoResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoResourceModelCopyWith<$Res> {
  factory $PhotoResourceModelCopyWith(
          PhotoResourceModel value, $Res Function(PhotoResourceModel) then) =
      _$PhotoResourceModelCopyWithImpl<$Res, PhotoResourceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'personalPhotoId') int resourceId,
      @JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'ifVideo') bool isVideo});
}

/// @nodoc
class _$PhotoResourceModelCopyWithImpl<$Res, $Val extends PhotoResourceModel>
    implements $PhotoResourceModelCopyWith<$Res> {
  _$PhotoResourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? url = null,
    Object? isVideo = null,
  }) {
    return _then(_value.copyWith(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoResourceModelImplCopyWith<$Res>
    implements $PhotoResourceModelCopyWith<$Res> {
  factory _$$PhotoResourceModelImplCopyWith(_$PhotoResourceModelImpl value,
          $Res Function(_$PhotoResourceModelImpl) then) =
      __$$PhotoResourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'personalPhotoId') int resourceId,
      @JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'ifVideo') bool isVideo});
}

/// @nodoc
class __$$PhotoResourceModelImplCopyWithImpl<$Res>
    extends _$PhotoResourceModelCopyWithImpl<$Res, _$PhotoResourceModelImpl>
    implements _$$PhotoResourceModelImplCopyWith<$Res> {
  __$$PhotoResourceModelImplCopyWithImpl(_$PhotoResourceModelImpl _value,
      $Res Function(_$PhotoResourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? url = null,
    Object? isVideo = null,
  }) {
    return _then(_$PhotoResourceModelImpl(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoResourceModelImpl extends _PhotoResourceModel {
  const _$PhotoResourceModelImpl(
      {@JsonKey(name: 'personalPhotoId') required this.resourceId,
      @JsonKey(name: 'photoUrl') required this.url,
      @JsonKey(name: 'ifVideo') this.isVideo = false})
      : super._();

  factory _$PhotoResourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoResourceModelImplFromJson(json);

  /// 资源id
  @override
  @JsonKey(name: 'personalPhotoId')
  final int resourceId;

  /// 资源url
  @override
  @JsonKey(name: 'photoUrl')
  final String url;

  /// 是否视频文件
  @override
  @JsonKey(name: 'ifVideo')
  final bool isVideo;

  @override
  String toString() {
    return 'PhotoResourceModel(resourceId: $resourceId, url: $url, isVideo: $isVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoResourceModelImpl &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceId, url, isVideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoResourceModelImplCopyWith<_$PhotoResourceModelImpl> get copyWith =>
      __$$PhotoResourceModelImplCopyWithImpl<_$PhotoResourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoResourceModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoResourceModel extends PhotoResourceModel {
  const factory _PhotoResourceModel(
      {@JsonKey(name: 'personalPhotoId') required final int resourceId,
      @JsonKey(name: 'photoUrl') required final String url,
      @JsonKey(name: 'ifVideo') final bool isVideo}) = _$PhotoResourceModelImpl;
  const _PhotoResourceModel._() : super._();

  factory _PhotoResourceModel.fromJson(Map<String, dynamic> json) =
      _$PhotoResourceModelImpl.fromJson;

  @override

  /// 资源id
  @JsonKey(name: 'personalPhotoId')
  int get resourceId;
  @override

  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url;
  @override

  /// 是否视频文件
  @JsonKey(name: 'ifVideo')
  bool get isVideo;
  @override
  @JsonKey(ignore: true)
  _$$PhotoResourceModelImplCopyWith<_$PhotoResourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoResourceReq _$PhotoResourceReqFromJson(Map<String, dynamic> json) {
  return _PhotoResourceReq.fromJson(json);
}

/// @nodoc
mixin _$PhotoResourceReq {
  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url => throw _privateConstructorUsedError;

  /// 资源类型
  @JsonKey(name: 'photoType')
  @AlbumFileTypeJsonConverter()
  FileType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoResourceReqCopyWith<PhotoResourceReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoResourceReqCopyWith<$Res> {
  factory $PhotoResourceReqCopyWith(
          PhotoResourceReq value, $Res Function(PhotoResourceReq) then) =
      _$PhotoResourceReqCopyWithImpl<$Res, PhotoResourceReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'photoType') @AlbumFileTypeJsonConverter() FileType type});
}

/// @nodoc
class _$PhotoResourceReqCopyWithImpl<$Res, $Val extends PhotoResourceReq>
    implements $PhotoResourceReqCopyWith<$Res> {
  _$PhotoResourceReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoResourceReqImplCopyWith<$Res>
    implements $PhotoResourceReqCopyWith<$Res> {
  factory _$$PhotoResourceReqImplCopyWith(_$PhotoResourceReqImpl value,
          $Res Function(_$PhotoResourceReqImpl) then) =
      __$$PhotoResourceReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photoUrl') String url,
      @JsonKey(name: 'photoType') @AlbumFileTypeJsonConverter() FileType type});
}

/// @nodoc
class __$$PhotoResourceReqImplCopyWithImpl<$Res>
    extends _$PhotoResourceReqCopyWithImpl<$Res, _$PhotoResourceReqImpl>
    implements _$$PhotoResourceReqImplCopyWith<$Res> {
  __$$PhotoResourceReqImplCopyWithImpl(_$PhotoResourceReqImpl _value,
      $Res Function(_$PhotoResourceReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$PhotoResourceReqImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoResourceReqImpl extends _PhotoResourceReq {
  const _$PhotoResourceReqImpl(
      {@JsonKey(name: 'photoUrl') required this.url,
      @JsonKey(name: 'photoType')
      @AlbumFileTypeJsonConverter()
      required this.type})
      : super._();

  factory _$PhotoResourceReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoResourceReqImplFromJson(json);

  /// 资源url
  @override
  @JsonKey(name: 'photoUrl')
  final String url;

  /// 资源类型
  @override
  @JsonKey(name: 'photoType')
  @AlbumFileTypeJsonConverter()
  final FileType type;

  @override
  String toString() {
    return 'PhotoResourceReq(url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoResourceReqImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoResourceReqImplCopyWith<_$PhotoResourceReqImpl> get copyWith =>
      __$$PhotoResourceReqImplCopyWithImpl<_$PhotoResourceReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoResourceReqImplToJson(
      this,
    );
  }
}

abstract class _PhotoResourceReq extends PhotoResourceReq {
  const factory _PhotoResourceReq(
      {@JsonKey(name: 'photoUrl') required final String url,
      @JsonKey(name: 'photoType')
      @AlbumFileTypeJsonConverter()
      required final FileType type}) = _$PhotoResourceReqImpl;
  const _PhotoResourceReq._() : super._();

  factory _PhotoResourceReq.fromJson(Map<String, dynamic> json) =
      _$PhotoResourceReqImpl.fromJson;

  @override

  /// 资源url
  @JsonKey(name: 'photoUrl')
  String get url;
  @override

  /// 资源类型
  @JsonKey(name: 'photoType')
  @AlbumFileTypeJsonConverter()
  FileType get type;
  @override
  @JsonKey(ignore: true)
  _$$PhotoResourceReqImplCopyWith<_$PhotoResourceReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
