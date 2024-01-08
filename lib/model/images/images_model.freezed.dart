// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  ///	发布活动ID	integer(int64)
  int get activityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call({int activityId});
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int activityId});
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_$PhotoModelImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoModelImpl extends _PhotoModel {
  const _$PhotoModelImpl({this.activityId = 0}) : super._();

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  ///	发布活动ID	integer(int64)
  @override
  @JsonKey()
  final int activityId;

  @override
  String toString() {
    return 'PhotoModel(activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel extends PhotoModel {
  const factory _PhotoModel({final int activityId}) = _$PhotoModelImpl;
  const _PhotoModel._() : super._();

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override

  ///	发布活动ID	integer(int64)
  int get activityId;
  @override
  @JsonKey(ignore: true)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return _ImagesModel.fromJson(json);
}

/// @nodoc
mixin _$ImagesModel {
  ///	发布活动ID	integer(int64)
  int get activityId => throw _privateConstructorUsedError;

  ///	活动类型(1 学校、 2 班级 、3个人)	integer(int32)
  ActivityType? get activityType => throw _privateConstructorUsedError;

  ///	班级编码	string
  String get classCode => throw _privateConstructorUsedError;

  ///	评论人数	integer(int32)
  int get commentNum => throw _privateConstructorUsedError;

  ///	内容	string
  String get content => throw _privateConstructorUsedError;

  ///	创建老师编码	string
  String get createTeacherCode => throw _privateConstructorUsedError;

  ///	创建时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  ///	创建人	integer(int64)
  String get createUser => throw _privateConstructorUsedError;

  ///	发布时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get deployDate => throw _privateConstructorUsedError;

  ///	发布老师编码	string
  String get deployTeacherCode => throw _privateConstructorUsedError;

  ///	发布老师姓名	string
  String get deployTeacherName => throw _privateConstructorUsedError;

  ///	年级编码	string
  String get gradeCode => throw _privateConstructorUsedError;

  ///	是否已删除	integer(int32)
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  ///	个人剪影发布类型(1分别 2组合)	integer(int32)
  PersonalDeployType get personalDeployType =>
      throw _privateConstructorUsedError;

  ///	照片内容	string
  String get photoInfo => throw _privateConstructorUsedError;

  ///	照片列表	array	PhotoDTO
  List<PhotoModel> get photoList => throw _privateConstructorUsedError;

  ///	学校编码	string
  String get schoolCode => throw _privateConstructorUsedError;

  ///	业务状态	integer(int32)
  int get status => throw _privateConstructorUsedError;

  ///	标题	string
  String get title => throw _privateConstructorUsedError;

  ///	最后修改老师	string
  String get updateTeacherCode => throw _privateConstructorUsedError;

  ///	更新时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  ///	更新人	integer(int64)
  String get updateUser => throw _privateConstructorUsedError;

  ///	查看人数	integer(int32)
  int get viewNum => throw _privateConstructorUsedError;

  ///	学期编码	string
  String get yearTermCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesModelCopyWith<ImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) then) =
      _$ImagesModelCopyWithImpl<$Res, ImagesModel>;
  @useResult
  $Res call(
      {int activityId,
      ActivityType? activityType,
      String classCode,
      int commentNum,
      String content,
      String createTeacherCode,
      @StringTimestampNullableJsonConverter() DateTime? createTime,
      String createUser,
      @StringTimestampNullableJsonConverter() DateTime? deployDate,
      String deployTeacherCode,
      String deployTeacherName,
      String gradeCode,
      @Int2BoolJsonConverter() bool isDeleted,
      PersonalDeployType personalDeployType,
      String photoInfo,
      List<PhotoModel> photoList,
      String schoolCode,
      int status,
      String title,
      String updateTeacherCode,
      @StringTimestampNullableJsonConverter() DateTime? updateTime,
      String updateUser,
      int viewNum,
      String yearTermCode});
}

