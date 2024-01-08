// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeListModel _$TimeListModelFromJson(Map<String, dynamic> json) {
  return _TimeListModel.fromJson(json);
}

/// @nodoc
mixin _$TimeListModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeListModelCopyWith<TimeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeListModelCopyWith<$Res> {
  factory $TimeListModelCopyWith(
          TimeListModel value, $Res Function(TimeListModel) then) =
      _$TimeListModelCopyWithImpl<$Res, TimeListModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$TimeListModelCopyWithImpl<$Res, $Val extends TimeListModel>
    implements $TimeListModelCopyWith<$Res> {
  _$TimeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeListModelImplCopyWith<$Res>
    implements $TimeListModelCopyWith<$Res> {
  factory _$$TimeListModelImplCopyWith(
          _$TimeListModelImpl value, $Res Function(_$TimeListModelImpl) then) =
      __$$TimeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$TimeListModelImplCopyWithImpl<$Res>
    extends _$TimeListModelCopyWithImpl<$Res, _$TimeListModelImpl>
    implements _$$TimeListModelImplCopyWith<$Res> {
  __$$TimeListModelImplCopyWithImpl(
      _$TimeListModelImpl _value, $Res Function(_$TimeListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TimeListModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeListModelImpl extends _TimeListModel {
  const _$TimeListModelImpl({this.id}) : super._();

  factory _$TimeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeListModelImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'TimeListModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeListModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeListModelImplCopyWith<_$TimeListModelImpl> get copyWith =>
      __$$TimeListModelImplCopyWithImpl<_$TimeListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeListModelImplToJson(
      this,
    );
  }
}

abstract class _TimeListModel extends TimeListModel {
  const factory _TimeListModel({final int? id}) = _$TimeListModelImpl;
  const _TimeListModel._() : super._();

  factory _TimeListModel.fromJson(Map<String, dynamic> json) =
      _$TimeListModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$TimeListModelImplCopyWith<_$TimeListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeMomentsModel _$TimeMomentsModelFromJson(Map<String, dynamic> json) {
  return _TimeMomentsModel.fromJson(json);
}

/// @nodoc
mixin _$TimeMomentsModel {
  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）	string
  @JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
  CatalogType get catalog => throw _privateConstructorUsedError;

  ///	创建家长手机号	string
  String? get createParentPhone => throw _privateConstructorUsedError;

  ///	创建时间	string
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  ///	创建人	integer
  String? get createUser => throw _privateConstructorUsedError;

  ///	是否已删除	integer
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  ///	对象id（学生id或者潜客生id）	integer
  String? get objId => throw _privateConstructorUsedError;

  ///	对象类型(1：正式生、 2 ：潜客生)	integer
  ObjType? get objType => throw _privateConstructorUsedError;

  ///	图片url列表	array	string
  List<String> get picUrls => throw _privateConstructorUsedError;

  ///	录音url列表	array	string
  List<String> get audioUrls => throw _privateConstructorUsedError;

  ///	视频url列表	array	string
  List<String> get videoUrls => throw _privateConstructorUsedError;

  ///	记录时间	string
  @DateTimeJsonConverter()
  DateTime? get recordTime => throw _privateConstructorUsedError;

  ///	业务状态	integer
  int? get status => throw _privateConstructorUsedError;

  ///	时光内容	string
  String? get timeMomentContent => throw _privateConstructorUsedError;

  ///	时光表ID	integer
  String get timeMomentId => throw _privateConstructorUsedError;

  ///	时光名字	string
  String? get timeMomentName => throw _privateConstructorUsedError;

  ///	最后修改家长手机号	string
  String? get updateParentPhone => throw _privateConstructorUsedError;

  ///	更新时间	string
  @DateTimeJsonConverter()
  DateTime get updateTime => throw _privateConstructorUsedError;

  ///	更新人	integer
  String? get updateUser => throw _privateConstructorUsedError;

  ///	年份	integer
  @JsonKey(name: 'yearNo')
  int? get year => throw _privateConstructorUsedError;

  /// diy 相册对象
  @JsonKey(name: 'diyStudentAlbum')
  TemplateDetailModel? get diy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeMomentsModelCopyWith<TimeMomentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeMomentsModelCopyWith<$Res> {
  factory $TimeMomentsModelCopyWith(
          TimeMomentsModel value, $Res Function(TimeMomentsModel) then) =
      _$TimeMomentsModelCopyWithImpl<$Res, TimeMomentsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
      CatalogType catalog,
      String? createParentPhone,
      @DateTimeJsonConverter() DateTime? createTime,
      String? createUser,
      @Int2BoolJsonConverter() bool isDeleted,
      String? objId,
      ObjType? objType,
      List<String> picUrls,
      List<String> audioUrls,
      List<String> videoUrls,
      @DateTimeJsonConverter() DateTime? recordTime,
      int? status,
      String? timeMomentContent,
      String timeMomentId,
      String? timeMomentName,
      String? updateParentPhone,
      @DateTimeJsonConverter() DateTime updateTime,
      String? updateUser,
      @JsonKey(name: 'yearNo') int? year,
      @JsonKey(name: 'diyStudentAlbum') TemplateDetailModel? diy});

  $TemplateDetailModelCopyWith<$Res>? get diy;
}

/// @nodoc
class _$TimeMomentsModelCopyWithImpl<$Res, $Val extends TimeMomentsModel>
    implements $TimeMomentsModelCopyWith<$Res> {
  _$TimeMomentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = null,
    Object? createParentPhone = freezed,
    Object? createTime = freezed,
    Object? createUser = freezed,
    Object? isDeleted = null,
    Object? objId = freezed,
    Object? objType = freezed,
    Object? picUrls = null,
    Object? audioUrls = null,
    Object? videoUrls = null,
    Object? recordTime = freezed,
    Object? status = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentId = null,
    Object? timeMomentName = freezed,
    Object? updateParentPhone = freezed,
    Object? updateTime = null,
    Object? updateUser = freezed,
    Object? year = freezed,
    Object? diy = freezed,
  }) {
    return _then(_value.copyWith(
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      createParentPhone: freezed == createParentPhone
          ? _value.createParentPhone
          : createParentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      objId: freezed == objId
          ? _value.objId
          : objId // ignore: cast_nullable_to_non_nullable
              as String?,
      objType: freezed == objType
          ? _value.objType
          : objType // ignore: cast_nullable_to_non_nullable
              as ObjType?,
      picUrls: null == picUrls
          ? _value.picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      audioUrls: null == audioUrls
          ? _value.audioUrls
          : audioUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recordTime: freezed == recordTime
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentId: null == timeMomentId
          ? _value.timeMomentId
          : timeMomentId // ignore: cast_nullable_to_non_nullable
              as String,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateParentPhone: freezed == updateParentPhone
          ? _value.updateParentPhone
          : updateParentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      diy: freezed == diy
          ? _value.diy
          : diy // ignore: cast_nullable_to_non_nullable
              as TemplateDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateDetailModelCopyWith<$Res>? get diy {
    if (_value.diy == null) {
      return null;
    }

    return $TemplateDetailModelCopyWith<$Res>(_value.diy!, (value) {
      return _then(_value.copyWith(diy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeMomentsModelImplCopyWith<$Res>
    implements $TimeMomentsModelCopyWith<$Res> {
  factory _$$TimeMomentsModelImplCopyWith(_$TimeMomentsModelImpl value,
          $Res Function(_$TimeMomentsModelImpl) then) =
      __$$TimeMomentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
      CatalogType catalog,
      String? createParentPhone,
      @DateTimeJsonConverter() DateTime? createTime,
      String? createUser,
      @Int2BoolJsonConverter() bool isDeleted,
      String? objId,
      ObjType? objType,
      List<String> picUrls,
      List<String> audioUrls,
      List<String> videoUrls,
      @DateTimeJsonConverter() DateTime? recordTime,
      int? status,
      String? timeMomentContent,
      String timeMomentId,
      String? timeMomentName,
      String? updateParentPhone,
      @DateTimeJsonConverter() DateTime updateTime,
      String? updateUser,
      @JsonKey(name: 'yearNo') int? year,
      @JsonKey(name: 'diyStudentAlbum') TemplateDetailModel? diy});

  @override
  $TemplateDetailModelCopyWith<$Res>? get diy;
}

/// @nodoc
class __$$TimeMomentsModelImplCopyWithImpl<$Res>
    extends _$TimeMomentsModelCopyWithImpl<$Res, _$TimeMomentsModelImpl>
    implements _$$TimeMomentsModelImplCopyWith<$Res> {
  __$$TimeMomentsModelImplCopyWithImpl(_$TimeMomentsModelImpl _value,
      $Res Function(_$TimeMomentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = null,
    Object? createParentPhone = freezed,
    Object? createTime = freezed,
    Object? createUser = freezed,
    Object? isDeleted = null,
    Object? objId = freezed,
    Object? objType = freezed,
    Object? picUrls = null,
    Object? audioUrls = null,
    Object? videoUrls = null,
    Object? recordTime = freezed,
    Object? status = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentId = null,
    Object? timeMomentName = freezed,
    Object? updateParentPhone = freezed,
    Object? updateTime = null,
    Object? updateUser = freezed,
    Object? year = freezed,
    Object? diy = freezed,
  }) {
    return _then(_$TimeMomentsModelImpl(
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      createParentPhone: freezed == createParentPhone
          ? _value.createParentPhone
          : createParentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      objId: freezed == objId
          ? _value.objId
          : objId // ignore: cast_nullable_to_non_nullable
              as String?,
      objType: freezed == objType
          ? _value.objType
          : objType // ignore: cast_nullable_to_non_nullable
              as ObjType?,
      picUrls: null == picUrls
          ? _value._picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      audioUrls: null == audioUrls
          ? _value._audioUrls
          : audioUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recordTime: freezed == recordTime
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentId: null == timeMomentId
          ? _value.timeMomentId
          : timeMomentId // ignore: cast_nullable_to_non_nullable
              as String,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateParentPhone: freezed == updateParentPhone
          ? _value.updateParentPhone
          : updateParentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      diy: freezed == diy
          ? _value.diy
          : diy // ignore: cast_nullable_to_non_nullable
              as TemplateDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeMomentsModelImpl extends _TimeMomentsModel {
  const _$TimeMomentsModelImpl(
      {@JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
      this.catalog = CatalogType.unknown,
      this.createParentPhone,
      @DateTimeJsonConverter() this.createTime,
      this.createUser,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.objId,
      this.objType,
      final List<String> picUrls = const [],
      final List<String> audioUrls = const [],
      final List<String> videoUrls = const [],
      @DateTimeJsonConverter() this.recordTime,
      this.status,
      this.timeMomentContent,
      required this.timeMomentId,
      this.timeMomentName,
      this.updateParentPhone,
      @DateTimeJsonConverter() required this.updateTime,
      this.updateUser,
      @JsonKey(name: 'yearNo') this.year,
      @JsonKey(name: 'diyStudentAlbum') this.diy})
      : _picUrls = picUrls,
        _audioUrls = audioUrls,
        _videoUrls = videoUrls,
        super._();

  factory _$TimeMomentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeMomentsModelImplFromJson(json);

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）	string
  @override
  @JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
  final CatalogType catalog;

  ///	创建家长手机号	string
  @override
  final String? createParentPhone;

  ///	创建时间	string
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  ///	创建人	integer
  @override
  final String? createUser;

  ///	是否已删除	integer
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  ///	对象id（学生id或者潜客生id）	integer
  @override
  final String? objId;

  ///	对象类型(1：正式生、 2 ：潜客生)	integer
  @override
  final ObjType? objType;

  ///	图片url列表	array	string
  final List<String> _picUrls;

  ///	图片url列表	array	string
  @override
  @JsonKey()
  List<String> get picUrls {
    if (_picUrls is EqualUnmodifiableListView) return _picUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picUrls);
  }

  ///	录音url列表	array	string
  final List<String> _audioUrls;

  ///	录音url列表	array	string
  @override
  @JsonKey()
  List<String> get audioUrls {
    if (_audioUrls is EqualUnmodifiableListView) return _audioUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioUrls);
  }

  ///	视频url列表	array	string
  final List<String> _videoUrls;

  ///	视频url列表	array	string
  @override
  @JsonKey()
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  ///	记录时间	string
  @override
  @DateTimeJsonConverter()
  final DateTime? recordTime;

  ///	业务状态	integer
  @override
  final int? status;

  ///	时光内容	string
  @override
  final String? timeMomentContent;

  ///	时光表ID	integer
  @override
  final String timeMomentId;

  ///	时光名字	string
  @override
  final String? timeMomentName;

  ///	最后修改家长手机号	string
  @override
  final String? updateParentPhone;

  ///	更新时间	string
  @override
  @DateTimeJsonConverter()
  final DateTime updateTime;

  ///	更新人	integer
  @override
  final String? updateUser;

  ///	年份	integer
  @override
  @JsonKey(name: 'yearNo')
  final int? year;

  /// diy 相册对象
  @override
  @JsonKey(name: 'diyStudentAlbum')
  final TemplateDetailModel? diy;

  @override
  String toString() {
    return 'TimeMomentsModel(catalog: $catalog, createParentPhone: $createParentPhone, createTime: $createTime, createUser: $createUser, isDeleted: $isDeleted, objId: $objId, objType: $objType, picUrls: $picUrls, audioUrls: $audioUrls, videoUrls: $videoUrls, recordTime: $recordTime, status: $status, timeMomentContent: $timeMomentContent, timeMomentId: $timeMomentId, timeMomentName: $timeMomentName, updateParentPhone: $updateParentPhone, updateTime: $updateTime, updateUser: $updateUser, year: $year, diy: $diy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeMomentsModelImpl &&
            (identical(other.catalog, catalog) || other.catalog == catalog) &&
            (identical(other.createParentPhone, createParentPhone) ||
                other.createParentPhone == createParentPhone) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.objId, objId) || other.objId == objId) &&
            (identical(other.objType, objType) || other.objType == objType) &&
            const DeepCollectionEquality().equals(other._picUrls, _picUrls) &&
            const DeepCollectionEquality()
                .equals(other._audioUrls, _audioUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            (identical(other.recordTime, recordTime) ||
                other.recordTime == recordTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeMomentContent, timeMomentContent) ||
                other.timeMomentContent == timeMomentContent) &&
            (identical(other.timeMomentId, timeMomentId) ||
                other.timeMomentId == timeMomentId) &&
            (identical(other.timeMomentName, timeMomentName) ||
                other.timeMomentName == timeMomentName) &&
            (identical(other.updateParentPhone, updateParentPhone) ||
                other.updateParentPhone == updateParentPhone) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.diy, diy) || other.diy == diy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        catalog,
        createParentPhone,
        createTime,
        createUser,
        isDeleted,
        objId,
        objType,
        const DeepCollectionEquality().hash(_picUrls),
        const DeepCollectionEquality().hash(_audioUrls),
        const DeepCollectionEquality().hash(_videoUrls),
        recordTime,
        status,
        timeMomentContent,
        timeMomentId,
        timeMomentName,
        updateParentPhone,
        updateTime,
        updateUser,
        year,
        diy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeMomentsModelImplCopyWith<_$TimeMomentsModelImpl> get copyWith =>
      __$$TimeMomentsModelImplCopyWithImpl<_$TimeMomentsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeMomentsModelImplToJson(
      this,
    );
  }
}

abstract class _TimeMomentsModel extends TimeMomentsModel {
  const factory _TimeMomentsModel(
          {@JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
          final CatalogType catalog,
          final String? createParentPhone,
          @DateTimeJsonConverter() final DateTime? createTime,
          final String? createUser,
          @Int2BoolJsonConverter() final bool isDeleted,
          final String? objId,
          final ObjType? objType,
          final List<String> picUrls,
          final List<String> audioUrls,
          final List<String> videoUrls,
          @DateTimeJsonConverter() final DateTime? recordTime,
          final int? status,
          final String? timeMomentContent,
          required final String timeMomentId,
          final String? timeMomentName,
          final String? updateParentPhone,
          @DateTimeJsonConverter() required final DateTime updateTime,
          final String? updateUser,
          @JsonKey(name: 'yearNo') final int? year,
          @JsonKey(name: 'diyStudentAlbum') final TemplateDetailModel? diy}) =
      _$TimeMomentsModelImpl;
  const _TimeMomentsModel._() : super._();

  factory _TimeMomentsModel.fromJson(Map<String, dynamic> json) =
      _$TimeMomentsModelImpl.fromJson;

  @override

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）	string
  @JsonKey(name: 'catalogType', unknownEnumValue: CatalogType.unknown)
  CatalogType get catalog;
  @override

  ///	创建家长手机号	string
  String? get createParentPhone;
  @override

  ///	创建时间	string
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  ///	创建人	integer
  String? get createUser;
  @override

  ///	是否已删除	integer
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  ///	对象id（学生id或者潜客生id）	integer
  String? get objId;
  @override

  ///	对象类型(1：正式生、 2 ：潜客生)	integer
  ObjType? get objType;
  @override

  ///	图片url列表	array	string
  List<String> get picUrls;
  @override

  ///	录音url列表	array	string
  List<String> get audioUrls;
  @override

  ///	视频url列表	array	string
  List<String> get videoUrls;
  @override

  ///	记录时间	string
  @DateTimeJsonConverter()
  DateTime? get recordTime;
  @override

  ///	业务状态	integer
  int? get status;
  @override

  ///	时光内容	string
  String? get timeMomentContent;
  @override

  ///	时光表ID	integer
  String get timeMomentId;
  @override

  ///	时光名字	string
  String? get timeMomentName;
  @override

  ///	最后修改家长手机号	string
  String? get updateParentPhone;
  @override

  ///	更新时间	string
  @DateTimeJsonConverter()
  DateTime get updateTime;
  @override

  ///	更新人	integer
  String? get updateUser;
  @override

  ///	年份	integer
  @JsonKey(name: 'yearNo')
  int? get year;
  @override

  /// diy 相册对象
  @JsonKey(name: 'diyStudentAlbum')
  TemplateDetailModel? get diy;
  @override
  @JsonKey(ignore: true)
  _$$TimeMomentsModelImplCopyWith<_$TimeMomentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeYearListModel _$TimeYearListModelFromJson(Map<String, dynamic> json) {
  return _TimeYearListModel.fromJson(json);
}

/// @nodoc
mixin _$TimeYearListModel {
  /// 日期 MM-dd 字符串格式
  @JsonKey(name: 'dayString')
  @DayStringJsonConverter()
  DateTime get dateTime => throw _privateConstructorUsedError;

  /// 日期 对应的 时光列表
  @JsonKey(name: 'timeMoments')
  List<TimeMomentsModel> get moments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeYearListModelCopyWith<TimeYearListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeYearListModelCopyWith<$Res> {
  factory $TimeYearListModelCopyWith(
          TimeYearListModel value, $Res Function(TimeYearListModel) then) =
      _$TimeYearListModelCopyWithImpl<$Res, TimeYearListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dayString') @DayStringJsonConverter() DateTime dateTime,
      @JsonKey(name: 'timeMoments') List<TimeMomentsModel> moments});
}

/// @nodoc
class _$TimeYearListModelCopyWithImpl<$Res, $Val extends TimeYearListModel>
    implements $TimeYearListModelCopyWith<$Res> {
  _$TimeYearListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? moments = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      moments: null == moments
          ? _value.moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<TimeMomentsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeYearListModelImplCopyWith<$Res>
    implements $TimeYearListModelCopyWith<$Res> {
  factory _$$TimeYearListModelImplCopyWith(_$TimeYearListModelImpl value,
          $Res Function(_$TimeYearListModelImpl) then) =
      __$$TimeYearListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dayString') @DayStringJsonConverter() DateTime dateTime,
      @JsonKey(name: 'timeMoments') List<TimeMomentsModel> moments});
}

/// @nodoc
class __$$TimeYearListModelImplCopyWithImpl<$Res>
    extends _$TimeYearListModelCopyWithImpl<$Res, _$TimeYearListModelImpl>
    implements _$$TimeYearListModelImplCopyWith<$Res> {
  __$$TimeYearListModelImplCopyWithImpl(_$TimeYearListModelImpl _value,
      $Res Function(_$TimeYearListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? moments = null,
  }) {
    return _then(_$TimeYearListModelImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      moments: null == moments
          ? _value.moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<TimeMomentsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeYearListModelImpl extends _TimeYearListModel {
  const _$TimeYearListModelImpl(
      {@JsonKey(name: 'dayString')
      @DayStringJsonConverter()
      required this.dateTime,
      @JsonKey(name: 'timeMoments') this.moments = const []})
      : super._();

  factory _$TimeYearListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeYearListModelImplFromJson(json);

  /// 日期 MM-dd 字符串格式
  @override
  @JsonKey(name: 'dayString')
  @DayStringJsonConverter()
  final DateTime dateTime;

  /// 日期 对应的 时光列表
  @override
  @JsonKey(name: 'timeMoments')
  final List<TimeMomentsModel> moments;

  @override
  String toString() {
    return 'TimeYearListModel(dateTime: $dateTime, moments: $moments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeYearListModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other.moments, moments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dateTime, const DeepCollectionEquality().hash(moments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeYearListModelImplCopyWith<_$TimeYearListModelImpl> get copyWith =>
      __$$TimeYearListModelImplCopyWithImpl<_$TimeYearListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeYearListModelImplToJson(
      this,
    );
  }
}

abstract class _TimeYearListModel extends TimeYearListModel {
  const factory _TimeYearListModel(
          {@JsonKey(name: 'dayString')
          @DayStringJsonConverter()
          required final DateTime dateTime,
          @JsonKey(name: 'timeMoments') final List<TimeMomentsModel> moments}) =
      _$TimeYearListModelImpl;
  const _TimeYearListModel._() : super._();

  factory _TimeYearListModel.fromJson(Map<String, dynamic> json) =
      _$TimeYearListModelImpl.fromJson;

  @override

  /// 日期 MM-dd 字符串格式
  @JsonKey(name: 'dayString')
  @DayStringJsonConverter()
  DateTime get dateTime;
  @override

  /// 日期 对应的 时光列表
  @JsonKey(name: 'timeMoments')
  List<TimeMomentsModel> get moments;
  @override
  @JsonKey(ignore: true)
  _$$TimeYearListModelImplCopyWith<_$TimeYearListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachsModel _$AttachsModelFromJson(Map<String, dynamic> json) {
  return _AttachsModel.fromJson(json);
}

/// @nodoc
mixin _$AttachsModel {
  /// 附件类型(pic:图片;video:视频;audio:录音)
  @JsonKey(name: 'attachType')
  @AlbumFileTypeJsonConverter()
  FileType get fileType => throw _privateConstructorUsedError;

  /// 附件地址
  @JsonKey(name: 'mediaUrl')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachsModelCopyWith<AttachsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachsModelCopyWith<$Res> {
  factory $AttachsModelCopyWith(
          AttachsModel value, $Res Function(AttachsModel) then) =
      _$AttachsModelCopyWithImpl<$Res, AttachsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attachType')
      @AlbumFileTypeJsonConverter()
      FileType fileType,
      @JsonKey(name: 'mediaUrl') String url});
}

/// @nodoc
class _$AttachsModelCopyWithImpl<$Res, $Val extends AttachsModel>
    implements $AttachsModelCopyWith<$Res> {
  _$AttachsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileType = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachsModelImplCopyWith<$Res>
    implements $AttachsModelCopyWith<$Res> {
  factory _$$AttachsModelImplCopyWith(
          _$AttachsModelImpl value, $Res Function(_$AttachsModelImpl) then) =
      __$$AttachsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attachType')
      @AlbumFileTypeJsonConverter()
      FileType fileType,
      @JsonKey(name: 'mediaUrl') String url});
}

/// @nodoc
class __$$AttachsModelImplCopyWithImpl<$Res>
    extends _$AttachsModelCopyWithImpl<$Res, _$AttachsModelImpl>
    implements _$$AttachsModelImplCopyWith<$Res> {
  __$$AttachsModelImplCopyWithImpl(
      _$AttachsModelImpl _value, $Res Function(_$AttachsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileType = null,
    Object? url = null,
  }) {
    return _then(_$AttachsModelImpl(
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachsModelImpl extends _AttachsModel {
  const _$AttachsModelImpl(
      {@JsonKey(name: 'attachType')
      @AlbumFileTypeJsonConverter()
      required this.fileType,
      @JsonKey(name: 'mediaUrl') required this.url})
      : super._();

  factory _$AttachsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachsModelImplFromJson(json);

  /// 附件类型(pic:图片;video:视频;audio:录音)
  @override
  @JsonKey(name: 'attachType')
  @AlbumFileTypeJsonConverter()
  final FileType fileType;

  /// 附件地址
  @override
  @JsonKey(name: 'mediaUrl')
  final String url;

  @override
  String toString() {
    return 'AttachsModel(fileType: $fileType, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachsModelImpl &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachsModelImplCopyWith<_$AttachsModelImpl> get copyWith =>
      __$$AttachsModelImplCopyWithImpl<_$AttachsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachsModelImplToJson(
      this,
    );
  }
}

abstract class _AttachsModel extends AttachsModel {
  const factory _AttachsModel(
          {@JsonKey(name: 'attachType')
          @AlbumFileTypeJsonConverter()
          required final FileType fileType,
          @JsonKey(name: 'mediaUrl') required final String url}) =
      _$AttachsModelImpl;
  const _AttachsModel._() : super._();

  factory _AttachsModel.fromJson(Map<String, dynamic> json) =
      _$AttachsModelImpl.fromJson;

  @override

  /// 附件类型(pic:图片;video:视频;audio:录音)
  @JsonKey(name: 'attachType')
  @AlbumFileTypeJsonConverter()
  FileType get fileType;
  @override

  /// 附件地址
  @JsonKey(name: 'mediaUrl')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$AttachsModelImplCopyWith<_$AttachsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddTimeLineReq _$AddTimeLineReqFromJson(Map<String, dynamic> json) {
  return _AddTimeLineReq.fromJson(json);
}

/// @nodoc
mixin _$AddTimeLineReq {
  ///	附件列表
  List<AttachsModel>? get attachs => throw _privateConstructorUsedError;

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  CatalogType? get catalogType => throw _privateConstructorUsedError;

  ///	时光内容		false	    string
  String? get timeMomentContent => throw _privateConstructorUsedError;

  ///	时光名字		false	    string
  String? get timeMomentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTimeLineReqCopyWith<AddTimeLineReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTimeLineReqCopyWith<$Res> {
  factory $AddTimeLineReqCopyWith(
          AddTimeLineReq value, $Res Function(AddTimeLineReq) then) =
      _$AddTimeLineReqCopyWithImpl<$Res, AddTimeLineReq>;
  @useResult
  $Res call(
      {List<AttachsModel>? attachs,
      CatalogType? catalogType,
      String? timeMomentContent,
      String? timeMomentName});
}

/// @nodoc
class _$AddTimeLineReqCopyWithImpl<$Res, $Val extends AddTimeLineReq>
    implements $AddTimeLineReqCopyWith<$Res> {
  _$AddTimeLineReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachs = freezed,
    Object? catalogType = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentName = freezed,
  }) {
    return _then(_value.copyWith(
      attachs: freezed == attachs
          ? _value.attachs
          : attachs // ignore: cast_nullable_to_non_nullable
              as List<AttachsModel>?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTimeLineReqImplCopyWith<$Res>
    implements $AddTimeLineReqCopyWith<$Res> {
  factory _$$AddTimeLineReqImplCopyWith(_$AddTimeLineReqImpl value,
          $Res Function(_$AddTimeLineReqImpl) then) =
      __$$AddTimeLineReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttachsModel>? attachs,
      CatalogType? catalogType,
      String? timeMomentContent,
      String? timeMomentName});
}

/// @nodoc
class __$$AddTimeLineReqImplCopyWithImpl<$Res>
    extends _$AddTimeLineReqCopyWithImpl<$Res, _$AddTimeLineReqImpl>
    implements _$$AddTimeLineReqImplCopyWith<$Res> {
  __$$AddTimeLineReqImplCopyWithImpl(
      _$AddTimeLineReqImpl _value, $Res Function(_$AddTimeLineReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachs = freezed,
    Object? catalogType = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentName = freezed,
  }) {
    return _then(_$AddTimeLineReqImpl(
      attachs: freezed == attachs
          ? _value._attachs
          : attachs // ignore: cast_nullable_to_non_nullable
              as List<AttachsModel>?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTimeLineReqImpl extends _AddTimeLineReq {
  const _$AddTimeLineReqImpl(
      {final List<AttachsModel>? attachs,
      this.catalogType,
      this.timeMomentContent,
      this.timeMomentName})
      : _attachs = attachs,
        super._();

  factory _$AddTimeLineReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTimeLineReqImplFromJson(json);

  ///	附件列表
  final List<AttachsModel>? _attachs;

  ///	附件列表
  @override
  List<AttachsModel>? get attachs {
    final value = _attachs;
    if (value == null) return null;
    if (_attachs is EqualUnmodifiableListView) return _attachs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  @override
  final CatalogType? catalogType;

  ///	时光内容		false	    string
  @override
  final String? timeMomentContent;

  ///	时光名字		false	    string
  @override
  final String? timeMomentName;

  @override
  String toString() {
    return 'AddTimeLineReq(attachs: $attachs, catalogType: $catalogType, timeMomentContent: $timeMomentContent, timeMomentName: $timeMomentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTimeLineReqImpl &&
            const DeepCollectionEquality().equals(other._attachs, _attachs) &&
            (identical(other.catalogType, catalogType) ||
                other.catalogType == catalogType) &&
            (identical(other.timeMomentContent, timeMomentContent) ||
                other.timeMomentContent == timeMomentContent) &&
            (identical(other.timeMomentName, timeMomentName) ||
                other.timeMomentName == timeMomentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attachs),
      catalogType,
      timeMomentContent,
      timeMomentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTimeLineReqImplCopyWith<_$AddTimeLineReqImpl> get copyWith =>
      __$$AddTimeLineReqImplCopyWithImpl<_$AddTimeLineReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTimeLineReqImplToJson(
      this,
    );
  }
}

abstract class _AddTimeLineReq extends AddTimeLineReq {
  const factory _AddTimeLineReq(
      {final List<AttachsModel>? attachs,
      final CatalogType? catalogType,
      final String? timeMomentContent,
      final String? timeMomentName}) = _$AddTimeLineReqImpl;
  const _AddTimeLineReq._() : super._();

  factory _AddTimeLineReq.fromJson(Map<String, dynamic> json) =
      _$AddTimeLineReqImpl.fromJson;

  @override

  ///	附件列表
  List<AttachsModel>? get attachs;
  @override

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  CatalogType? get catalogType;
  @override

  ///	时光内容		false	    string
  String? get timeMomentContent;
  @override

  ///	时光名字		false	    string
  String? get timeMomentName;
  @override
  @JsonKey(ignore: true)
  _$$AddTimeLineReqImplCopyWith<_$AddTimeLineReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditTimeLineReq _$EditTimeLineReqFromJson(Map<String, dynamic> json) {
  return _EditTimeLineReq.fromJson(json);
}

/// @nodoc
mixin _$EditTimeLineReq {
  ///	附件列表
  List<AttachsModel>? get attachs => throw _privateConstructorUsedError;

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  CatalogType? get catalogType => throw _privateConstructorUsedError;

  ///	时光内容		false	    string
  String? get timeMomentContent => throw _privateConstructorUsedError;

  ///	时光表ID		false	    string
  int get timeMomentId => throw _privateConstructorUsedError;

  ///	时光名字		false	    string
  String? get timeMomentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditTimeLineReqCopyWith<EditTimeLineReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTimeLineReqCopyWith<$Res> {
  factory $EditTimeLineReqCopyWith(
          EditTimeLineReq value, $Res Function(EditTimeLineReq) then) =
      _$EditTimeLineReqCopyWithImpl<$Res, EditTimeLineReq>;
  @useResult
  $Res call(
      {List<AttachsModel>? attachs,
      CatalogType? catalogType,
      String? timeMomentContent,
      int timeMomentId,
      String? timeMomentName});
}

/// @nodoc
class _$EditTimeLineReqCopyWithImpl<$Res, $Val extends EditTimeLineReq>
    implements $EditTimeLineReqCopyWith<$Res> {
  _$EditTimeLineReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachs = freezed,
    Object? catalogType = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentId = null,
    Object? timeMomentName = freezed,
  }) {
    return _then(_value.copyWith(
      attachs: freezed == attachs
          ? _value.attachs
          : attachs // ignore: cast_nullable_to_non_nullable
              as List<AttachsModel>?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentId: null == timeMomentId
          ? _value.timeMomentId
          : timeMomentId // ignore: cast_nullable_to_non_nullable
              as int,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTimeLineReqImplCopyWith<$Res>
    implements $EditTimeLineReqCopyWith<$Res> {
  factory _$$EditTimeLineReqImplCopyWith(_$EditTimeLineReqImpl value,
          $Res Function(_$EditTimeLineReqImpl) then) =
      __$$EditTimeLineReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttachsModel>? attachs,
      CatalogType? catalogType,
      String? timeMomentContent,
      int timeMomentId,
      String? timeMomentName});
}

/// @nodoc
class __$$EditTimeLineReqImplCopyWithImpl<$Res>
    extends _$EditTimeLineReqCopyWithImpl<$Res, _$EditTimeLineReqImpl>
    implements _$$EditTimeLineReqImplCopyWith<$Res> {
  __$$EditTimeLineReqImplCopyWithImpl(
      _$EditTimeLineReqImpl _value, $Res Function(_$EditTimeLineReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachs = freezed,
    Object? catalogType = freezed,
    Object? timeMomentContent = freezed,
    Object? timeMomentId = null,
    Object? timeMomentName = freezed,
  }) {
    return _then(_$EditTimeLineReqImpl(
      attachs: freezed == attachs
          ? _value._attachs
          : attachs // ignore: cast_nullable_to_non_nullable
              as List<AttachsModel>?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      timeMomentContent: freezed == timeMomentContent
          ? _value.timeMomentContent
          : timeMomentContent // ignore: cast_nullable_to_non_nullable
              as String?,
      timeMomentId: null == timeMomentId
          ? _value.timeMomentId
          : timeMomentId // ignore: cast_nullable_to_non_nullable
              as int,
      timeMomentName: freezed == timeMomentName
          ? _value.timeMomentName
          : timeMomentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditTimeLineReqImpl extends _EditTimeLineReq {
  const _$EditTimeLineReqImpl(
      {final List<AttachsModel>? attachs,
      this.catalogType,
      this.timeMomentContent,
      required this.timeMomentId,
      this.timeMomentName})
      : _attachs = attachs,
        super._();

  factory _$EditTimeLineReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditTimeLineReqImplFromJson(json);

  ///	附件列表
  final List<AttachsModel>? _attachs;

  ///	附件列表
  @override
  List<AttachsModel>? get attachs {
    final value = _attachs;
    if (value == null) return null;
    if (_attachs is EqualUnmodifiableListView) return _attachs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  @override
  final CatalogType? catalogType;

  ///	时光内容		false	    string
  @override
  final String? timeMomentContent;

  ///	时光表ID		false	    string
  @override
  final int timeMomentId;

  ///	时光名字		false	    string
  @override
  final String? timeMomentName;

  @override
  String toString() {
    return 'EditTimeLineReq(attachs: $attachs, catalogType: $catalogType, timeMomentContent: $timeMomentContent, timeMomentId: $timeMomentId, timeMomentName: $timeMomentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTimeLineReqImpl &&
            const DeepCollectionEquality().equals(other._attachs, _attachs) &&
            (identical(other.catalogType, catalogType) ||
                other.catalogType == catalogType) &&
            (identical(other.timeMomentContent, timeMomentContent) ||
                other.timeMomentContent == timeMomentContent) &&
            (identical(other.timeMomentId, timeMomentId) ||
                other.timeMomentId == timeMomentId) &&
            (identical(other.timeMomentName, timeMomentName) ||
                other.timeMomentName == timeMomentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attachs),
      catalogType,
      timeMomentContent,
      timeMomentId,
      timeMomentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTimeLineReqImplCopyWith<_$EditTimeLineReqImpl> get copyWith =>
      __$$EditTimeLineReqImplCopyWithImpl<_$EditTimeLineReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditTimeLineReqImplToJson(
      this,
    );
  }
}

abstract class _EditTimeLineReq extends EditTimeLineReq {
  const factory _EditTimeLineReq(
      {final List<AttachsModel>? attachs,
      final CatalogType? catalogType,
      final String? timeMomentContent,
      required final int timeMomentId,
      final String? timeMomentName}) = _$EditTimeLineReqImpl;
  const _EditTimeLineReq._() : super._();

  factory _EditTimeLineReq.fromJson(Map<String, dynamic> json) =
      _$EditTimeLineReqImpl.fromJson;

  @override

  ///	附件列表
  List<AttachsModel>? get attachs;
  @override

  ///	分类（first:第一次;wonderful:精彩瞬间;achievement:成就时刻;other:其他）		false	    string
  CatalogType? get catalogType;
  @override

  ///	时光内容		false	    string
  String? get timeMomentContent;
  @override

  ///	时光表ID		false	    string
  int get timeMomentId;
  @override

  ///	时光名字		false	    string
  String? get timeMomentName;
  @override
  @JsonKey(ignore: true)
  _$$EditTimeLineReqImplCopyWith<_$EditTimeLineReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YearDataList _$YearDataListFromJson(Map<String, dynamic> json) {
  return _YearDataList.fromJson(json);
}

/// @nodoc
mixin _$YearDataList {
  int get yearNo => throw _privateConstructorUsedError;
  CatalogType get type => throw _privateConstructorUsedError;
  List<TimeYearListModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YearDataListCopyWith<YearDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearDataListCopyWith<$Res> {
  factory $YearDataListCopyWith(
          YearDataList value, $Res Function(YearDataList) then) =
      _$YearDataListCopyWithImpl<$Res, YearDataList>;
  @useResult
  $Res call({int yearNo, CatalogType type, List<TimeYearListModel> items});
}

/// @nodoc
class _$YearDataListCopyWithImpl<$Res, $Val extends YearDataList>
    implements $YearDataListCopyWith<$Res> {
  _$YearDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearNo = null,
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      yearNo: null == yearNo
          ? _value.yearNo
          : yearNo // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimeYearListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearDataListImplCopyWith<$Res>
    implements $YearDataListCopyWith<$Res> {
  factory _$$YearDataListImplCopyWith(
          _$YearDataListImpl value, $Res Function(_$YearDataListImpl) then) =
      __$$YearDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int yearNo, CatalogType type, List<TimeYearListModel> items});
}

/// @nodoc
class __$$YearDataListImplCopyWithImpl<$Res>
    extends _$YearDataListCopyWithImpl<$Res, _$YearDataListImpl>
    implements _$$YearDataListImplCopyWith<$Res> {
  __$$YearDataListImplCopyWithImpl(
      _$YearDataListImpl _value, $Res Function(_$YearDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearNo = null,
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_$YearDataListImpl(
      yearNo: null == yearNo
          ? _value.yearNo
          : yearNo // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimeYearListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearDataListImpl extends _YearDataList {
  const _$YearDataListImpl(
      {required this.yearNo,
      required this.type,
      required final List<TimeYearListModel> items})
      : _items = items,
        super._();

  factory _$YearDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearDataListImplFromJson(json);

  @override
  final int yearNo;
  @override
  final CatalogType type;
  final List<TimeYearListModel> _items;
  @override
  List<TimeYearListModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'YearDataList(yearNo: $yearNo, type: $type, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearDataListImpl &&
            (identical(other.yearNo, yearNo) || other.yearNo == yearNo) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, yearNo, type, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearDataListImplCopyWith<_$YearDataListImpl> get copyWith =>
      __$$YearDataListImplCopyWithImpl<_$YearDataListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearDataListImplToJson(
      this,
    );
  }
}

abstract class _YearDataList extends YearDataList {
  const factory _YearDataList(
      {required final int yearNo,
      required final CatalogType type,
      required final List<TimeYearListModel> items}) = _$YearDataListImpl;
  const _YearDataList._() : super._();

  factory _YearDataList.fromJson(Map<String, dynamic> json) =
      _$YearDataListImpl.fromJson;

  @override
  int get yearNo;
  @override
  CatalogType get type;
  @override
  List<TimeYearListModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$YearDataListImplCopyWith<_$YearDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
