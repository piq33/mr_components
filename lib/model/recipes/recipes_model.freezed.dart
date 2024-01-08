// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipesOtherParam _$RecipesOtherParamFromJson(Map<String, dynamic> json) {
  return _RecipesOtherParam.fromJson(json);
}

/// @nodoc
mixin _$RecipesOtherParam {
  /// 指定的食谱日期
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesOtherParamCopyWith<RecipesOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesOtherParamCopyWith<$Res> {
  factory $RecipesOtherParamCopyWith(
          RecipesOtherParam value, $Res Function(RecipesOtherParam) then) =
      _$RecipesOtherParamCopyWithImpl<$Res, RecipesOtherParam>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$RecipesOtherParamCopyWithImpl<$Res, $Val extends RecipesOtherParam>
    implements $RecipesOtherParamCopyWith<$Res> {
  _$RecipesOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesOtherParamImplCopyWith<$Res>
    implements $RecipesOtherParamCopyWith<$Res> {
  factory _$$RecipesOtherParamImplCopyWith(_$RecipesOtherParamImpl value,
          $Res Function(_$RecipesOtherParamImpl) then) =
      __$$RecipesOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$RecipesOtherParamImplCopyWithImpl<$Res>
    extends _$RecipesOtherParamCopyWithImpl<$Res, _$RecipesOtherParamImpl>
    implements _$$RecipesOtherParamImplCopyWith<$Res> {
  __$$RecipesOtherParamImplCopyWithImpl(_$RecipesOtherParamImpl _value,
      $Res Function(_$RecipesOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$RecipesOtherParamImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesOtherParamImpl extends _RecipesOtherParam {
  const _$RecipesOtherParamImpl({this.date = ''}) : super._();

  factory _$RecipesOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesOtherParamImplFromJson(json);

  /// 指定的食谱日期
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'RecipesOtherParam(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesOtherParamImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesOtherParamImplCopyWith<_$RecipesOtherParamImpl> get copyWith =>
      __$$RecipesOtherParamImplCopyWithImpl<_$RecipesOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesOtherParamImplToJson(
      this,
    );
  }
}

abstract class _RecipesOtherParam extends RecipesOtherParam {
  const factory _RecipesOtherParam({final String date}) =
      _$RecipesOtherParamImpl;
  const _RecipesOtherParam._() : super._();

  factory _RecipesOtherParam.fromJson(Map<String, dynamic> json) =
      _$RecipesOtherParamImpl.fromJson;

  @override

  /// 指定的食谱日期
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$RecipesOtherParamImplCopyWith<_$RecipesOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
  /// 当前日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate => throw _privateConstructorUsedError;

  /// 菜单详情列表
  List<MenuDetailModel> get itemList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      List<MenuDetailModel> itemList});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<MenuDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuModelImplCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$$MenuModelImplCopyWith(
          _$MenuModelImpl value, $Res Function(_$MenuModelImpl) then) =
      __$$MenuModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      List<MenuDetailModel> itemList});
}

/// @nodoc
class __$$MenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$MenuModelImpl>
    implements _$$MenuModelImplCopyWith<$Res> {
  __$$MenuModelImplCopyWithImpl(
      _$MenuModelImpl _value, $Res Function(_$MenuModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? itemList = null,
  }) {
    return _then(_$MenuModelImpl(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<MenuDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuModelImpl extends _MenuModel {
  const _$MenuModelImpl(
      {@SimpleDateTimeJsonConverter() this.currDate,
      final List<MenuDetailModel> itemList = const []})
      : _itemList = itemList,
        super._();

  factory _$MenuModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuModelImplFromJson(json);

  /// 当前日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? currDate;

  /// 菜单详情列表
  final List<MenuDetailModel> _itemList;

  /// 菜单详情列表
  @override
  @JsonKey()
  List<MenuDetailModel> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'MenuModel(currDate: $currDate, itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuModelImpl &&
            (identical(other.currDate, currDate) ||
                other.currDate == currDate) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currDate, const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      __$$MenuModelImplCopyWithImpl<_$MenuModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuModelImplToJson(
      this,
    );
  }
}

abstract class _MenuModel extends MenuModel {
  const factory _MenuModel(
      {@SimpleDateTimeJsonConverter() final DateTime? currDate,
      final List<MenuDetailModel> itemList}) = _$MenuModelImpl;
  const _MenuModel._() : super._();

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$MenuModelImpl.fromJson;

  @override

  /// 当前日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate;
  @override

  /// 菜单详情列表
  List<MenuDetailModel> get itemList;
  @override
  @JsonKey(ignore: true)
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuDetailModel _$MenuDetailModelFromJson(Map<String, dynamic> json) {
  return _MenuDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MenuDetailModel {
  int get id => throw _privateConstructorUsedError;

  /// 餐段
  @JsonKey(name: 'part')
  String get menuType => throw _privateConstructorUsedError;

  /// 名称
  String get name => throw _privateConstructorUsedError;

  /// 食材
  String get food => throw _privateConstructorUsedError;

  /// 编码
  String? get bookCode => throw _privateConstructorUsedError;

  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get dateTime => throw _privateConstructorUsedError;

  /// 日期类型
  int? get dateType => throw _privateConstructorUsedError;

  /// 排序
  int get orderNum => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 营养
  String get nutrition => throw _privateConstructorUsedError;

  /// 资源列表
  List<ResourceModel> get resourceList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuDetailModelCopyWith<MenuDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDetailModelCopyWith<$Res> {
  factory $MenuDetailModelCopyWith(
          MenuDetailModel value, $Res Function(MenuDetailModel) then) =
      _$MenuDetailModelCopyWithImpl<$Res, MenuDetailModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'part') String menuType,
      String name,
      String food,
      String? bookCode,
      @SimpleDateTimeJsonConverter() DateTime? dateTime,
      int? dateType,
      int orderNum,
      String remark,
      String nutrition,
      List<ResourceModel> resourceList});
}

/// @nodoc
class _$MenuDetailModelCopyWithImpl<$Res, $Val extends MenuDetailModel>
    implements $MenuDetailModelCopyWith<$Res> {
  _$MenuDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuType = null,
    Object? name = null,
    Object? food = null,
    Object? bookCode = freezed,
    Object? dateTime = freezed,
    Object? dateType = freezed,
    Object? orderNum = null,
    Object? remark = null,
    Object? nutrition = null,
    Object? resourceList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuType: null == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String,
      bookCode: freezed == bookCode
          ? _value.bookCode
          : bookCode // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      resourceList: null == resourceList
          ? _value.resourceList
          : resourceList // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuDetailModelImplCopyWith<$Res>
    implements $MenuDetailModelCopyWith<$Res> {
  factory _$$MenuDetailModelImplCopyWith(_$MenuDetailModelImpl value,
          $Res Function(_$MenuDetailModelImpl) then) =
      __$$MenuDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'part') String menuType,
      String name,
      String food,
      String? bookCode,
      @SimpleDateTimeJsonConverter() DateTime? dateTime,
      int? dateType,
      int orderNum,
      String remark,
      String nutrition,
      List<ResourceModel> resourceList});
}

/// @nodoc
class __$$MenuDetailModelImplCopyWithImpl<$Res>
    extends _$MenuDetailModelCopyWithImpl<$Res, _$MenuDetailModelImpl>
    implements _$$MenuDetailModelImplCopyWith<$Res> {
  __$$MenuDetailModelImplCopyWithImpl(
      _$MenuDetailModelImpl _value, $Res Function(_$MenuDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuType = null,
    Object? name = null,
    Object? food = null,
    Object? bookCode = freezed,
    Object? dateTime = freezed,
    Object? dateType = freezed,
    Object? orderNum = null,
    Object? remark = null,
    Object? nutrition = null,
    Object? resourceList = null,
  }) {
    return _then(_$MenuDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuType: null == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String,
      bookCode: freezed == bookCode
          ? _value.bookCode
          : bookCode // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      resourceList: null == resourceList
          ? _value._resourceList
          : resourceList // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuDetailModelImpl extends _MenuDetailModel {
  const _$MenuDetailModelImpl(
      {required this.id,
      @JsonKey(name: 'part') required this.menuType,
      this.name = '',
      this.food = '',
      this.bookCode,
      @SimpleDateTimeJsonConverter() this.dateTime,
      this.dateType,
      this.orderNum = 0,
      this.remark = '',
      this.nutrition = '',
      final List<ResourceModel> resourceList = const []})
      : _resourceList = resourceList,
        super._();

  factory _$MenuDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuDetailModelImplFromJson(json);

  @override
  final int id;

  /// 餐段
  @override
  @JsonKey(name: 'part')
  final String menuType;

  /// 名称
  @override
  @JsonKey()
  final String name;

  /// 食材
  @override
  @JsonKey()
  final String food;

  /// 编码
  @override
  final String? bookCode;

  /// 日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? dateTime;

  /// 日期类型
  @override
  final int? dateType;

  /// 排序
  @override
  @JsonKey()
  final int orderNum;

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 营养
  @override
  @JsonKey()
  final String nutrition;

  /// 资源列表
  final List<ResourceModel> _resourceList;

  /// 资源列表
  @override
  @JsonKey()
  List<ResourceModel> get resourceList {
    if (_resourceList is EqualUnmodifiableListView) return _resourceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resourceList);
  }

  @override
  String toString() {
    return 'MenuDetailModel(id: $id, menuType: $menuType, name: $name, food: $food, bookCode: $bookCode, dateTime: $dateTime, dateType: $dateType, orderNum: $orderNum, remark: $remark, nutrition: $nutrition, resourceList: $resourceList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.bookCode, bookCode) ||
                other.bookCode == bookCode) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            const DeepCollectionEquality()
                .equals(other._resourceList, _resourceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      menuType,
      name,
      food,
      bookCode,
      dateTime,
      dateType,
      orderNum,
      remark,
      nutrition,
      const DeepCollectionEquality().hash(_resourceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuDetailModelImplCopyWith<_$MenuDetailModelImpl> get copyWith =>
      __$$MenuDetailModelImplCopyWithImpl<_$MenuDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MenuDetailModel extends MenuDetailModel {
  const factory _MenuDetailModel(
      {required final int id,
      @JsonKey(name: 'part') required final String menuType,
      final String name,
      final String food,
      final String? bookCode,
      @SimpleDateTimeJsonConverter() final DateTime? dateTime,
      final int? dateType,
      final int orderNum,
      final String remark,
      final String nutrition,
      final List<ResourceModel> resourceList}) = _$MenuDetailModelImpl;
  const _MenuDetailModel._() : super._();

  factory _MenuDetailModel.fromJson(Map<String, dynamic> json) =
      _$MenuDetailModelImpl.fromJson;

  @override
  int get id;
  @override

  /// 餐段
  @JsonKey(name: 'part')
  String get menuType;
  @override

  /// 名称
  String get name;
  @override

  /// 食材
  String get food;
  @override

  /// 编码
  String? get bookCode;
  @override

  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get dateTime;
  @override

  /// 日期类型
  int? get dateType;
  @override

  /// 排序
  int get orderNum;
  @override

  /// 备注
  String get remark;
  @override

  /// 营养
  String get nutrition;
  @override

  /// 资源列表
  List<ResourceModel> get resourceList;
  @override
  @JsonKey(ignore: true)
  _$$MenuDetailModelImplCopyWith<_$MenuDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