/// @nodoc
class _$ImagesModelCopyWithImpl<$Res, $Val extends ImagesModel>
    implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? activityType = freezed,
    Object? classCode = null,
    Object? commentNum = null,
    Object? content = null,
    Object? createTeacherCode = null,
    Object? createTime = freezed,
    Object? createUser = null,
    Object? deployDate = freezed,
    Object? deployTeacherCode = null,
    Object? deployTeacherName = null,
    Object? gradeCode = null,
    Object? isDeleted = null,
    Object? personalDeployType = null,
    Object? photoInfo = null,
    Object? photoList = null,
    Object? schoolCode = null,
    Object? status = null,
    Object? title = null,
    Object? updateTeacherCode = null,
    Object? updateTime = freezed,
    Object? updateUser = null,
    Object? viewNum = null,
    Object? yearTermCode = null,
  }) {
    return _then(_value.copyWith(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createTeacherCode: null == createTeacherCode
          ? _value.createTeacherCode
          : createTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: null == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String,
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
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      personalDeployType: null == personalDeployType
          ? _value.personalDeployType
          : personalDeployType // ignore: cast_nullable_to_non_nullable
              as PersonalDeployType,
      photoInfo: null == photoInfo
          ? _value.photoInfo
          : photoInfo // ignore: cast_nullable_to_non_nullable
              as String,
      photoList: null == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTeacherCode: null == updateTeacherCode
          ? _value.updateTeacherCode
          : updateTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: null == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String,
      viewNum: null == viewNum
          ? _value.viewNum
          : viewNum // ignore: cast_nullable_to_non_nullable
              as int,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesModelImplCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$$ImagesModelImplCopyWith(
          _$ImagesModelImpl value, $Res Function(_$ImagesModelImpl) then) =
      __$$ImagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int activityId,
      ActivityType? activityType,
      String classCode,
      int commentNum,
      String content,
      String createTeacherCode,
      @StringTimestampNullableJsonConverter() DateTime? createTime,
      String createUser,
      @StringTimestampNullableJsonConverter() DateTime? deployDate,
      String deployTeacherCode,
      String deployTeacherName,
      String gradeCode,
      @Int2BoolJsonConverter() bool isDeleted,
      PersonalDeployType personalDeployType,
      String photoInfo,
      List<PhotoModel> photoList,
      String schoolCode,
      int status,
      String title,
      String updateTeacherCode,
      @StringTimestampNullableJsonConverter() DateTime? updateTime,
      String updateUser,
      int viewNum,
      String yearTermCode});
}

/// @nodoc
class __$$ImagesModelImplCopyWithImpl<$Res>
    extends _$ImagesModelCopyWithImpl<$Res, _$ImagesModelImpl>
    implements _$$ImagesModelImplCopyWith<$Res> {
  __$$ImagesModelImplCopyWithImpl(
      _$ImagesModelImpl _value, $Res Function(_$ImagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? activityType = freezed,
    Object? classCode = null,
    Object? commentNum = null,
    Object? content = null,
    Object? createTeacherCode = null,
    Object? createTime = freezed,
    Object? createUser = null,
    Object? deployDate = freezed,
    Object? deployTeacherCode = null,
    Object? deployTeacherName = null,
    Object? gradeCode = null,
    Object? isDeleted = null,
    Object? personalDeployType = null,
    Object? photoInfo = null,
    Object? photoList = null,
    Object? schoolCode = null,
    Object? status = null,
    Object? title = null,
    Object? updateTeacherCode = null,
    Object? updateTime = freezed,
    Object? updateUser = null,
    Object? viewNum = null,
    Object? yearTermCode = null,
  }) {
    return _then(_$ImagesModelImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createTeacherCode: null == createTeacherCode
          ? _value.createTeacherCode
          : createTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: null == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String,
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
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      personalDeployType: null == personalDeployType
          ? _value.personalDeployType
          : personalDeployType // ignore: cast_nullable_to_non_nullable
              as PersonalDeployType,
      photoInfo: null == photoInfo
          ? _value.photoInfo
          : photoInfo // ignore: cast_nullable_to_non_nullable
              as String,
      photoList: null == photoList
          ? _value._photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTeacherCode: null == updateTeacherCode
          ? _value.updateTeacherCode
          : updateTeacherCode // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: null == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String,
      viewNum: null == viewNum
          ? _value.viewNum
          : viewNum // ignore: cast_nullable_to_non_nullable
              as int,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesModelImpl extends _ImagesModel {
  const _$ImagesModelImpl(
      {this.activityId = 0,
      this.activityType,
      this.classCode = '',
      this.commentNum = 0,
      this.content = '',
      this.createTeacherCode = '',
      @StringTimestampNullableJsonConverter() this.createTime,
      this.createUser = '',
      @StringTimestampNullableJsonConverter() this.deployDate,
      this.deployTeacherCode = '',
      this.deployTeacherName = '',
      this.gradeCode = '',
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.personalDeployType = PersonalDeployType.part,
      this.photoInfo = '',
      final List<PhotoModel> photoList = const [],
      this.schoolCode = '',
      this.status = 0,
      this.title = '',
      this.updateTeacherCode = '',
      @StringTimestampNullableJsonConverter() this.updateTime,
      this.updateUser = '',
      this.viewNum = 0,
      this.yearTermCode = ''})
      : _photoList = photoList,
        super._();

  factory _$ImagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesModelImplFromJson(json);

  ///	发布活动ID	integer(int64)
  @override
  @JsonKey()
  final int activityId;

  ///	活动类型(1 学校、 2 班级 、3个人)	integer(int32)
  @override
  final ActivityType? activityType;

  ///	班级编码	string
  @override
  @JsonKey()
  final String classCode;

  ///	评论人数	integer(int32)
  @override
  @JsonKey()
  final int commentNum;

  ///	内容	string
  @override
  @JsonKey()
  final String content;

  ///	创建老师编码	string
  @override
  @JsonKey()
  final String createTeacherCode;

  ///	创建时间	string(date-time)
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? createTime;

  ///	创建人	integer(int64)
  @override
  @JsonKey()
  final String createUser;

  ///	发布时间	string(date-time)
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? deployDate;

  ///	发布老师编码	string
  @override
  @JsonKey()
  final String deployTeacherCode;

  ///	发布老师姓名	string
  @override
  @JsonKey()
  final String deployTeacherName;

  ///	年级编码	string
  @override
  @JsonKey()
  final String gradeCode;

  ///	是否已删除	integer(int32)
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  ///	个人剪影发布类型(1分别 2组合)	integer(int32)
  @override
  @JsonKey()
  final PersonalDeployType personalDeployType;

  ///	照片内容	string
  @override
  @JsonKey()
  final String photoInfo;

  ///	照片列表	array	PhotoDTO
  final List<PhotoModel> _photoList;

  ///	照片列表	array	PhotoDTO
  @override
  @JsonKey()
  List<PhotoModel> get photoList {
    if (_photoList is EqualUnmodifiableListView) return _photoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoList);
  }

  ///	学校编码	string
  @override
  @JsonKey()
  final String schoolCode;

  ///	业务状态	integer(int32)
  @override
  @JsonKey()
  final int status;

  ///	标题	string
  @override
  @JsonKey()
  final String title;

  ///	最后修改老师	string
  @override
  @JsonKey()
  final String updateTeacherCode;

  ///	更新时间	string(date-time)
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? updateTime;

  ///	更新人	integer(int64)
  @override
  @JsonKey()
  final String updateUser;

  ///	查看人数	integer(int32)
  @override
  @JsonKey()
  final int viewNum;

  ///	学期编码	string
  @override
  @JsonKey()
  final String yearTermCode;

  @override
  String toString() {
    return 'ImagesModel(activityId: $activityId, activityType: $activityType, classCode: $classCode, commentNum: $commentNum, content: $content, createTeacherCode: $createTeacherCode, createTime: $createTime, createUser: $createUser, deployDate: $deployDate, deployTeacherCode: $deployTeacherCode, deployTeacherName: $deployTeacherName, gradeCode: $gradeCode, isDeleted: $isDeleted, personalDeployType: $personalDeployType, photoInfo: $photoInfo, photoList: $photoList, schoolCode: $schoolCode, status: $status, title: $title, updateTeacherCode: $updateTeacherCode, updateTime: $updateTime, updateUser: $updateUser, viewNum: $viewNum, yearTermCode: $yearTermCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesModelImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.commentNum, commentNum) ||
                other.commentNum == commentNum) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createTeacherCode, createTeacherCode) ||
                other.createTeacherCode == createTeacherCode) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.deployDate, deployDate) ||
                other.deployDate == deployDate) &&
            (identical(other.deployTeacherCode, deployTeacherCode) ||
                other.deployTeacherCode == deployTeacherCode) &&
            (identical(other.deployTeacherName, deployTeacherName) ||
                other.deployTeacherName == deployTeacherName) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.personalDeployType, personalDeployType) ||
                other.personalDeployType == personalDeployType) &&
            (identical(other.photoInfo, photoInfo) ||
                other.photoInfo == photoInfo) &&
            const DeepCollectionEquality()
                .equals(other._photoList, _photoList) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updateTeacherCode, updateTeacherCode) ||
                other.updateTeacherCode == updateTeacherCode) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.viewNum, viewNum) || other.viewNum == viewNum) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        activityId,
        activityType,
        classCode,
        commentNum,
        content,
        createTeacherCode,
        createTime,
        createUser,
        deployDate,
        deployTeacherCode,
        deployTeacherName,
        gradeCode,
        isDeleted,
        personalDeployType,
        photoInfo,
        const DeepCollectionEquality().hash(_photoList),
        schoolCode,
        status,
        title,
        updateTeacherCode,
        updateTime,
        updateUser,
        viewNum,
        yearTermCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesModelImplCopyWith<_$ImagesModelImpl> get copyWith =>
      __$$ImagesModelImplCopyWithImpl<_$ImagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesModelImplToJson(
      this,
    );
  }
}

abstract class _ImagesModel extends ImagesModel {
  const factory _ImagesModel(
      {final int activityId,
      final ActivityType? activityType,
      final String classCode,
      final int commentNum,
      final String content,
      final String createTeacherCode,
      @StringTimestampNullableJsonConverter() final DateTime? createTime,
      final String createUser,
      @StringTimestampNullableJsonConverter() final DateTime? deployDate,
      final String deployTeacherCode,
      final String deployTeacherName,
      final String gradeCode,
      @Int2BoolJsonConverter() final bool isDeleted,
      final PersonalDeployType personalDeployType,
      final String photoInfo,
      final List<PhotoModel> photoList,
      final String schoolCode,
      final int status,
      final String title,
      final String updateTeacherCode,
      @StringTimestampNullableJsonConverter() final DateTime? updateTime,
      final String updateUser,
      final int viewNum,
      final String yearTermCode}) = _$ImagesModelImpl;
  const _ImagesModel._() : super._();

  factory _ImagesModel.fromJson(Map<String, dynamic> json) =
      _$ImagesModelImpl.fromJson;

  @override

  ///	发布活动ID	integer(int64)
  int get activityId;
  @override

  ///	活动类型(1 学校、 2 班级 、3个人)	integer(int32)
  ActivityType? get activityType;
  @override

  ///	班级编码	string
  String get classCode;
  @override

  ///	评论人数	integer(int32)
  int get commentNum;
  @override

  ///	内容	string
  String get content;
  @override

  ///	创建老师编码	string
  String get createTeacherCode;
  @override

  ///	创建时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get createTime;
  @override

  ///	创建人	integer(int64)
  String get createUser;
  @override

  ///	发布时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get deployDate;
  @override

  ///	发布老师编码	string
  String get deployTeacherCode;
  @override

  ///	发布老师姓名	string
  String get deployTeacherName;
  @override

  ///	年级编码	string
  String get gradeCode;
  @override

  ///	是否已删除	integer(int32)
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  ///	个人剪影发布类型(1分别 2组合)	integer(int32)
  PersonalDeployType get personalDeployType;
  @override

  ///	照片内容	string
  String get photoInfo;
  @override

  ///	照片列表	array	PhotoDTO
  List<PhotoModel> get photoList;
  @override

  ///	学校编码	string
  String get schoolCode;
  @override

  ///	业务状态	integer(int32)
  int get status;
  @override

  ///	标题	string
  String get title;
  @override

  ///	最后修改老师	string
  String get updateTeacherCode;
  @override

  ///	更新时间	string(date-time)
  @StringTimestampNullableJsonConverter()
  DateTime? get updateTime;
  @override

  ///	更新人	integer(int64)
  String get updateUser;
  @override

  ///	查看人数	integer(int32)
  int get viewNum;
  @override

  ///	学期编码	string
  String get yearTermCode;
  @override
  @JsonKey(ignore: true)
  _$$ImagesModelImplCopyWith<_$ImagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
