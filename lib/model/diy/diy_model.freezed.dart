// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemplateDetailModel _$TemplateDetailModelFromJson(Map<String, dynamic> json) {
  return _TemplateDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateDetailModel {
  /// 模板id -1表示没有使用模板
  String? get templateId => throw _privateConstructorUsedError;

  /// 相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 相册内容
  @JsonKey(name: 'albumContent')
  String get content => throw _privateConstructorUsedError;

  /// 封面url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover => throw _privateConstructorUsedError;

  ///	标签
  @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
  CatalogType get catalogType => throw _privateConstructorUsedError;

  /// 相册标题
  @JsonKey(name: 'albumTitle')
  String get title => throw _privateConstructorUsedError;

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle => throw _privateConstructorUsedError;

  /// 背景url
  String? get backgroundUrl => throw _privateConstructorUsedError;

  /// 学生id
  int? get studentId => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 学生编码
  String? get studentCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 是否有配置
  bool get hasConfig => throw _privateConstructorUsedError;

  /// 是否使用背景音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool get useMusic => throw _privateConstructorUsedError;

  /// 是否收费
  bool get ifNeedPay => throw _privateConstructorUsedError;

  /// 购买须知
  String get payNotice => throw _privateConstructorUsedError;

  /// 付费金额
  @JsonKey(name: 'paymentAmount')
  double get price => throw _privateConstructorUsedError;

  /// 是否潜客
  bool get ifPotential => throw _privateConstructorUsedError;

  /// 潜客id
  @JsonKey(name: 'potentialStudentId')
  int? get potentialId => throw _privateConstructorUsedError;

  /// 是否可打印
  @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
  PrintSupport get printSupport => throw _privateConstructorUsedError;

  /// 是否使用了模板
  bool get ifUseTemplate => throw _privateConstructorUsedError;

  /// 背景音乐id
  String? get musicId => throw _privateConstructorUsedError;

  /// 背景音乐地址
  String? get musicUrl => throw _privateConstructorUsedError;

  /// 不使用模板的照片列表
  @String2ListJsonConverter()
  @JsonKey(name: 'photoJson')
  List<String> get photoList => throw _privateConstructorUsedError;

  /// 对应模板
  @JsonKey(name: 'diyAppTemplateDetailVO')
  TemplateModel? get template => throw _privateConstructorUsedError;

  /// 已发布页面
  @JsonKey(name: 'pageInstanceList', includeToJson: false)
  List<PageInstanceJsonModel> get instanceList =>
      throw _privateConstructorUsedError;

  /// 模板json
  String? get templateJson => throw _privateConstructorUsedError;

  /// 快递类型
  @JsonKey(unknownEnumValue: DeliveryType.express)
  DeliveryType get deliveryType => throw _privateConstructorUsedError;

  /// 分享链接
  String? get shareUrl => throw _privateConstructorUsedError;

  /// 业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateDetailModelCopyWith<TemplateDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateDetailModelCopyWith<$Res> {
  factory $TemplateDetailModelCopyWith(
          TemplateDetailModel value, $Res Function(TemplateDetailModel) then) =
      _$TemplateDetailModelCopyWithImpl<$Res, TemplateDetailModel>;
  @useResult
  $Res call(
      {String? templateId,
      String? studentAlbumId,
      @JsonKey(name: 'albumContent') String content,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
      CatalogType catalogType,
      @JsonKey(name: 'albumTitle') String title,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      String? backgroundUrl,
      int? studentId,
      String studentName,
      String? studentCode,
      String? yearTermCode,
      String schoolCode,
      String classCode,
      String gradeCode,
      String courseCode,
      String phaseCode,
      bool hasConfig,
      @JsonKey(name: 'ifBackgroundMusic') bool useMusic,
      bool ifNeedPay,
      String payNotice,
      @JsonKey(name: 'paymentAmount') double price,
      bool ifPotential,
      @JsonKey(name: 'potentialStudentId') int? potentialId,
      @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
      PrintSupport printSupport,
      bool ifUseTemplate,
      String? musicId,
      String? musicUrl,
      @String2ListJsonConverter()
      @JsonKey(name: 'photoJson')
      List<String> photoList,
      @JsonKey(name: 'diyAppTemplateDetailVO') TemplateModel? template,
      @JsonKey(name: 'pageInstanceList', includeToJson: false)
      List<PageInstanceJsonModel> instanceList,
      String? templateJson,
      @JsonKey(unknownEnumValue: DeliveryType.express)
      DeliveryType deliveryType,
      String? shareUrl,
      int? status,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  $TemplateModelCopyWith<$Res>? get template;
}

/// @nodoc
class _$TemplateDetailModelCopyWithImpl<$Res, $Val extends TemplateDetailModel>
    implements $TemplateDetailModelCopyWith<$Res> {
  _$TemplateDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? studentAlbumId = freezed,
    Object? content = null,
    Object? cover = freezed,
    Object? catalogType = null,
    Object? title = null,
    Object? homepageStyle = null,
    Object? backgroundUrl = freezed,
    Object? studentId = freezed,
    Object? studentName = null,
    Object? studentCode = freezed,
    Object? yearTermCode = freezed,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? gradeCode = null,
    Object? courseCode = null,
    Object? phaseCode = null,
    Object? hasConfig = null,
    Object? useMusic = null,
    Object? ifNeedPay = null,
    Object? payNotice = null,
    Object? price = null,
    Object? ifPotential = null,
    Object? potentialId = freezed,
    Object? printSupport = null,
    Object? ifUseTemplate = null,
    Object? musicId = freezed,
    Object? musicUrl = freezed,
    Object? photoList = null,
    Object? template = freezed,
    Object? instanceList = null,
    Object? templateJson = freezed,
    Object? deliveryType = null,
    Object? shareUrl = freezed,
    Object? status = freezed,
    Object? isDeleted = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogType: null == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      hasConfig: null == hasConfig
          ? _value.hasConfig
          : hasConfig // ignore: cast_nullable_to_non_nullable
              as bool,
      useMusic: null == useMusic
          ? _value.useMusic
          : useMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      ifNeedPay: null == ifNeedPay
          ? _value.ifNeedPay
          : ifNeedPay // ignore: cast_nullable_to_non_nullable
              as bool,
      payNotice: null == payNotice
          ? _value.payNotice
          : payNotice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ifPotential: null == ifPotential
          ? _value.ifPotential
          : ifPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      printSupport: null == printSupport
          ? _value.printSupport
          : printSupport // ignore: cast_nullable_to_non_nullable
              as PrintSupport,
      ifUseTemplate: null == ifUseTemplate
          ? _value.ifUseTemplate
          : ifUseTemplate // ignore: cast_nullable_to_non_nullable
              as bool,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photoList: null == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as TemplateModel?,
      instanceList: null == instanceList
          ? _value.instanceList
          : instanceList // ignore: cast_nullable_to_non_nullable
              as List<PageInstanceJsonModel>,
      templateJson: freezed == templateJson
          ? _value.templateJson
          : templateJson // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $TemplateModelCopyWith<$Res>? get template {
    if (_value.template == null) {
      return null;
    }

    return $TemplateModelCopyWith<$Res>(_value.template!, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplateDetailModelImplCopyWith<$Res>
    implements $TemplateDetailModelCopyWith<$Res> {
  factory _$$TemplateDetailModelImplCopyWith(_$TemplateDetailModelImpl value,
          $Res Function(_$TemplateDetailModelImpl) then) =
      __$$TemplateDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? templateId,
      String? studentAlbumId,
      @JsonKey(name: 'albumContent') String content,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
      CatalogType catalogType,
      @JsonKey(name: 'albumTitle') String title,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      String? backgroundUrl,
      int? studentId,
      String studentName,
      String? studentCode,
      String? yearTermCode,
      String schoolCode,
      String classCode,
      String gradeCode,
      String courseCode,
      String phaseCode,
      bool hasConfig,
      @JsonKey(name: 'ifBackgroundMusic') bool useMusic,
      bool ifNeedPay,
      String payNotice,
      @JsonKey(name: 'paymentAmount') double price,
      bool ifPotential,
      @JsonKey(name: 'potentialStudentId') int? potentialId,
      @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
      PrintSupport printSupport,
      bool ifUseTemplate,
      String? musicId,
      String? musicUrl,
      @String2ListJsonConverter()
      @JsonKey(name: 'photoJson')
      List<String> photoList,
      @JsonKey(name: 'diyAppTemplateDetailVO') TemplateModel? template,
      @JsonKey(name: 'pageInstanceList', includeToJson: false)
      List<PageInstanceJsonModel> instanceList,
      String? templateJson,
      @JsonKey(unknownEnumValue: DeliveryType.express)
      DeliveryType deliveryType,
      String? shareUrl,
      int? status,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  @override
  $TemplateModelCopyWith<$Res>? get template;
}

/// @nodoc
class __$$TemplateDetailModelImplCopyWithImpl<$Res>
    extends _$TemplateDetailModelCopyWithImpl<$Res, _$TemplateDetailModelImpl>
    implements _$$TemplateDetailModelImplCopyWith<$Res> {
  __$$TemplateDetailModelImplCopyWithImpl(_$TemplateDetailModelImpl _value,
      $Res Function(_$TemplateDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? studentAlbumId = freezed,
    Object? content = null,
    Object? cover = freezed,
    Object? catalogType = null,
    Object? title = null,
    Object? homepageStyle = null,
    Object? backgroundUrl = freezed,
    Object? studentId = freezed,
    Object? studentName = null,
    Object? studentCode = freezed,
    Object? yearTermCode = freezed,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? gradeCode = null,
    Object? courseCode = null,
    Object? phaseCode = null,
    Object? hasConfig = null,
    Object? useMusic = null,
    Object? ifNeedPay = null,
    Object? payNotice = null,
    Object? price = null,
    Object? ifPotential = null,
    Object? potentialId = freezed,
    Object? printSupport = null,
    Object? ifUseTemplate = null,
    Object? musicId = freezed,
    Object? musicUrl = freezed,
    Object? photoList = null,
    Object? template = freezed,
    Object? instanceList = null,
    Object? templateJson = freezed,
    Object? deliveryType = null,
    Object? shareUrl = freezed,
    Object? status = freezed,
    Object? isDeleted = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$TemplateDetailModelImpl(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogType: null == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      hasConfig: null == hasConfig
          ? _value.hasConfig
          : hasConfig // ignore: cast_nullable_to_non_nullable
              as bool,
      useMusic: null == useMusic
          ? _value.useMusic
          : useMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      ifNeedPay: null == ifNeedPay
          ? _value.ifNeedPay
          : ifNeedPay // ignore: cast_nullable_to_non_nullable
              as bool,
      payNotice: null == payNotice
          ? _value.payNotice
          : payNotice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ifPotential: null == ifPotential
          ? _value.ifPotential
          : ifPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      printSupport: null == printSupport
          ? _value.printSupport
          : printSupport // ignore: cast_nullable_to_non_nullable
              as PrintSupport,
      ifUseTemplate: null == ifUseTemplate
          ? _value.ifUseTemplate
          : ifUseTemplate // ignore: cast_nullable_to_non_nullable
              as bool,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photoList: null == photoList
          ? _value._photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as TemplateModel?,
      instanceList: null == instanceList
          ? _value._instanceList
          : instanceList // ignore: cast_nullable_to_non_nullable
              as List<PageInstanceJsonModel>,
      templateJson: freezed == templateJson
          ? _value.templateJson
          : templateJson // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$TemplateDetailModelImpl extends _TemplateDetailModel {
  const _$TemplateDetailModelImpl(
      {this.templateId,
      this.studentAlbumId,
      @JsonKey(name: 'albumContent') this.content = '',
      @JsonKey(name: 'albumCoverUrl') this.cover,
      @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
      this.catalogType = CatalogType.unknown,
      @JsonKey(name: 'albumTitle') this.title = '',
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      this.homepageStyle = HomepageStyle.custom,
      this.backgroundUrl,
      this.studentId,
      this.studentName = '',
      this.studentCode,
      this.yearTermCode,
      this.schoolCode = '',
      this.classCode = '',
      this.gradeCode = '',
      this.courseCode = '',
      this.phaseCode = '',
      this.hasConfig = false,
      @JsonKey(name: 'ifBackgroundMusic') this.useMusic = false,
      this.ifNeedPay = false,
      this.payNotice = '',
      @JsonKey(name: 'paymentAmount') this.price = 0.0,
      this.ifPotential = false,
      @JsonKey(name: 'potentialStudentId') this.potentialId,
      @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
      this.printSupport = PrintSupport.both,
      this.ifUseTemplate = false,
      this.musicId,
      this.musicUrl,
      @String2ListJsonConverter()
      @JsonKey(name: 'photoJson')
      final List<String> photoList = const [],
      @JsonKey(name: 'diyAppTemplateDetailVO') this.template,
      @JsonKey(name: 'pageInstanceList', includeToJson: false)
      final List<PageInstanceJsonModel> instanceList = const [],
      this.templateJson,
      @JsonKey(unknownEnumValue: DeliveryType.express)
      this.deliveryType = DeliveryType.express,
      this.shareUrl,
      this.status,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : _photoList = photoList,
        _instanceList = instanceList,
        super._();

  factory _$TemplateDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateDetailModelImplFromJson(json);

  /// 模板id -1表示没有使用模板
  @override
  final String? templateId;

  /// 相册id
  @override
  final String? studentAlbumId;

  /// 相册内容
  @override
  @JsonKey(name: 'albumContent')
  final String content;

  /// 封面url
  @override
  @JsonKey(name: 'albumCoverUrl')
  final String? cover;

  ///	标签
  @override
  @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
  final CatalogType catalogType;

  /// 相册标题
  @override
  @JsonKey(name: 'albumTitle')
  final String title;

  /// 相册样式
  @override
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  final HomepageStyle homepageStyle;

  /// 背景url
  @override
  final String? backgroundUrl;

  /// 学生id
  @override
  final int? studentId;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 学生编码
  @override
  final String? studentCode;

  /// 学年学期编码
  @override
  final String? yearTermCode;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 是否有配置
  @override
  @JsonKey()
  final bool hasConfig;

  /// 是否使用背景音乐
  @override
  @JsonKey(name: 'ifBackgroundMusic')
  final bool useMusic;

  /// 是否收费
  @override
  @JsonKey()
  final bool ifNeedPay;

  /// 购买须知
  @override
  @JsonKey()
  final String payNotice;

  /// 付费金额
  @override
  @JsonKey(name: 'paymentAmount')
  final double price;

  /// 是否潜客
  @override
  @JsonKey()
  final bool ifPotential;

  /// 潜客id
  @override
  @JsonKey(name: 'potentialStudentId')
  final int? potentialId;

  /// 是否可打印
  @override
  @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
  final PrintSupport printSupport;

  /// 是否使用了模板
  @override
  @JsonKey()
  final bool ifUseTemplate;

  /// 背景音乐id
  @override
  final String? musicId;

  /// 背景音乐地址
  @override
  final String? musicUrl;

  /// 不使用模板的照片列表
  final List<String> _photoList;

  /// 不使用模板的照片列表
  @override
  @String2ListJsonConverter()
  @JsonKey(name: 'photoJson')
  List<String> get photoList {
    if (_photoList is EqualUnmodifiableListView) return _photoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoList);
  }

  /// 对应模板
  @override
  @JsonKey(name: 'diyAppTemplateDetailVO')
  final TemplateModel? template;

  /// 已发布页面
  final List<PageInstanceJsonModel> _instanceList;

  /// 已发布页面
  @override
  @JsonKey(name: 'pageInstanceList', includeToJson: false)
  List<PageInstanceJsonModel> get instanceList {
    if (_instanceList is EqualUnmodifiableListView) return _instanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instanceList);
  }

  /// 模板json
  @override
  final String? templateJson;

  /// 快递类型
  @override
  @JsonKey(unknownEnumValue: DeliveryType.express)
  final DeliveryType deliveryType;

  /// 分享链接
  @override
  final String? shareUrl;

  /// 业务状态
  @override
  final int? status;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

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
    return 'TemplateDetailModel(templateId: $templateId, studentAlbumId: $studentAlbumId, content: $content, cover: $cover, catalogType: $catalogType, title: $title, homepageStyle: $homepageStyle, backgroundUrl: $backgroundUrl, studentId: $studentId, studentName: $studentName, studentCode: $studentCode, yearTermCode: $yearTermCode, schoolCode: $schoolCode, classCode: $classCode, gradeCode: $gradeCode, courseCode: $courseCode, phaseCode: $phaseCode, hasConfig: $hasConfig, useMusic: $useMusic, ifNeedPay: $ifNeedPay, payNotice: $payNotice, price: $price, ifPotential: $ifPotential, potentialId: $potentialId, printSupport: $printSupport, ifUseTemplate: $ifUseTemplate, musicId: $musicId, musicUrl: $musicUrl, photoList: $photoList, template: $template, instanceList: $instanceList, templateJson: $templateJson, deliveryType: $deliveryType, shareUrl: $shareUrl, status: $status, isDeleted: $isDeleted, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateDetailModelImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.catalogType, catalogType) ||
                other.catalogType == catalogType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.homepageStyle, homepageStyle) ||
                other.homepageStyle == homepageStyle) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.hasConfig, hasConfig) ||
                other.hasConfig == hasConfig) &&
            (identical(other.useMusic, useMusic) ||
                other.useMusic == useMusic) &&
            (identical(other.ifNeedPay, ifNeedPay) ||
                other.ifNeedPay == ifNeedPay) &&
            (identical(other.payNotice, payNotice) ||
                other.payNotice == payNotice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ifPotential, ifPotential) ||
                other.ifPotential == ifPotential) &&
            (identical(other.potentialId, potentialId) ||
                other.potentialId == potentialId) &&
            (identical(other.printSupport, printSupport) ||
                other.printSupport == printSupport) &&
            (identical(other.ifUseTemplate, ifUseTemplate) ||
                other.ifUseTemplate == ifUseTemplate) &&
            (identical(other.musicId, musicId) || other.musicId == musicId) &&
            (identical(other.musicUrl, musicUrl) ||
                other.musicUrl == musicUrl) &&
            const DeepCollectionEquality()
                .equals(other._photoList, _photoList) &&
            (identical(other.template, template) ||
                other.template == template) &&
            const DeepCollectionEquality()
                .equals(other._instanceList, _instanceList) &&
            (identical(other.templateJson, templateJson) ||
                other.templateJson == templateJson) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.shareUrl, shareUrl) ||
                other.shareUrl == shareUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        templateId,
        studentAlbumId,
        content,
        cover,
        catalogType,
        title,
        homepageStyle,
        backgroundUrl,
        studentId,
        studentName,
        studentCode,
        yearTermCode,
        schoolCode,
        classCode,
        gradeCode,
        courseCode,
        phaseCode,
        hasConfig,
        useMusic,
        ifNeedPay,
        payNotice,
        price,
        ifPotential,
        potentialId,
        printSupport,
        ifUseTemplate,
        musicId,
        musicUrl,
        const DeepCollectionEquality().hash(_photoList),
        template,
        const DeepCollectionEquality().hash(_instanceList),
        templateJson,
        deliveryType,
        shareUrl,
        status,
        isDeleted,
        createTime,
        updateTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateDetailModelImplCopyWith<_$TemplateDetailModelImpl> get copyWith =>
      __$$TemplateDetailModelImplCopyWithImpl<_$TemplateDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TemplateDetailModel extends TemplateDetailModel {
  const factory _TemplateDetailModel(
      {final String? templateId,
      final String? studentAlbumId,
      @JsonKey(name: 'albumContent') final String content,
      @JsonKey(name: 'albumCoverUrl') final String? cover,
      @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
      final CatalogType catalogType,
      @JsonKey(name: 'albumTitle') final String title,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      final HomepageStyle homepageStyle,
      final String? backgroundUrl,
      final int? studentId,
      final String studentName,
      final String? studentCode,
      final String? yearTermCode,
      final String schoolCode,
      final String classCode,
      final String gradeCode,
      final String courseCode,
      final String phaseCode,
      final bool hasConfig,
      @JsonKey(name: 'ifBackgroundMusic') final bool useMusic,
      final bool ifNeedPay,
      final String payNotice,
      @JsonKey(name: 'paymentAmount') final double price,
      final bool ifPotential,
      @JsonKey(name: 'potentialStudentId') final int? potentialId,
      @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
      final PrintSupport printSupport,
      final bool ifUseTemplate,
      final String? musicId,
      final String? musicUrl,
      @String2ListJsonConverter()
      @JsonKey(name: 'photoJson')
      final List<String> photoList,
      @JsonKey(name: 'diyAppTemplateDetailVO') final TemplateModel? template,
      @JsonKey(name: 'pageInstanceList', includeToJson: false)
      final List<PageInstanceJsonModel> instanceList,
      final String? templateJson,
      @JsonKey(unknownEnumValue: DeliveryType.express)
      final DeliveryType deliveryType,
      final String? shareUrl,
      final int? status,
      @Int2BoolJsonConverter() final bool isDeleted,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$TemplateDetailModelImpl;
  const _TemplateDetailModel._() : super._();

  factory _TemplateDetailModel.fromJson(Map<String, dynamic> json) =
      _$TemplateDetailModelImpl.fromJson;

  @override

  /// 模板id -1表示没有使用模板
  String? get templateId;
  @override

  /// 相册id
  String? get studentAlbumId;
  @override

  /// 相册内容
  @JsonKey(name: 'albumContent')
  String get content;
  @override

  /// 封面url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover;
  @override

  ///	标签
  @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
  CatalogType get catalogType;
  @override

  /// 相册标题
  @JsonKey(name: 'albumTitle')
  String get title;
  @override

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle;
  @override

  /// 背景url
  String? get backgroundUrl;
  @override

  /// 学生id
  int? get studentId;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 学生编码
  String? get studentCode;
  @override

  /// 学年学期编码
  String? get yearTermCode;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 是否有配置
  bool get hasConfig;
  @override

  /// 是否使用背景音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool get useMusic;
  @override

  /// 是否收费
  bool get ifNeedPay;
  @override

  /// 购买须知
  String get payNotice;
  @override

  /// 付费金额
  @JsonKey(name: 'paymentAmount')
  double get price;
  @override

  /// 是否潜客
  bool get ifPotential;
  @override

  /// 潜客id
  @JsonKey(name: 'potentialStudentId')
  int? get potentialId;
  @override

  /// 是否可打印
  @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
  PrintSupport get printSupport;
  @override

  /// 是否使用了模板
  bool get ifUseTemplate;
  @override

  /// 背景音乐id
  String? get musicId;
  @override

  /// 背景音乐地址
  String? get musicUrl;
  @override

  /// 不使用模板的照片列表
  @String2ListJsonConverter()
  @JsonKey(name: 'photoJson')
  List<String> get photoList;
  @override

  /// 对应模板
  @JsonKey(name: 'diyAppTemplateDetailVO')
  TemplateModel? get template;
  @override

  /// 已发布页面
  @JsonKey(name: 'pageInstanceList', includeToJson: false)
  List<PageInstanceJsonModel> get instanceList;
  @override

  /// 模板json
  String? get templateJson;
  @override

  /// 快递类型
  @JsonKey(unknownEnumValue: DeliveryType.express)
  DeliveryType get deliveryType;
  @override

  /// 分享链接
  String? get shareUrl;
  @override

  /// 业务状态
  int? get status;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
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
  _$$TemplateDetailModelImplCopyWith<_$TemplateDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageInstanceJsonModel {
  /// 相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 模板id
  String? get templateId => throw _privateConstructorUsedError;

  /// 页面id
  String? get pageId => throw _privateConstructorUsedError;

  /// 实例id
  String? get instanceId => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 页面对象
  @JsonKey(name: 'moduleJson')
  PageJsonModel? get page => throw _privateConstructorUsedError;

  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int? get pageIndex => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageInstanceJsonModelCopyWith<PageInstanceJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInstanceJsonModelCopyWith<$Res> {
  factory $PageInstanceJsonModelCopyWith(PageInstanceJsonModel value,
          $Res Function(PageInstanceJsonModel) then) =
      _$PageInstanceJsonModelCopyWithImpl<$Res, PageInstanceJsonModel>;
  @useResult
  $Res call(
      {String? studentAlbumId,
      String? templateId,
      String? pageId,
      String? instanceId,
      String? schoolCode,
      @JsonKey(name: 'moduleJson') PageJsonModel? page,
      @JsonKey(name: 'albumTemplateType') int? pageIndex,
      @Int2BoolJsonConverter() bool isDeleted,
      int? status,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  $PageJsonModelCopyWith<$Res>? get page;
}

/// @nodoc
class _$PageInstanceJsonModelCopyWithImpl<$Res,
        $Val extends PageInstanceJsonModel>
    implements $PageInstanceJsonModelCopyWith<$Res> {
  _$PageInstanceJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentAlbumId = freezed,
    Object? templateId = freezed,
    Object? pageId = freezed,
    Object? instanceId = freezed,
    Object? schoolCode = freezed,
    Object? page = freezed,
    Object? pageIndex = freezed,
    Object? isDeleted = null,
    Object? status = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: freezed == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageJsonModel?,
      pageIndex: freezed == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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

  @override
  @pragma('vm:prefer-inline')
  $PageJsonModelCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $PageJsonModelCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageInstanceJsonModelImplCopyWith<$Res>
    implements $PageInstanceJsonModelCopyWith<$Res> {
  factory _$$PageInstanceJsonModelImplCopyWith(
          _$PageInstanceJsonModelImpl value,
          $Res Function(_$PageInstanceJsonModelImpl) then) =
      __$$PageInstanceJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? studentAlbumId,
      String? templateId,
      String? pageId,
      String? instanceId,
      String? schoolCode,
      @JsonKey(name: 'moduleJson') PageJsonModel? page,
      @JsonKey(name: 'albumTemplateType') int? pageIndex,
      @Int2BoolJsonConverter() bool isDeleted,
      int? status,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  @override
  $PageJsonModelCopyWith<$Res>? get page;
}

/// @nodoc
class __$$PageInstanceJsonModelImplCopyWithImpl<$Res>
    extends _$PageInstanceJsonModelCopyWithImpl<$Res,
        _$PageInstanceJsonModelImpl>
    implements _$$PageInstanceJsonModelImplCopyWith<$Res> {
  __$$PageInstanceJsonModelImplCopyWithImpl(_$PageInstanceJsonModelImpl _value,
      $Res Function(_$PageInstanceJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentAlbumId = freezed,
    Object? templateId = freezed,
    Object? pageId = freezed,
    Object? instanceId = freezed,
    Object? schoolCode = freezed,
    Object? page = freezed,
    Object? pageIndex = freezed,
    Object? isDeleted = null,
    Object? status = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$PageInstanceJsonModelImpl(
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: freezed == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageJsonModel?,
      pageIndex: freezed == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$PageInstanceJsonModelImpl extends _PageInstanceJsonModel {
  const _$PageInstanceJsonModelImpl(
      {this.studentAlbumId,
      this.templateId,
      this.pageId,
      this.instanceId,
      this.schoolCode,
      @JsonKey(name: 'moduleJson') this.page,
      @JsonKey(name: 'albumTemplateType') this.pageIndex,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.status,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  /// 相册id
  @override
  final String? studentAlbumId;

  /// 模板id
  @override
  final String? templateId;

  /// 页面id
  @override
  final String? pageId;

  /// 实例id
  @override
  final String? instanceId;

  /// 学校编码
  @override
  final String? schoolCode;

  /// 页面对象
  @override
  @JsonKey(name: 'moduleJson')
  final PageJsonModel? page;

  /// 页面对应类型, 后端用于区分页面
  @override
  @JsonKey(name: 'albumTemplateType')
  final int? pageIndex;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 业务状态
  @override
  final int? status;

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
    return 'PageInstanceJsonModel(studentAlbumId: $studentAlbumId, templateId: $templateId, pageId: $pageId, instanceId: $instanceId, schoolCode: $schoolCode, page: $page, pageIndex: $pageIndex, isDeleted: $isDeleted, status: $status, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInstanceJsonModelImpl &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      studentAlbumId,
      templateId,
      pageId,
      instanceId,
      schoolCode,
      page,
      pageIndex,
      isDeleted,
      status,
      createTime,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInstanceJsonModelImplCopyWith<_$PageInstanceJsonModelImpl>
      get copyWith => __$$PageInstanceJsonModelImplCopyWithImpl<
          _$PageInstanceJsonModelImpl>(this, _$identity);
}

abstract class _PageInstanceJsonModel extends PageInstanceJsonModel {
  const factory _PageInstanceJsonModel(
          {final String? studentAlbumId,
          final String? templateId,
          final String? pageId,
          final String? instanceId,
          final String? schoolCode,
          @JsonKey(name: 'moduleJson') final PageJsonModel? page,
          @JsonKey(name: 'albumTemplateType') final int? pageIndex,
          @Int2BoolJsonConverter() final bool isDeleted,
          final int? status,
          @DateTimeJsonConverter() final DateTime? createTime,
          @DateTimeJsonConverter() final DateTime? updateTime}) =
      _$PageInstanceJsonModelImpl;
  const _PageInstanceJsonModel._() : super._();

  @override

  /// 相册id
  String? get studentAlbumId;
  @override

  /// 模板id
  String? get templateId;
  @override

  /// 页面id
  String? get pageId;
  @override

  /// 实例id
  String? get instanceId;
  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 页面对象
  @JsonKey(name: 'moduleJson')
  PageJsonModel? get page;
  @override

  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int? get pageIndex;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 业务状态
  int? get status;
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
  _$$PageInstanceJsonModelImplCopyWith<_$PageInstanceJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  /// 交易id
  int get paymentId => throw _privateConstructorUsedError;

  /// 相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 收货人
  String get consignee => throw _privateConstructorUsedError;

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile => throw _privateConstructorUsedError;

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province => throw _privateConstructorUsedError;

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city => throw _privateConstructorUsedError;

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area => throw _privateConstructorUsedError;

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {int paymentId,
      String? studentAlbumId,
      String consignee,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? studentAlbumId = freezed,
    Object? consignee = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int paymentId,
      String? studentAlbumId,
      String consignee,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address});
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? studentAlbumId = freezed,
    Object? consignee = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
  }) {
    return _then(_$PaymentModelImpl(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl extends _PaymentModel {
  const _$PaymentModelImpl(
      {required this.paymentId,
      this.studentAlbumId,
      this.consignee = '',
      @JsonKey(name: 'consigneeMobile') this.mobile = '',
      @JsonKey(name: 'deliveryProvince') this.province = '',
      @JsonKey(name: 'deliveryCity') this.city = '',
      @JsonKey(name: 'deliveryArea') this.area = '',
      @JsonKey(name: 'deliveryAddress') this.address = ''})
      : super._();

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  /// 交易id
  @override
  final int paymentId;

  /// 相册id
  @override
  final String? studentAlbumId;

  /// 收货人
  @override
  @JsonKey()
  final String consignee;

  /// 收货人手机号
  @override
  @JsonKey(name: 'consigneeMobile')
  final String mobile;

  /// 收货人所在省
  @override
  @JsonKey(name: 'deliveryProvince')
  final String province;

  /// 收货人所在市
  @override
  @JsonKey(name: 'deliveryCity')
  final String city;

  /// 收货人所在地区
  @override
  @JsonKey(name: 'deliveryArea')
  final String area;

  /// 收货人详细地址
  @override
  @JsonKey(name: 'deliveryAddress')
  final String address;

  @override
  String toString() {
    return 'PaymentModel(paymentId: $paymentId, studentAlbumId: $studentAlbumId, consignee: $consignee, mobile: $mobile, province: $province, city: $city, area: $area, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.consignee, consignee) ||
                other.consignee == consignee) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, studentAlbumId,
      consignee, mobile, province, city, area, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel extends PaymentModel {
  const factory _PaymentModel(
          {required final int paymentId,
          final String? studentAlbumId,
          final String consignee,
          @JsonKey(name: 'consigneeMobile') final String mobile,
          @JsonKey(name: 'deliveryProvince') final String province,
          @JsonKey(name: 'deliveryCity') final String city,
          @JsonKey(name: 'deliveryArea') final String area,
          @JsonKey(name: 'deliveryAddress') final String address}) =
      _$PaymentModelImpl;
  const _PaymentModel._() : super._();

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override

  /// 交易id
  int get paymentId;
  @override

  /// 相册id
  String? get studentAlbumId;
  @override

  /// 收货人
  String get consignee;
  @override

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile;
  @override

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province;
  @override

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city;
  @override

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area;
  @override

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseReq _$PurchaseReqFromJson(Map<String, dynamic> json) {
  return _PurchaseReq.fromJson(json);
}

/// @nodoc
mixin _$PurchaseReq {
  /// 购买记录id
  String? get buyId => throw _privateConstructorUsedError;

  /// 相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 收货人
  String get consignee => throw _privateConstructorUsedError;

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile => throw _privateConstructorUsedError;

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province => throw _privateConstructorUsedError;

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city => throw _privateConstructorUsedError;

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area => throw _privateConstructorUsedError;

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address => throw _privateConstructorUsedError;

  /// 发货类型
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  DeliveryType get deliveryType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseReqCopyWith<PurchaseReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseReqCopyWith<$Res> {
  factory $PurchaseReqCopyWith(
          PurchaseReq value, $Res Function(PurchaseReq) then) =
      _$PurchaseReqCopyWithImpl<$Res, PurchaseReq>;
  @useResult
  $Res call(
      {String? buyId,
      String? studentAlbumId,
      String consignee,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      DeliveryType deliveryType});
}

/// @nodoc
class _$PurchaseReqCopyWithImpl<$Res, $Val extends PurchaseReq>
    implements $PurchaseReqCopyWith<$Res> {
  _$PurchaseReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyId = freezed,
    Object? studentAlbumId = freezed,
    Object? consignee = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
    Object? deliveryType = null,
  }) {
    return _then(_value.copyWith(
      buyId: freezed == buyId
          ? _value.buyId
          : buyId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseReqImplCopyWith<$Res>
    implements $PurchaseReqCopyWith<$Res> {
  factory _$$PurchaseReqImplCopyWith(
          _$PurchaseReqImpl value, $Res Function(_$PurchaseReqImpl) then) =
      __$$PurchaseReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? buyId,
      String? studentAlbumId,
      String consignee,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      DeliveryType deliveryType});
}

/// @nodoc
class __$$PurchaseReqImplCopyWithImpl<$Res>
    extends _$PurchaseReqCopyWithImpl<$Res, _$PurchaseReqImpl>
    implements _$$PurchaseReqImplCopyWith<$Res> {
  __$$PurchaseReqImplCopyWithImpl(
      _$PurchaseReqImpl _value, $Res Function(_$PurchaseReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyId = freezed,
    Object? studentAlbumId = freezed,
    Object? consignee = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
    Object? deliveryType = null,
  }) {
    return _then(_$PurchaseReqImpl(
      buyId: freezed == buyId
          ? _value.buyId
          : buyId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseReqImpl extends _PurchaseReq {
  const _$PurchaseReqImpl(
      {this.buyId,
      this.studentAlbumId,
      this.consignee = '',
      @JsonKey(name: 'consigneeMobile') this.mobile = '',
      @JsonKey(name: 'deliveryProvince') this.province = '',
      @JsonKey(name: 'deliveryCity') this.city = '',
      @JsonKey(name: 'deliveryArea') this.area = '',
      @JsonKey(name: 'deliveryAddress') this.address = '',
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      this.deliveryType = DeliveryType.self})
      : super._();

  factory _$PurchaseReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseReqImplFromJson(json);

  /// 购买记录id
  @override
  final String? buyId;

  /// 相册id
  @override
  final String? studentAlbumId;

  /// 收货人
  @override
  @JsonKey()
  final String consignee;

  /// 收货人手机号
  @override
  @JsonKey(name: 'consigneeMobile')
  final String mobile;

  /// 收货人所在省
  @override
  @JsonKey(name: 'deliveryProvince')
  final String province;

  /// 收货人所在市
  @override
  @JsonKey(name: 'deliveryCity')
  final String city;

  /// 收货人所在地区
  @override
  @JsonKey(name: 'deliveryArea')
  final String area;

  /// 收货人详细地址
  @override
  @JsonKey(name: 'deliveryAddress')
  final String address;

  /// 发货类型
  @override
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  final DeliveryType deliveryType;

  @override
  String toString() {
    return 'PurchaseReq(buyId: $buyId, studentAlbumId: $studentAlbumId, consignee: $consignee, mobile: $mobile, province: $province, city: $city, area: $area, address: $address, deliveryType: $deliveryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseReqImpl &&
            (identical(other.buyId, buyId) || other.buyId == buyId) &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.consignee, consignee) ||
                other.consignee == consignee) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buyId, studentAlbumId, consignee,
      mobile, province, city, area, address, deliveryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseReqImplCopyWith<_$PurchaseReqImpl> get copyWith =>
      __$$PurchaseReqImplCopyWithImpl<_$PurchaseReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseReqImplToJson(
      this,
    );
  }
}

abstract class _PurchaseReq extends PurchaseReq {
  const factory _PurchaseReq(
      {final String? buyId,
      final String? studentAlbumId,
      final String consignee,
      @JsonKey(name: 'consigneeMobile') final String mobile,
      @JsonKey(name: 'deliveryProvince') final String province,
      @JsonKey(name: 'deliveryCity') final String city,
      @JsonKey(name: 'deliveryArea') final String area,
      @JsonKey(name: 'deliveryAddress') final String address,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      final DeliveryType deliveryType}) = _$PurchaseReqImpl;
  const _PurchaseReq._() : super._();

  factory _PurchaseReq.fromJson(Map<String, dynamic> json) =
      _$PurchaseReqImpl.fromJson;

  @override

  /// 购买记录id
  String? get buyId;
  @override

  /// 相册id
  String? get studentAlbumId;
  @override

  /// 收货人
  String get consignee;
  @override

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile;
  @override

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province;
  @override

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city;
  @override

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area;
  @override

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address;
  @override

  /// 发货类型
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  DeliveryType get deliveryType;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseReqImplCopyWith<_$PurchaseReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseResponse _$PurchaseResponseFromJson(Map<String, dynamic> json) {
  return _PurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchaseResponse {
  /// 订单编号
  String? get billNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseResponseCopyWith<PurchaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseResponseCopyWith<$Res> {
  factory $PurchaseResponseCopyWith(
          PurchaseResponse value, $Res Function(PurchaseResponse) then) =
      _$PurchaseResponseCopyWithImpl<$Res, PurchaseResponse>;
  @useResult
  $Res call({String? billNo});
}

/// @nodoc
class _$PurchaseResponseCopyWithImpl<$Res, $Val extends PurchaseResponse>
    implements $PurchaseResponseCopyWith<$Res> {
  _$PurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billNo = freezed,
  }) {
    return _then(_value.copyWith(
      billNo: freezed == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseResponseImplCopyWith<$Res>
    implements $PurchaseResponseCopyWith<$Res> {
  factory _$$PurchaseResponseImplCopyWith(_$PurchaseResponseImpl value,
          $Res Function(_$PurchaseResponseImpl) then) =
      __$$PurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? billNo});
}

/// @nodoc
class __$$PurchaseResponseImplCopyWithImpl<$Res>
    extends _$PurchaseResponseCopyWithImpl<$Res, _$PurchaseResponseImpl>
    implements _$$PurchaseResponseImplCopyWith<$Res> {
  __$$PurchaseResponseImplCopyWithImpl(_$PurchaseResponseImpl _value,
      $Res Function(_$PurchaseResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billNo = freezed,
  }) {
    return _then(_$PurchaseResponseImpl(
      billNo: freezed == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseResponseImpl extends _PurchaseResponse {
  const _$PurchaseResponseImpl({this.billNo}) : super._();

  factory _$PurchaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseResponseImplFromJson(json);

  /// 订单编号
  @override
  final String? billNo;

  @override
  String toString() {
    return 'PurchaseResponse(billNo: $billNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseResponseImpl &&
            (identical(other.billNo, billNo) || other.billNo == billNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, billNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      __$$PurchaseResponseImplCopyWithImpl<_$PurchaseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseResponseImplToJson(
      this,
    );
  }
}

abstract class _PurchaseResponse extends PurchaseResponse {
  const factory _PurchaseResponse({final String? billNo}) =
      _$PurchaseResponseImpl;
  const _PurchaseResponse._() : super._();

  factory _PurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$PurchaseResponseImpl.fromJson;

  @override

  /// 订单编号
  String? get billNo;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateModel _$TemplateModelFromJson(Map<String, dynamic> json) {
  return _TemplateModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateModel {
  /// 封面url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover => throw _privateConstructorUsedError;

  /// 相册名称
  @JsonKey(name: 'albumName')
  String get name => throw _privateConstructorUsedError;

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle => throw _privateConstructorUsedError;

  /// 相册翻页样式
  @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
  PageTransitionType get transition => throw _privateConstructorUsedError;

  /// 自定义背景url
  @JsonKey(name: 'backgroundUrl')
  String? get customBackgroundUrl => throw _privateConstructorUsedError;

  /// 是否使用背景音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool get music => throw _privateConstructorUsedError;

  /// 是否适用于潜客
  @JsonKey(name: 'ifSuitPotential')
  bool get potentialEnable => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 背景音乐id
  String? get musicId => throw _privateConstructorUsedError;

  /// 背景音乐url
  String? get musicUrl => throw _privateConstructorUsedError;

  /// 业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 模板id
  String? get templateId => throw _privateConstructorUsedError;

  /// 模板名称
  String get templateName => throw _privateConstructorUsedError;

  /// 使用人数
  int get usePeople => throw _privateConstructorUsedError;

  /// 相册页列表
  @JsonKey(name: 'albumPageList', includeToJson: false)
  List<TemplatePageModel> get pageList => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateModelCopyWith<TemplateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateModelCopyWith<$Res> {
  factory $TemplateModelCopyWith(
          TemplateModel value, $Res Function(TemplateModel) then) =
      _$TemplateModelCopyWithImpl<$Res, TemplateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'albumName') String name,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
      PageTransitionType transition,
      @JsonKey(name: 'backgroundUrl') String? customBackgroundUrl,
      @JsonKey(name: 'ifBackgroundMusic') bool music,
      @JsonKey(name: 'ifSuitPotential') bool potentialEnable,
      @Int2BoolJsonConverter() bool isDeleted,
      String? musicId,
      String? musicUrl,
      int? status,
      String? templateId,
      String templateName,
      int usePeople,
      @JsonKey(name: 'albumPageList', includeToJson: false)
      List<TemplatePageModel> pageList,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$TemplateModelCopyWithImpl<$Res, $Val extends TemplateModel>
    implements $TemplateModelCopyWith<$Res> {
  _$TemplateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = freezed,
    Object? name = null,
    Object? homepageStyle = null,
    Object? transition = null,
    Object? customBackgroundUrl = freezed,
    Object? music = null,
    Object? potentialEnable = null,
    Object? isDeleted = null,
    Object? musicId = freezed,
    Object? musicUrl = freezed,
    Object? status = freezed,
    Object? templateId = freezed,
    Object? templateName = null,
    Object? usePeople = null,
    Object? pageList = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      transition: null == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as PageTransitionType,
      customBackgroundUrl: freezed == customBackgroundUrl
          ? _value.customBackgroundUrl
          : customBackgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as bool,
      potentialEnable: null == potentialEnable
          ? _value.potentialEnable
          : potentialEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateName: null == templateName
          ? _value.templateName
          : templateName // ignore: cast_nullable_to_non_nullable
              as String,
      usePeople: null == usePeople
          ? _value.usePeople
          : usePeople // ignore: cast_nullable_to_non_nullable
              as int,
      pageList: null == pageList
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<TemplatePageModel>,
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
abstract class _$$TemplateModelImplCopyWith<$Res>
    implements $TemplateModelCopyWith<$Res> {
  factory _$$TemplateModelImplCopyWith(
          _$TemplateModelImpl value, $Res Function(_$TemplateModelImpl) then) =
      __$$TemplateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'albumName') String name,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
      PageTransitionType transition,
      @JsonKey(name: 'backgroundUrl') String? customBackgroundUrl,
      @JsonKey(name: 'ifBackgroundMusic') bool music,
      @JsonKey(name: 'ifSuitPotential') bool potentialEnable,
      @Int2BoolJsonConverter() bool isDeleted,
      String? musicId,
      String? musicUrl,
      int? status,
      String? templateId,
      String templateName,
      int usePeople,
      @JsonKey(name: 'albumPageList', includeToJson: false)
      List<TemplatePageModel> pageList,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$TemplateModelImplCopyWithImpl<$Res>
    extends _$TemplateModelCopyWithImpl<$Res, _$TemplateModelImpl>
    implements _$$TemplateModelImplCopyWith<$Res> {
  __$$TemplateModelImplCopyWithImpl(
      _$TemplateModelImpl _value, $Res Function(_$TemplateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = freezed,
    Object? name = null,
    Object? homepageStyle = null,
    Object? transition = null,
    Object? customBackgroundUrl = freezed,
    Object? music = null,
    Object? potentialEnable = null,
    Object? isDeleted = null,
    Object? musicId = freezed,
    Object? musicUrl = freezed,
    Object? status = freezed,
    Object? templateId = freezed,
    Object? templateName = null,
    Object? usePeople = null,
    Object? pageList = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$TemplateModelImpl(
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      transition: null == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as PageTransitionType,
      customBackgroundUrl: freezed == customBackgroundUrl
          ? _value.customBackgroundUrl
          : customBackgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as bool,
      potentialEnable: null == potentialEnable
          ? _value.potentialEnable
          : potentialEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateName: null == templateName
          ? _value.templateName
          : templateName // ignore: cast_nullable_to_non_nullable
              as String,
      usePeople: null == usePeople
          ? _value.usePeople
          : usePeople // ignore: cast_nullable_to_non_nullable
              as int,
      pageList: null == pageList
          ? _value._pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<TemplatePageModel>,
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
class _$TemplateModelImpl extends _TemplateModel {
  const _$TemplateModelImpl(
      {@JsonKey(name: 'albumCoverUrl') this.cover,
      @JsonKey(name: 'albumName') this.name = '',
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      this.homepageStyle = HomepageStyle.custom,
      @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
      this.transition = PageTransitionType.flip,
      @JsonKey(name: 'backgroundUrl') this.customBackgroundUrl,
      @JsonKey(name: 'ifBackgroundMusic') this.music = false,
      @JsonKey(name: 'ifSuitPotential') this.potentialEnable = false,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.musicId,
      this.musicUrl,
      this.status,
      this.templateId,
      this.templateName = '',
      this.usePeople = 0,
      @JsonKey(name: 'albumPageList', includeToJson: false)
      final List<TemplatePageModel> pageList = const [],
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : _pageList = pageList,
        super._();

  factory _$TemplateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateModelImplFromJson(json);

  /// 封面url
  @override
  @JsonKey(name: 'albumCoverUrl')
  final String? cover;

  /// 相册名称
  @override
  @JsonKey(name: 'albumName')
  final String name;

  /// 相册样式
  @override
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  final HomepageStyle homepageStyle;

  /// 相册翻页样式
  @override
  @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
  final PageTransitionType transition;

  /// 自定义背景url
  @override
  @JsonKey(name: 'backgroundUrl')
  final String? customBackgroundUrl;

  /// 是否使用背景音乐
  @override
  @JsonKey(name: 'ifBackgroundMusic')
  final bool music;

  /// 是否适用于潜客
  @override
  @JsonKey(name: 'ifSuitPotential')
  final bool potentialEnable;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 背景音乐id
  @override
  final String? musicId;

  /// 背景音乐url
  @override
  final String? musicUrl;

  /// 业务状态
  @override
  final int? status;

  /// 模板id
  @override
  final String? templateId;

  /// 模板名称
  @override
  @JsonKey()
  final String templateName;

  /// 使用人数
  @override
  @JsonKey()
  final int usePeople;

  /// 相册页列表
  final List<TemplatePageModel> _pageList;

  /// 相册页列表
  @override
  @JsonKey(name: 'albumPageList', includeToJson: false)
  List<TemplatePageModel> get pageList {
    if (_pageList is EqualUnmodifiableListView) return _pageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pageList);
  }

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
    return 'TemplateModel(cover: $cover, name: $name, homepageStyle: $homepageStyle, transition: $transition, customBackgroundUrl: $customBackgroundUrl, music: $music, potentialEnable: $potentialEnable, isDeleted: $isDeleted, musicId: $musicId, musicUrl: $musicUrl, status: $status, templateId: $templateId, templateName: $templateName, usePeople: $usePeople, pageList: $pageList, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateModelImpl &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.homepageStyle, homepageStyle) ||
                other.homepageStyle == homepageStyle) &&
            (identical(other.transition, transition) ||
                other.transition == transition) &&
            (identical(other.customBackgroundUrl, customBackgroundUrl) ||
                other.customBackgroundUrl == customBackgroundUrl) &&
            (identical(other.music, music) || other.music == music) &&
            (identical(other.potentialEnable, potentialEnable) ||
                other.potentialEnable == potentialEnable) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.musicId, musicId) || other.musicId == musicId) &&
            (identical(other.musicUrl, musicUrl) ||
                other.musicUrl == musicUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.templateName, templateName) ||
                other.templateName == templateName) &&
            (identical(other.usePeople, usePeople) ||
                other.usePeople == usePeople) &&
            const DeepCollectionEquality().equals(other._pageList, _pageList) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cover,
      name,
      homepageStyle,
      transition,
      customBackgroundUrl,
      music,
      potentialEnable,
      isDeleted,
      musicId,
      musicUrl,
      status,
      templateId,
      templateName,
      usePeople,
      const DeepCollectionEquality().hash(_pageList),
      createTime,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateModelImplCopyWith<_$TemplateModelImpl> get copyWith =>
      __$$TemplateModelImplCopyWithImpl<_$TemplateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateModelImplToJson(
      this,
    );
  }
}

abstract class _TemplateModel extends TemplateModel {
  const factory _TemplateModel(
      {@JsonKey(name: 'albumCoverUrl') final String? cover,
      @JsonKey(name: 'albumName') final String name,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      final HomepageStyle homepageStyle,
      @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
      final PageTransitionType transition,
      @JsonKey(name: 'backgroundUrl') final String? customBackgroundUrl,
      @JsonKey(name: 'ifBackgroundMusic') final bool music,
      @JsonKey(name: 'ifSuitPotential') final bool potentialEnable,
      @Int2BoolJsonConverter() final bool isDeleted,
      final String? musicId,
      final String? musicUrl,
      final int? status,
      final String? templateId,
      final String templateName,
      final int usePeople,
      @JsonKey(name: 'albumPageList', includeToJson: false)
      final List<TemplatePageModel> pageList,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$TemplateModelImpl;
  const _TemplateModel._() : super._();

  factory _TemplateModel.fromJson(Map<String, dynamic> json) =
      _$TemplateModelImpl.fromJson;

  @override

  /// 封面url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover;
  @override

  /// 相册名称
  @JsonKey(name: 'albumName')
  String get name;
  @override

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle;
  @override

  /// 相册翻页样式
  @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
  PageTransitionType get transition;
  @override

  /// 自定义背景url
  @JsonKey(name: 'backgroundUrl')
  String? get customBackgroundUrl;
  @override

  /// 是否使用背景音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool get music;
  @override

  /// 是否适用于潜客
  @JsonKey(name: 'ifSuitPotential')
  bool get potentialEnable;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 背景音乐id
  String? get musicId;
  @override

  /// 背景音乐url
  String? get musicUrl;
  @override

  /// 业务状态
  int? get status;
  @override

  /// 模板id
  String? get templateId;
  @override

  /// 模板名称
  String get templateName;
  @override

  /// 使用人数
  int get usePeople;
  @override

  /// 相册页列表
  @JsonKey(name: 'albumPageList', includeToJson: false)
  List<TemplatePageModel> get pageList;
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
  _$$TemplateModelImplCopyWith<_$TemplateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BackendModuleModel _$BackendModuleModelFromJson(Map<String, dynamic> json) {
  return _BackendModuleModel.fromJson(json);
}

/// @nodoc
mixin _$BackendModuleModel {
  /// 模块类型
  ModuleType? get moduleType => throw _privateConstructorUsedError;

  /// 初始图片
  List<String> get pics => throw _privateConstructorUsedError;

  /// 初始文字
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackendModuleModelCopyWith<BackendModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendModuleModelCopyWith<$Res> {
  factory $BackendModuleModelCopyWith(
          BackendModuleModel value, $Res Function(BackendModuleModel) then) =
      _$BackendModuleModelCopyWithImpl<$Res, BackendModuleModel>;
  @useResult
  $Res call({ModuleType? moduleType, List<String> pics, String text});
}

/// @nodoc
class _$BackendModuleModelCopyWithImpl<$Res, $Val extends BackendModuleModel>
    implements $BackendModuleModelCopyWith<$Res> {
  _$BackendModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleType = freezed,
    Object? pics = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      moduleType: freezed == moduleType
          ? _value.moduleType
          : moduleType // ignore: cast_nullable_to_non_nullable
              as ModuleType?,
      pics: null == pics
          ? _value.pics
          : pics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackendModuleModelImplCopyWith<$Res>
    implements $BackendModuleModelCopyWith<$Res> {
  factory _$$BackendModuleModelImplCopyWith(_$BackendModuleModelImpl value,
          $Res Function(_$BackendModuleModelImpl) then) =
      __$$BackendModuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModuleType? moduleType, List<String> pics, String text});
}

/// @nodoc
class __$$BackendModuleModelImplCopyWithImpl<$Res>
    extends _$BackendModuleModelCopyWithImpl<$Res, _$BackendModuleModelImpl>
    implements _$$BackendModuleModelImplCopyWith<$Res> {
  __$$BackendModuleModelImplCopyWithImpl(_$BackendModuleModelImpl _value,
      $Res Function(_$BackendModuleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleType = freezed,
    Object? pics = null,
    Object? text = null,
  }) {
    return _then(_$BackendModuleModelImpl(
      moduleType: freezed == moduleType
          ? _value.moduleType
          : moduleType // ignore: cast_nullable_to_non_nullable
              as ModuleType?,
      pics: null == pics
          ? _value._pics
          : pics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackendModuleModelImpl extends _BackendModuleModel {
  const _$BackendModuleModelImpl(
      {this.moduleType = ModuleType.unknown,
      final List<String> pics = const [],
      this.text = ''})
      : _pics = pics,
        super._();

  factory _$BackendModuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackendModuleModelImplFromJson(json);

  /// 模块类型
  @override
  @JsonKey()
  final ModuleType? moduleType;

  /// 初始图片
  final List<String> _pics;

  /// 初始图片
  @override
  @JsonKey()
  List<String> get pics {
    if (_pics is EqualUnmodifiableListView) return _pics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pics);
  }

  /// 初始文字
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'BackendModuleModel(moduleType: $moduleType, pics: $pics, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackendModuleModelImpl &&
            (identical(other.moduleType, moduleType) ||
                other.moduleType == moduleType) &&
            const DeepCollectionEquality().equals(other._pics, _pics) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, moduleType,
      const DeepCollectionEquality().hash(_pics), text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackendModuleModelImplCopyWith<_$BackendModuleModelImpl> get copyWith =>
      __$$BackendModuleModelImplCopyWithImpl<_$BackendModuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackendModuleModelImplToJson(
      this,
    );
  }
}

abstract class _BackendModuleModel extends BackendModuleModel {
  const factory _BackendModuleModel(
      {final ModuleType? moduleType,
      final List<String> pics,
      final String text}) = _$BackendModuleModelImpl;
  const _BackendModuleModel._() : super._();

  factory _BackendModuleModel.fromJson(Map<String, dynamic> json) =
      _$BackendModuleModelImpl.fromJson;

  @override

  /// 模块类型
  ModuleType? get moduleType;
  @override

  /// 初始图片
  List<String> get pics;
  @override

  /// 初始文字
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$BackendModuleModelImplCopyWith<_$BackendModuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplatePageModel _$TemplatePageModelFromJson(Map<String, dynamic> json) {
  return _TemplatePageModel.fromJson(json);
}

/// @nodoc
mixin _$TemplatePageModel {
  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int get pageIndex => throw _privateConstructorUsedError;

  /// 页面id -1 => 新增的页面 0 => 首页
  String get pageId => throw _privateConstructorUsedError;

  /// 模板id
  String? get templateId => throw _privateConstructorUsedError;

  /// 缩略图url
  String? get picUrl => throw _privateConstructorUsedError;

  /// 后端模块配置
  List<BackendModuleModel> get modules => throw _privateConstructorUsedError;

  /// 模板对应的原始页面
  @JsonKey(name: 'appJsonObj')
  PageJsonModel? get original => throw _privateConstructorUsedError;

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle => throw _privateConstructorUsedError;

  /// 背景url
  String? get backgroundUrl => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplatePageModelCopyWith<TemplatePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplatePageModelCopyWith<$Res> {
  factory $TemplatePageModelCopyWith(
          TemplatePageModel value, $Res Function(TemplatePageModel) then) =
      _$TemplatePageModelCopyWithImpl<$Res, TemplatePageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'albumTemplateType') int pageIndex,
      String pageId,
      String? templateId,
      String? picUrl,
      List<BackendModuleModel> modules,
      @JsonKey(name: 'appJsonObj') PageJsonModel? original,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      String? backgroundUrl,
      @Int2BoolJsonConverter() bool isDeleted,
      int? status,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  $PageJsonModelCopyWith<$Res>? get original;
}

/// @nodoc
class _$TemplatePageModelCopyWithImpl<$Res, $Val extends TemplatePageModel>
    implements $TemplatePageModelCopyWith<$Res> {
  _$TemplatePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? pageId = null,
    Object? templateId = freezed,
    Object? picUrl = freezed,
    Object? modules = null,
    Object? original = freezed,
    Object? homepageStyle = null,
    Object? backgroundUrl = freezed,
    Object? isDeleted = null,
    Object? status = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<BackendModuleModel>,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as PageJsonModel?,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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

  @override
  @pragma('vm:prefer-inline')
  $PageJsonModelCopyWith<$Res>? get original {
    if (_value.original == null) {
      return null;
    }

    return $PageJsonModelCopyWith<$Res>(_value.original!, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplatePageModelImplCopyWith<$Res>
    implements $TemplatePageModelCopyWith<$Res> {
  factory _$$TemplatePageModelImplCopyWith(_$TemplatePageModelImpl value,
          $Res Function(_$TemplatePageModelImpl) then) =
      __$$TemplatePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'albumTemplateType') int pageIndex,
      String pageId,
      String? templateId,
      String? picUrl,
      List<BackendModuleModel> modules,
      @JsonKey(name: 'appJsonObj') PageJsonModel? original,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      HomepageStyle homepageStyle,
      String? backgroundUrl,
      @Int2BoolJsonConverter() bool isDeleted,
      int? status,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});

  @override
  $PageJsonModelCopyWith<$Res>? get original;
}

/// @nodoc
class __$$TemplatePageModelImplCopyWithImpl<$Res>
    extends _$TemplatePageModelCopyWithImpl<$Res, _$TemplatePageModelImpl>
    implements _$$TemplatePageModelImplCopyWith<$Res> {
  __$$TemplatePageModelImplCopyWithImpl(_$TemplatePageModelImpl _value,
      $Res Function(_$TemplatePageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? pageId = null,
    Object? templateId = freezed,
    Object? picUrl = freezed,
    Object? modules = null,
    Object? original = freezed,
    Object? homepageStyle = null,
    Object? backgroundUrl = freezed,
    Object? isDeleted = null,
    Object? status = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$TemplatePageModelImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<BackendModuleModel>,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as PageJsonModel?,
      homepageStyle: null == homepageStyle
          ? _value.homepageStyle
          : homepageStyle // ignore: cast_nullable_to_non_nullable
              as HomepageStyle,
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$TemplatePageModelImpl extends _TemplatePageModel {
  const _$TemplatePageModelImpl(
      {@JsonKey(name: 'albumTemplateType') this.pageIndex = -1,
      this.pageId = '-1',
      this.templateId,
      this.picUrl,
      final List<BackendModuleModel> modules = const [],
      @JsonKey(name: 'appJsonObj') this.original,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      this.homepageStyle = HomepageStyle.custom,
      this.backgroundUrl,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.status,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : _modules = modules,
        super._();

  factory _$TemplatePageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplatePageModelImplFromJson(json);

  /// 页面对应类型, 后端用于区分页面
  @override
  @JsonKey(name: 'albumTemplateType')
  final int pageIndex;

  /// 页面id -1 => 新增的页面 0 => 首页
  @override
  @JsonKey()
  final String pageId;

  /// 模板id
  @override
  final String? templateId;

  /// 缩略图url
  @override
  final String? picUrl;

  /// 后端模块配置
  final List<BackendModuleModel> _modules;

  /// 后端模块配置
  @override
  @JsonKey()
  List<BackendModuleModel> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  /// 模板对应的原始页面
  @override
  @JsonKey(name: 'appJsonObj')
  final PageJsonModel? original;

  /// 相册样式
  @override
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  final HomepageStyle homepageStyle;

  /// 背景url
  @override
  final String? backgroundUrl;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 业务状态
  @override
  final int? status;

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
    return 'TemplatePageModel(pageIndex: $pageIndex, pageId: $pageId, templateId: $templateId, picUrl: $picUrl, modules: $modules, original: $original, homepageStyle: $homepageStyle, backgroundUrl: $backgroundUrl, isDeleted: $isDeleted, status: $status, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplatePageModelImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            const DeepCollectionEquality().equals(other._modules, _modules) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.homepageStyle, homepageStyle) ||
                other.homepageStyle == homepageStyle) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageIndex,
      pageId,
      templateId,
      picUrl,
      const DeepCollectionEquality().hash(_modules),
      original,
      homepageStyle,
      backgroundUrl,
      isDeleted,
      status,
      createTime,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplatePageModelImplCopyWith<_$TemplatePageModelImpl> get copyWith =>
      __$$TemplatePageModelImplCopyWithImpl<_$TemplatePageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplatePageModelImplToJson(
      this,
    );
  }
}

abstract class _TemplatePageModel extends TemplatePageModel {
  const factory _TemplatePageModel(
      {@JsonKey(name: 'albumTemplateType') final int pageIndex,
      final String pageId,
      final String? templateId,
      final String? picUrl,
      final List<BackendModuleModel> modules,
      @JsonKey(name: 'appJsonObj') final PageJsonModel? original,
      @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
      final HomepageStyle homepageStyle,
      final String? backgroundUrl,
      @Int2BoolJsonConverter() final bool isDeleted,
      final int? status,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$TemplatePageModelImpl;
  const _TemplatePageModel._() : super._();

  factory _TemplatePageModel.fromJson(Map<String, dynamic> json) =
      _$TemplatePageModelImpl.fromJson;

  @override

  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int get pageIndex;
  @override

  /// 页面id -1 => 新增的页面 0 => 首页
  String get pageId;
  @override

  /// 模板id
  String? get templateId;
  @override

  /// 缩略图url
  String? get picUrl;
  @override

  /// 后端模块配置
  List<BackendModuleModel> get modules;
  @override

  /// 模板对应的原始页面
  @JsonKey(name: 'appJsonObj')
  PageJsonModel? get original;
  @override

  /// 相册样式
  @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
  HomepageStyle get homepageStyle;
  @override

  /// 背景url
  String? get backgroundUrl;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 业务状态
  int? get status;
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
  _$$TemplatePageModelImplCopyWith<_$TemplatePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiyProductModel _$DiyProductModelFromJson(Map<String, dynamic> json) {
  return _DiyProductModel.fromJson(json);
}

/// @nodoc
mixin _$DiyProductModel {
  /// 相册标题
  String? get title => throw _privateConstructorUsedError;

  /// 相册标题
  set title(String? value) => throw _privateConstructorUsedError;

  /// 相册使用的音乐
  MusicModel? get music => throw _privateConstructorUsedError;

  /// 相册使用的音乐
  set music(MusicModel? value) => throw _privateConstructorUsedError;

  /// 相册模板
  TemplateJsonModel? get template => throw _privateConstructorUsedError;

  /// 相册模板
  set template(TemplateJsonModel? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiyProductModelCopyWith<DiyProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiyProductModelCopyWith<$Res> {
  factory $DiyProductModelCopyWith(
          DiyProductModel value, $Res Function(DiyProductModel) then) =
      _$DiyProductModelCopyWithImpl<$Res, DiyProductModel>;
  @useResult
  $Res call({String? title, MusicModel? music, TemplateJsonModel? template});

  $MusicModelCopyWith<$Res>? get music;
  $TemplateJsonModelCopyWith<$Res>? get template;
}

/// @nodoc
class _$DiyProductModelCopyWithImpl<$Res, $Val extends DiyProductModel>
    implements $DiyProductModelCopyWith<$Res> {
  _$DiyProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? music = freezed,
    Object? template = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      music: freezed == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as MusicModel?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as TemplateJsonModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MusicModelCopyWith<$Res>? get music {
    if (_value.music == null) {
      return null;
    }

    return $MusicModelCopyWith<$Res>(_value.music!, (value) {
      return _then(_value.copyWith(music: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateJsonModelCopyWith<$Res>? get template {
    if (_value.template == null) {
      return null;
    }

    return $TemplateJsonModelCopyWith<$Res>(_value.template!, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiyProductModelImplCopyWith<$Res>
    implements $DiyProductModelCopyWith<$Res> {
  factory _$$DiyProductModelImplCopyWith(_$DiyProductModelImpl value,
          $Res Function(_$DiyProductModelImpl) then) =
      __$$DiyProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, MusicModel? music, TemplateJsonModel? template});

  @override
  $MusicModelCopyWith<$Res>? get music;
  @override
  $TemplateJsonModelCopyWith<$Res>? get template;
}

/// @nodoc
class __$$DiyProductModelImplCopyWithImpl<$Res>
    extends _$DiyProductModelCopyWithImpl<$Res, _$DiyProductModelImpl>
    implements _$$DiyProductModelImplCopyWith<$Res> {
  __$$DiyProductModelImplCopyWithImpl(
      _$DiyProductModelImpl _value, $Res Function(_$DiyProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? music = freezed,
    Object? template = freezed,
  }) {
    return _then(_$DiyProductModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      music: freezed == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as MusicModel?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as TemplateJsonModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiyProductModelImpl extends _DiyProductModel {
  _$DiyProductModelImpl({this.title, this.music, this.template}) : super._();

  factory _$DiyProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiyProductModelImplFromJson(json);

  /// 相册标题
  @override
  String? title;

  /// 相册使用的音乐
  @override
  MusicModel? music;

  /// 相册模板
  @override
  TemplateJsonModel? template;

  @override
  String toString() {
    return 'DiyProductModel(title: $title, music: $music, template: $template)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiyProductModelImplCopyWith<_$DiyProductModelImpl> get copyWith =>
      __$$DiyProductModelImplCopyWithImpl<_$DiyProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiyProductModelImplToJson(
      this,
    );
  }
}

abstract class _DiyProductModel extends DiyProductModel {
  factory _DiyProductModel(
      {String? title,
      MusicModel? music,
      TemplateJsonModel? template}) = _$DiyProductModelImpl;
  _DiyProductModel._() : super._();

  factory _DiyProductModel.fromJson(Map<String, dynamic> json) =
      _$DiyProductModelImpl.fromJson;

  @override

  /// 相册标题
  String? get title;

  /// 相册标题
  set title(String? value);
  @override

  /// 相册使用的音乐
  MusicModel? get music;

  /// 相册使用的音乐
  set music(MusicModel? value);
  @override

  /// 相册模板
  TemplateJsonModel? get template;

  /// 相册模板
  set template(TemplateJsonModel? value);
  @override
  @JsonKey(ignore: true)
  _$$DiyProductModelImplCopyWith<_$DiyProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiyPageReq _$DiyPageReqFromJson(Map<String, dynamic> json) {
  return _DiyPageReq.fromJson(json);
}

/// @nodoc
mixin _$DiyPageReq {
  /// 页面id
  String? get pageId => throw _privateConstructorUsedError;

  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int? get pageIndex => throw _privateConstructorUsedError;

  /// 页面 json
  String? get moduleJson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiyPageReqCopyWith<DiyPageReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiyPageReqCopyWith<$Res> {
  factory $DiyPageReqCopyWith(
          DiyPageReq value, $Res Function(DiyPageReq) then) =
      _$DiyPageReqCopyWithImpl<$Res, DiyPageReq>;
  @useResult
  $Res call(
      {String? pageId,
      @JsonKey(name: 'albumTemplateType') int? pageIndex,
      String? moduleJson});
}

/// @nodoc
class _$DiyPageReqCopyWithImpl<$Res, $Val extends DiyPageReq>
    implements $DiyPageReqCopyWith<$Res> {
  _$DiyPageReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = freezed,
    Object? pageIndex = freezed,
    Object? moduleJson = freezed,
  }) {
    return _then(_value.copyWith(
      pageId: freezed == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageIndex: freezed == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      moduleJson: freezed == moduleJson
          ? _value.moduleJson
          : moduleJson // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiyPageReqImplCopyWith<$Res>
    implements $DiyPageReqCopyWith<$Res> {
  factory _$$DiyPageReqImplCopyWith(
          _$DiyPageReqImpl value, $Res Function(_$DiyPageReqImpl) then) =
      __$$DiyPageReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pageId,
      @JsonKey(name: 'albumTemplateType') int? pageIndex,
      String? moduleJson});
}

/// @nodoc
class __$$DiyPageReqImplCopyWithImpl<$Res>
    extends _$DiyPageReqCopyWithImpl<$Res, _$DiyPageReqImpl>
    implements _$$DiyPageReqImplCopyWith<$Res> {
  __$$DiyPageReqImplCopyWithImpl(
      _$DiyPageReqImpl _value, $Res Function(_$DiyPageReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = freezed,
    Object? pageIndex = freezed,
    Object? moduleJson = freezed,
  }) {
    return _then(_$DiyPageReqImpl(
      pageId: freezed == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageIndex: freezed == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      moduleJson: freezed == moduleJson
          ? _value.moduleJson
          : moduleJson // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiyPageReqImpl extends _DiyPageReq {
  const _$DiyPageReqImpl(
      {this.pageId,
      @JsonKey(name: 'albumTemplateType') this.pageIndex,
      this.moduleJson})
      : super._();

  factory _$DiyPageReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiyPageReqImplFromJson(json);

  /// 页面id
  @override
  final String? pageId;

  /// 页面对应类型, 后端用于区分页面
  @override
  @JsonKey(name: 'albumTemplateType')
  final int? pageIndex;

  /// 页面 json
  @override
  final String? moduleJson;

  @override
  String toString() {
    return 'DiyPageReq(pageId: $pageId, pageIndex: $pageIndex, moduleJson: $moduleJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiyPageReqImpl &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.moduleJson, moduleJson) ||
                other.moduleJson == moduleJson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageId, pageIndex, moduleJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiyPageReqImplCopyWith<_$DiyPageReqImpl> get copyWith =>
      __$$DiyPageReqImplCopyWithImpl<_$DiyPageReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiyPageReqImplToJson(
      this,
    );
  }
}

abstract class _DiyPageReq extends DiyPageReq {
  const factory _DiyPageReq(
      {final String? pageId,
      @JsonKey(name: 'albumTemplateType') final int? pageIndex,
      final String? moduleJson}) = _$DiyPageReqImpl;
  const _DiyPageReq._() : super._();

  factory _DiyPageReq.fromJson(Map<String, dynamic> json) =
      _$DiyPageReqImpl.fromJson;

  @override

  /// 页面id
  String? get pageId;
  @override

  /// 页面对应类型, 后端用于区分页面
  @JsonKey(name: 'albumTemplateType')
  int? get pageIndex;
  @override

  /// 页面 json
  String? get moduleJson;
  @override
  @JsonKey(ignore: true)
  _$$DiyPageReqImplCopyWith<_$DiyPageReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiyProductReq _$DiyProductReqFromJson(Map<String, dynamic> json) {
  return _DiyProductReq.fromJson(json);
}

/// @nodoc
mixin _$DiyProductReq {
  /// 模板id
  String? get templateId => throw _privateConstructorUsedError;

  /// 相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 相册内容
  @JsonKey(name: 'albumContent')
  String? get content => throw _privateConstructorUsedError;

  /// albumTag
  @JsonKey(name: 'albumTag')
  CatalogType? get catalogType => throw _privateConstructorUsedError;

  /// 相册标题
  @JsonKey(name: 'albumTitle')
  String? get title => throw _privateConstructorUsedError;

  /// 相册封面
  @JsonKey(name: 'albumCoverUrl')
  String? get cover => throw _privateConstructorUsedError;

  /// 是否使用音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool? get useMusic => throw _privateConstructorUsedError;

  /// 背景音乐id
  String? get musicId => throw _privateConstructorUsedError;

  /// 照片列表
  List<String>? get photoList => throw _privateConstructorUsedError;

  /// 页面列表
  List<DiyPageReq>? get pageList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiyProductReqCopyWith<DiyProductReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiyProductReqCopyWith<$Res> {
  factory $DiyProductReqCopyWith(
          DiyProductReq value, $Res Function(DiyProductReq) then) =
      _$DiyProductReqCopyWithImpl<$Res, DiyProductReq>;
  @useResult
  $Res call(
      {String? templateId,
      String? studentAlbumId,
      @JsonKey(name: 'albumContent') String? content,
      @JsonKey(name: 'albumTag') CatalogType? catalogType,
      @JsonKey(name: 'albumTitle') String? title,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'ifBackgroundMusic') bool? useMusic,
      String? musicId,
      List<String>? photoList,
      List<DiyPageReq>? pageList});
}

/// @nodoc
class _$DiyProductReqCopyWithImpl<$Res, $Val extends DiyProductReq>
    implements $DiyProductReqCopyWith<$Res> {
  _$DiyProductReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? studentAlbumId = freezed,
    Object? content = freezed,
    Object? catalogType = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? useMusic = freezed,
    Object? musicId = freezed,
    Object? photoList = freezed,
    Object? pageList = freezed,
  }) {
    return _then(_value.copyWith(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      useMusic: freezed == useMusic
          ? _value.useMusic
          : useMusic // ignore: cast_nullable_to_non_nullable
              as bool?,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      photoList: freezed == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pageList: freezed == pageList
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<DiyPageReq>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiyProductReqImplCopyWith<$Res>
    implements $DiyProductReqCopyWith<$Res> {
  factory _$$DiyProductReqImplCopyWith(
          _$DiyProductReqImpl value, $Res Function(_$DiyProductReqImpl) then) =
      __$$DiyProductReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? templateId,
      String? studentAlbumId,
      @JsonKey(name: 'albumContent') String? content,
      @JsonKey(name: 'albumTag') CatalogType? catalogType,
      @JsonKey(name: 'albumTitle') String? title,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      @JsonKey(name: 'ifBackgroundMusic') bool? useMusic,
      String? musicId,
      List<String>? photoList,
      List<DiyPageReq>? pageList});
}

/// @nodoc
class __$$DiyProductReqImplCopyWithImpl<$Res>
    extends _$DiyProductReqCopyWithImpl<$Res, _$DiyProductReqImpl>
    implements _$$DiyProductReqImplCopyWith<$Res> {
  __$$DiyProductReqImplCopyWithImpl(
      _$DiyProductReqImpl _value, $Res Function(_$DiyProductReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? studentAlbumId = freezed,
    Object? content = freezed,
    Object? catalogType = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? useMusic = freezed,
    Object? musicId = freezed,
    Object? photoList = freezed,
    Object? pageList = freezed,
  }) {
    return _then(_$DiyProductReqImpl(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogType: freezed == catalogType
          ? _value.catalogType
          : catalogType // ignore: cast_nullable_to_non_nullable
              as CatalogType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      useMusic: freezed == useMusic
          ? _value.useMusic
          : useMusic // ignore: cast_nullable_to_non_nullable
              as bool?,
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      photoList: freezed == photoList
          ? _value._photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pageList: freezed == pageList
          ? _value._pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<DiyPageReq>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiyProductReqImpl extends _DiyProductReq {
  const _$DiyProductReqImpl(
      {this.templateId,
      this.studentAlbumId,
      @JsonKey(name: 'albumContent') this.content,
      @JsonKey(name: 'albumTag') this.catalogType,
      @JsonKey(name: 'albumTitle') this.title,
      @JsonKey(name: 'albumCoverUrl') this.cover,
      @JsonKey(name: 'ifBackgroundMusic') this.useMusic,
      this.musicId,
      final List<String>? photoList,
      final List<DiyPageReq>? pageList})
      : _photoList = photoList,
        _pageList = pageList,
        super._();

  factory _$DiyProductReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiyProductReqImplFromJson(json);

  /// 模板id
  @override
  final String? templateId;

  /// 相册id
  @override
  final String? studentAlbumId;

  /// 相册内容
  @override
  @JsonKey(name: 'albumContent')
  final String? content;

  /// albumTag
  @override
  @JsonKey(name: 'albumTag')
  final CatalogType? catalogType;

  /// 相册标题
  @override
  @JsonKey(name: 'albumTitle')
  final String? title;

  /// 相册封面
  @override
  @JsonKey(name: 'albumCoverUrl')
  final String? cover;

  /// 是否使用音乐
  @override
  @JsonKey(name: 'ifBackgroundMusic')
  final bool? useMusic;

  /// 背景音乐id
  @override
  final String? musicId;

  /// 照片列表
  final List<String>? _photoList;

  /// 照片列表
  @override
  List<String>? get photoList {
    final value = _photoList;
    if (value == null) return null;
    if (_photoList is EqualUnmodifiableListView) return _photoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 页面列表
  final List<DiyPageReq>? _pageList;

  /// 页面列表
  @override
  List<DiyPageReq>? get pageList {
    final value = _pageList;
    if (value == null) return null;
    if (_pageList is EqualUnmodifiableListView) return _pageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiyProductReq(templateId: $templateId, studentAlbumId: $studentAlbumId, content: $content, catalogType: $catalogType, title: $title, cover: $cover, useMusic: $useMusic, musicId: $musicId, photoList: $photoList, pageList: $pageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiyProductReqImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.catalogType, catalogType) ||
                other.catalogType == catalogType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.useMusic, useMusic) ||
                other.useMusic == useMusic) &&
            (identical(other.musicId, musicId) || other.musicId == musicId) &&
            const DeepCollectionEquality()
                .equals(other._photoList, _photoList) &&
            const DeepCollectionEquality().equals(other._pageList, _pageList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      templateId,
      studentAlbumId,
      content,
      catalogType,
      title,
      cover,
      useMusic,
      musicId,
      const DeepCollectionEquality().hash(_photoList),
      const DeepCollectionEquality().hash(_pageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiyProductReqImplCopyWith<_$DiyProductReqImpl> get copyWith =>
      __$$DiyProductReqImplCopyWithImpl<_$DiyProductReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiyProductReqImplToJson(
      this,
    );
  }
}

abstract class _DiyProductReq extends DiyProductReq {
  const factory _DiyProductReq(
      {final String? templateId,
      final String? studentAlbumId,
      @JsonKey(name: 'albumContent') final String? content,
      @JsonKey(name: 'albumTag') final CatalogType? catalogType,
      @JsonKey(name: 'albumTitle') final String? title,
      @JsonKey(name: 'albumCoverUrl') final String? cover,
      @JsonKey(name: 'ifBackgroundMusic') final bool? useMusic,
      final String? musicId,
      final List<String>? photoList,
      final List<DiyPageReq>? pageList}) = _$DiyProductReqImpl;
  const _DiyProductReq._() : super._();

  factory _DiyProductReq.fromJson(Map<String, dynamic> json) =
      _$DiyProductReqImpl.fromJson;

  @override

  /// 模板id
  String? get templateId;
  @override

  /// 相册id
  String? get studentAlbumId;
  @override

  /// 相册内容
  @JsonKey(name: 'albumContent')
  String? get content;
  @override

  /// albumTag
  @JsonKey(name: 'albumTag')
  CatalogType? get catalogType;
  @override

  /// 相册标题
  @JsonKey(name: 'albumTitle')
  String? get title;
  @override

  /// 相册封面
  @JsonKey(name: 'albumCoverUrl')
  String? get cover;
  @override

  /// 是否使用音乐
  @JsonKey(name: 'ifBackgroundMusic')
  bool? get useMusic;
  @override

  /// 背景音乐id
  String? get musicId;
  @override

  /// 照片列表
  List<String>? get photoList;
  @override

  /// 页面列表
  List<DiyPageReq>? get pageList;
  @override
  @JsonKey(ignore: true)
  _$$DiyProductReqImplCopyWith<_$DiyProductReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MusicModel _$MusicModelFromJson(Map<String, dynamic> json) {
  return _MusicModel.fromJson(json);
}

/// @nodoc
mixin _$MusicModel {
  /// 音乐id
  String? get musicId => throw _privateConstructorUsedError;

  /// 音乐名称
  @JsonKey(name: 'musicName')
  String get title => throw _privateConstructorUsedError;

  /// 音乐url
  @JsonKey(name: 'musicUrl')
  String? get url => throw _privateConstructorUsedError;

  /// 业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicModelCopyWith<MusicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicModelCopyWith<$Res> {
  factory $MusicModelCopyWith(
          MusicModel value, $Res Function(MusicModel) then) =
      _$MusicModelCopyWithImpl<$Res, MusicModel>;
  @useResult
  $Res call(
      {String? musicId,
      @JsonKey(name: 'musicName') String title,
      @JsonKey(name: 'musicUrl') String? url,
      int? status,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$MusicModelCopyWithImpl<$Res, $Val extends MusicModel>
    implements $MusicModelCopyWith<$Res> {
  _$MusicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicId = freezed,
    Object? title = null,
    Object? url = freezed,
    Object? status = freezed,
    Object? isDeleted = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$MusicModelImplCopyWith<$Res>
    implements $MusicModelCopyWith<$Res> {
  factory _$$MusicModelImplCopyWith(
          _$MusicModelImpl value, $Res Function(_$MusicModelImpl) then) =
      __$$MusicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? musicId,
      @JsonKey(name: 'musicName') String title,
      @JsonKey(name: 'musicUrl') String? url,
      int? status,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$MusicModelImplCopyWithImpl<$Res>
    extends _$MusicModelCopyWithImpl<$Res, _$MusicModelImpl>
    implements _$$MusicModelImplCopyWith<$Res> {
  __$$MusicModelImplCopyWithImpl(
      _$MusicModelImpl _value, $Res Function(_$MusicModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicId = freezed,
    Object? title = null,
    Object? url = freezed,
    Object? status = freezed,
    Object? isDeleted = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$MusicModelImpl(
      musicId: freezed == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$MusicModelImpl extends _MusicModel {
  const _$MusicModelImpl(
      {this.musicId,
      @JsonKey(name: 'musicName') this.title = '',
      @JsonKey(name: 'musicUrl') this.url,
      this.status,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  factory _$MusicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicModelImplFromJson(json);

  /// 音乐id
  @override
  final String? musicId;

  /// 音乐名称
  @override
  @JsonKey(name: 'musicName')
  final String title;

  /// 音乐url
  @override
  @JsonKey(name: 'musicUrl')
  final String? url;

  /// 业务状态
  @override
  final int? status;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

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
    return 'MusicModel(musicId: $musicId, title: $title, url: $url, status: $status, isDeleted: $isDeleted, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicModelImpl &&
            (identical(other.musicId, musicId) || other.musicId == musicId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, musicId, title, url, status,
      isDeleted, createTime, updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicModelImplCopyWith<_$MusicModelImpl> get copyWith =>
      __$$MusicModelImplCopyWithImpl<_$MusicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicModelImplToJson(
      this,
    );
  }
}

abstract class _MusicModel extends MusicModel {
  const factory _MusicModel(
      {final String? musicId,
      @JsonKey(name: 'musicName') final String title,
      @JsonKey(name: 'musicUrl') final String? url,
      final int? status,
      @Int2BoolJsonConverter() final bool isDeleted,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter() final DateTime? updateTime}) = _$MusicModelImpl;
  const _MusicModel._() : super._();

  factory _MusicModel.fromJson(Map<String, dynamic> json) =
      _$MusicModelImpl.fromJson;

  @override

  /// 音乐id
  String? get musicId;
  @override

  /// 音乐名称
  @JsonKey(name: 'musicName')
  String get title;
  @override

  /// 音乐url
  @JsonKey(name: 'musicUrl')
  String? get url;
  @override

  /// 业务状态
  int? get status;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
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
  _$$MusicModelImplCopyWith<_$MusicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrintHistoryModel _$PrintHistoryModelFromJson(Map<String, dynamic> json) {
  return _PrintHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PrintHistoryModel {
  /// 订单号
  String? get orderNo => throw _privateConstructorUsedError;

  /// 学生相册id
  String? get studentAlbumId => throw _privateConstructorUsedError;

  /// 模板id
  String? get templateId => throw _privateConstructorUsedError;

  /// 相册名称
  @JsonKey(name: 'albumTitle')
  String get title => throw _privateConstructorUsedError;

  /// 相册模板名称
  String get templateName => throw _privateConstructorUsedError;

  /// 学生编号
  String? get studentCode => throw _privateConstructorUsedError;

  /// 学生id
  int? get studentId => throw _privateConstructorUsedError;

  /// 潜客id
  @JsonKey(name: 'potentialStudentId')
  int? get potentialId => throw _privateConstructorUsedError;

  /// 账单编号
  String? get billNo => throw _privateConstructorUsedError;

  /// 购买记录id
  String? get buyId => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 收货人
  String get consignee => throw _privateConstructorUsedError;

  /// 发货类型
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  DeliveryType get deliveryType => throw _privateConstructorUsedError;

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile => throw _privateConstructorUsedError;

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province => throw _privateConstructorUsedError;

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city => throw _privateConstructorUsedError;

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area => throw _privateConstructorUsedError;

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address => throw _privateConstructorUsedError;

  /// 发货人编码
  @JsonKey(name: 'sendTeacherCode')
  String? get sendCode => throw _privateConstructorUsedError;

  /// 发货人名称
  @JsonKey(name: 'sendTeacherName')
  String? get sendName => throw _privateConstructorUsedError;

  /// 是否收费
  bool get ifNeedPay => throw _privateConstructorUsedError;

  /// 背景url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover => throw _privateConstructorUsedError;

  /// 是否潜客
  bool get ifPotential => throw _privateConstructorUsedError;

  /// 购买须知
  String get payNotice => throw _privateConstructorUsedError;

  /// 是否已支付
  @JsonKey(name: 'payStatus')
  @Int2BoolJsonConverter()
  bool get isPaid => throw _privateConstructorUsedError;

  /// 家长手机号
  String? get parentPhone => throw _privateConstructorUsedError;

  /// 支付金额
  @JsonKey(name: 'payAmount')
  double get price => throw _privateConstructorUsedError;

  /// 快递单号
  String? get trackingNumber => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 是否已发货
  @Int2BoolJsonConverter()
  @JsonKey(name: 'status')
  bool get isSend => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 发货时间
  @DateTimeJsonConverter()
  DateTime? get sendTime => throw _privateConstructorUsedError;

  /// 购买时间
  @DateTimeJsonConverter()
  DateTime? get buyTime => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrintHistoryModelCopyWith<PrintHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintHistoryModelCopyWith<$Res> {
  factory $PrintHistoryModelCopyWith(
          PrintHistoryModel value, $Res Function(PrintHistoryModel) then) =
      _$PrintHistoryModelCopyWithImpl<$Res, PrintHistoryModel>;
  @useResult
  $Res call(
      {String? orderNo,
      String? studentAlbumId,
      String? templateId,
      @JsonKey(name: 'albumTitle') String title,
      String templateName,
      String? studentCode,
      int? studentId,
      @JsonKey(name: 'potentialStudentId') int? potentialId,
      String? billNo,
      String? buyId,
      String studentName,
      String? yearTermCode,
      String schoolCode,
      String classCode,
      String gradeCode,
      String courseCode,
      String phaseCode,
      String consignee,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      DeliveryType deliveryType,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address,
      @JsonKey(name: 'sendTeacherCode') String? sendCode,
      @JsonKey(name: 'sendTeacherName') String? sendName,
      bool ifNeedPay,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      bool ifPotential,
      String payNotice,
      @JsonKey(name: 'payStatus') @Int2BoolJsonConverter() bool isPaid,
      String? parentPhone,
      @JsonKey(name: 'payAmount') double price,
      String? trackingNumber,
      String remark,
      @Int2BoolJsonConverter() @JsonKey(name: 'status') bool isSend,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? sendTime,
      @DateTimeJsonConverter() DateTime? buyTime,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$PrintHistoryModelCopyWithImpl<$Res, $Val extends PrintHistoryModel>
    implements $PrintHistoryModelCopyWith<$Res> {
  _$PrintHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = freezed,
    Object? studentAlbumId = freezed,
    Object? templateId = freezed,
    Object? title = null,
    Object? templateName = null,
    Object? studentCode = freezed,
    Object? studentId = freezed,
    Object? potentialId = freezed,
    Object? billNo = freezed,
    Object? buyId = freezed,
    Object? studentName = null,
    Object? yearTermCode = freezed,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? gradeCode = null,
    Object? courseCode = null,
    Object? phaseCode = null,
    Object? consignee = null,
    Object? deliveryType = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
    Object? sendCode = freezed,
    Object? sendName = freezed,
    Object? ifNeedPay = null,
    Object? cover = freezed,
    Object? ifPotential = null,
    Object? payNotice = null,
    Object? isPaid = null,
    Object? parentPhone = freezed,
    Object? price = null,
    Object? trackingNumber = freezed,
    Object? remark = null,
    Object? isSend = null,
    Object? isDeleted = null,
    Object? sendTime = freezed,
    Object? buyTime = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      templateName: null == templateName
          ? _value.templateName
          : templateName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      billNo: freezed == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String?,
      buyId: freezed == buyId
          ? _value.buyId
          : buyId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      sendCode: freezed == sendCode
          ? _value.sendCode
          : sendCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sendName: freezed == sendName
          ? _value.sendName
          : sendName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifNeedPay: null == ifNeedPay
          ? _value.ifNeedPay
          : ifNeedPay // ignore: cast_nullable_to_non_nullable
              as bool,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      ifPotential: null == ifPotential
          ? _value.ifPotential
          : ifPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      payNotice: null == payNotice
          ? _value.payNotice
          : payNotice // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      parentPhone: freezed == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      buyTime: freezed == buyTime
          ? _value.buyTime
          : buyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$PrintHistoryModelImplCopyWith<$Res>
    implements $PrintHistoryModelCopyWith<$Res> {
  factory _$$PrintHistoryModelImplCopyWith(_$PrintHistoryModelImpl value,
          $Res Function(_$PrintHistoryModelImpl) then) =
      __$$PrintHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderNo,
      String? studentAlbumId,
      String? templateId,
      @JsonKey(name: 'albumTitle') String title,
      String templateName,
      String? studentCode,
      int? studentId,
      @JsonKey(name: 'potentialStudentId') int? potentialId,
      String? billNo,
      String? buyId,
      String studentName,
      String? yearTermCode,
      String schoolCode,
      String classCode,
      String gradeCode,
      String courseCode,
      String phaseCode,
      String consignee,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      DeliveryType deliveryType,
      @JsonKey(name: 'consigneeMobile') String mobile,
      @JsonKey(name: 'deliveryProvince') String province,
      @JsonKey(name: 'deliveryCity') String city,
      @JsonKey(name: 'deliveryArea') String area,
      @JsonKey(name: 'deliveryAddress') String address,
      @JsonKey(name: 'sendTeacherCode') String? sendCode,
      @JsonKey(name: 'sendTeacherName') String? sendName,
      bool ifNeedPay,
      @JsonKey(name: 'albumCoverUrl') String? cover,
      bool ifPotential,
      String payNotice,
      @JsonKey(name: 'payStatus') @Int2BoolJsonConverter() bool isPaid,
      String? parentPhone,
      @JsonKey(name: 'payAmount') double price,
      String? trackingNumber,
      String remark,
      @Int2BoolJsonConverter() @JsonKey(name: 'status') bool isSend,
      @Int2BoolJsonConverter() bool isDeleted,
      @DateTimeJsonConverter() DateTime? sendTime,
      @DateTimeJsonConverter() DateTime? buyTime,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$PrintHistoryModelImplCopyWithImpl<$Res>
    extends _$PrintHistoryModelCopyWithImpl<$Res, _$PrintHistoryModelImpl>
    implements _$$PrintHistoryModelImplCopyWith<$Res> {
  __$$PrintHistoryModelImplCopyWithImpl(_$PrintHistoryModelImpl _value,
      $Res Function(_$PrintHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = freezed,
    Object? studentAlbumId = freezed,
    Object? templateId = freezed,
    Object? title = null,
    Object? templateName = null,
    Object? studentCode = freezed,
    Object? studentId = freezed,
    Object? potentialId = freezed,
    Object? billNo = freezed,
    Object? buyId = freezed,
    Object? studentName = null,
    Object? yearTermCode = freezed,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? gradeCode = null,
    Object? courseCode = null,
    Object? phaseCode = null,
    Object? consignee = null,
    Object? deliveryType = null,
    Object? mobile = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? address = null,
    Object? sendCode = freezed,
    Object? sendName = freezed,
    Object? ifNeedPay = null,
    Object? cover = freezed,
    Object? ifPotential = null,
    Object? payNotice = null,
    Object? isPaid = null,
    Object? parentPhone = freezed,
    Object? price = null,
    Object? trackingNumber = freezed,
    Object? remark = null,
    Object? isSend = null,
    Object? isDeleted = null,
    Object? sendTime = freezed,
    Object? buyTime = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$PrintHistoryModelImpl(
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      studentAlbumId: freezed == studentAlbumId
          ? _value.studentAlbumId
          : studentAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      templateName: null == templateName
          ? _value.templateName
          : templateName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialId: freezed == potentialId
          ? _value.potentialId
          : potentialId // ignore: cast_nullable_to_non_nullable
              as int?,
      billNo: freezed == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String?,
      buyId: freezed == buyId
          ? _value.buyId
          : buyId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignee: null == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      sendCode: freezed == sendCode
          ? _value.sendCode
          : sendCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sendName: freezed == sendName
          ? _value.sendName
          : sendName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifNeedPay: null == ifNeedPay
          ? _value.ifNeedPay
          : ifNeedPay // ignore: cast_nullable_to_non_nullable
              as bool,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      ifPotential: null == ifPotential
          ? _value.ifPotential
          : ifPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      payNotice: null == payNotice
          ? _value.payNotice
          : payNotice // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      parentPhone: freezed == parentPhone
          ? _value.parentPhone
          : parentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      buyTime: freezed == buyTime
          ? _value.buyTime
          : buyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$PrintHistoryModelImpl extends _PrintHistoryModel {
  const _$PrintHistoryModelImpl(
      {this.orderNo,
      this.studentAlbumId,
      this.templateId,
      @JsonKey(name: 'albumTitle') this.title = '',
      this.templateName = '',
      this.studentCode,
      this.studentId,
      @JsonKey(name: 'potentialStudentId') this.potentialId,
      this.billNo,
      this.buyId,
      this.studentName = '',
      this.yearTermCode,
      this.schoolCode = '',
      this.classCode = '',
      this.gradeCode = '',
      this.courseCode = '',
      this.phaseCode = '',
      this.consignee = '',
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      this.deliveryType = DeliveryType.self,
      @JsonKey(name: 'consigneeMobile') this.mobile = '',
      @JsonKey(name: 'deliveryProvince') this.province = '',
      @JsonKey(name: 'deliveryCity') this.city = '',
      @JsonKey(name: 'deliveryArea') this.area = '',
      @JsonKey(name: 'deliveryAddress') this.address = '',
      @JsonKey(name: 'sendTeacherCode') this.sendCode,
      @JsonKey(name: 'sendTeacherName') this.sendName,
      this.ifNeedPay = false,
      @JsonKey(name: 'albumCoverUrl') this.cover,
      this.ifPotential = false,
      this.payNotice = '',
      @JsonKey(name: 'payStatus') @Int2BoolJsonConverter() this.isPaid = false,
      this.parentPhone,
      @JsonKey(name: 'payAmount') this.price = 0.0,
      this.trackingNumber,
      this.remark = '',
      @Int2BoolJsonConverter() @JsonKey(name: 'status') this.isSend = false,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @DateTimeJsonConverter() this.sendTime,
      @DateTimeJsonConverter() this.buyTime,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  factory _$PrintHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrintHistoryModelImplFromJson(json);

  /// 订单号
  @override
  final String? orderNo;

  /// 学生相册id
  @override
  final String? studentAlbumId;

  /// 模板id
  @override
  final String? templateId;

  /// 相册名称
  @override
  @JsonKey(name: 'albumTitle')
  final String title;

  /// 相册模板名称
  @override
  @JsonKey()
  final String templateName;

  /// 学生编号
  @override
  final String? studentCode;

  /// 学生id
  @override
  final int? studentId;

  /// 潜客id
  @override
  @JsonKey(name: 'potentialStudentId')
  final int? potentialId;

  /// 账单编号
  @override
  final String? billNo;

  /// 购买记录id
  @override
  final String? buyId;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 学年学期编码
  @override
  final String? yearTermCode;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 收货人
  @override
  @JsonKey()
  final String consignee;

  /// 发货类型
  @override
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  final DeliveryType deliveryType;

  /// 收货人手机号
  @override
  @JsonKey(name: 'consigneeMobile')
  final String mobile;

  /// 收货人所在省
  @override
  @JsonKey(name: 'deliveryProvince')
  final String province;

  /// 收货人所在市
  @override
  @JsonKey(name: 'deliveryCity')
  final String city;

  /// 收货人所在地区
  @override
  @JsonKey(name: 'deliveryArea')
  final String area;

  /// 收货人详细地址
  @override
  @JsonKey(name: 'deliveryAddress')
  final String address;

  /// 发货人编码
  @override
  @JsonKey(name: 'sendTeacherCode')
  final String? sendCode;

  /// 发货人名称
  @override
  @JsonKey(name: 'sendTeacherName')
  final String? sendName;

  /// 是否收费
  @override
  @JsonKey()
  final bool ifNeedPay;

  /// 背景url
  @override
  @JsonKey(name: 'albumCoverUrl')
  final String? cover;

  /// 是否潜客
  @override
  @JsonKey()
  final bool ifPotential;

  /// 购买须知
  @override
  @JsonKey()
  final String payNotice;

  /// 是否已支付
  @override
  @JsonKey(name: 'payStatus')
  @Int2BoolJsonConverter()
  final bool isPaid;

  /// 家长手机号
  @override
  final String? parentPhone;

  /// 支付金额
  @override
  @JsonKey(name: 'payAmount')
  final double price;

  /// 快递单号
  @override
  final String? trackingNumber;

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 是否已发货
  @override
  @Int2BoolJsonConverter()
  @JsonKey(name: 'status')
  final bool isSend;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 发货时间
  @override
  @DateTimeJsonConverter()
  final DateTime? sendTime;

  /// 购买时间
  @override
  @DateTimeJsonConverter()
  final DateTime? buyTime;

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
    return 'PrintHistoryModel(orderNo: $orderNo, studentAlbumId: $studentAlbumId, templateId: $templateId, title: $title, templateName: $templateName, studentCode: $studentCode, studentId: $studentId, potentialId: $potentialId, billNo: $billNo, buyId: $buyId, studentName: $studentName, yearTermCode: $yearTermCode, schoolCode: $schoolCode, classCode: $classCode, gradeCode: $gradeCode, courseCode: $courseCode, phaseCode: $phaseCode, consignee: $consignee, deliveryType: $deliveryType, mobile: $mobile, province: $province, city: $city, area: $area, address: $address, sendCode: $sendCode, sendName: $sendName, ifNeedPay: $ifNeedPay, cover: $cover, ifPotential: $ifPotential, payNotice: $payNotice, isPaid: $isPaid, parentPhone: $parentPhone, price: $price, trackingNumber: $trackingNumber, remark: $remark, isSend: $isSend, isDeleted: $isDeleted, sendTime: $sendTime, buyTime: $buyTime, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrintHistoryModelImpl &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.studentAlbumId, studentAlbumId) ||
                other.studentAlbumId == studentAlbumId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.templateName, templateName) ||
                other.templateName == templateName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.potentialId, potentialId) ||
                other.potentialId == potentialId) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.buyId, buyId) || other.buyId == buyId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.consignee, consignee) ||
                other.consignee == consignee) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.sendCode, sendCode) ||
                other.sendCode == sendCode) &&
            (identical(other.sendName, sendName) ||
                other.sendName == sendName) &&
            (identical(other.ifNeedPay, ifNeedPay) ||
                other.ifNeedPay == ifNeedPay) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.ifPotential, ifPotential) ||
                other.ifPotential == ifPotential) &&
            (identical(other.payNotice, payNotice) ||
                other.payNotice == payNotice) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.isSend, isSend) || other.isSend == isSend) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            (identical(other.buyTime, buyTime) || other.buyTime == buyTime) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderNo,
        studentAlbumId,
        templateId,
        title,
        templateName,
        studentCode,
        studentId,
        potentialId,
        billNo,
        buyId,
        studentName,
        yearTermCode,
        schoolCode,
        classCode,
        gradeCode,
        courseCode,
        phaseCode,
        consignee,
        deliveryType,
        mobile,
        province,
        city,
        area,
        address,
        sendCode,
        sendName,
        ifNeedPay,
        cover,
        ifPotential,
        payNotice,
        isPaid,
        parentPhone,
        price,
        trackingNumber,
        remark,
        isSend,
        isDeleted,
        sendTime,
        buyTime,
        createTime,
        updateTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrintHistoryModelImplCopyWith<_$PrintHistoryModelImpl> get copyWith =>
      __$$PrintHistoryModelImplCopyWithImpl<_$PrintHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrintHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _PrintHistoryModel extends PrintHistoryModel {
  const factory _PrintHistoryModel(
      {final String? orderNo,
      final String? studentAlbumId,
      final String? templateId,
      @JsonKey(name: 'albumTitle') final String title,
      final String templateName,
      final String? studentCode,
      final int? studentId,
      @JsonKey(name: 'potentialStudentId') final int? potentialId,
      final String? billNo,
      final String? buyId,
      final String studentName,
      final String? yearTermCode,
      final String schoolCode,
      final String classCode,
      final String gradeCode,
      final String courseCode,
      final String phaseCode,
      final String consignee,
      @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
      final DeliveryType deliveryType,
      @JsonKey(name: 'consigneeMobile') final String mobile,
      @JsonKey(name: 'deliveryProvince') final String province,
      @JsonKey(name: 'deliveryCity') final String city,
      @JsonKey(name: 'deliveryArea') final String area,
      @JsonKey(name: 'deliveryAddress') final String address,
      @JsonKey(name: 'sendTeacherCode') final String? sendCode,
      @JsonKey(name: 'sendTeacherName') final String? sendName,
      final bool ifNeedPay,
      @JsonKey(name: 'albumCoverUrl') final String? cover,
      final bool ifPotential,
      final String payNotice,
      @JsonKey(name: 'payStatus') @Int2BoolJsonConverter() final bool isPaid,
      final String? parentPhone,
      @JsonKey(name: 'payAmount') final double price,
      final String? trackingNumber,
      final String remark,
      @Int2BoolJsonConverter() @JsonKey(name: 'status') final bool isSend,
      @Int2BoolJsonConverter() final bool isDeleted,
      @DateTimeJsonConverter() final DateTime? sendTime,
      @DateTimeJsonConverter() final DateTime? buyTime,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$PrintHistoryModelImpl;
  const _PrintHistoryModel._() : super._();

  factory _PrintHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PrintHistoryModelImpl.fromJson;

  @override

  /// 订单号
  String? get orderNo;
  @override

  /// 学生相册id
  String? get studentAlbumId;
  @override

  /// 模板id
  String? get templateId;
  @override

  /// 相册名称
  @JsonKey(name: 'albumTitle')
  String get title;
  @override

  /// 相册模板名称
  String get templateName;
  @override

  /// 学生编号
  String? get studentCode;
  @override

  /// 学生id
  int? get studentId;
  @override

  /// 潜客id
  @JsonKey(name: 'potentialStudentId')
  int? get potentialId;
  @override

  /// 账单编号
  String? get billNo;
  @override

  /// 购买记录id
  String? get buyId;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 学年学期编码
  String? get yearTermCode;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 收货人
  String get consignee;
  @override

  /// 发货类型
  @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
  DeliveryType get deliveryType;
  @override

  /// 收货人手机号
  @JsonKey(name: 'consigneeMobile')
  String get mobile;
  @override

  /// 收货人所在省
  @JsonKey(name: 'deliveryProvince')
  String get province;
  @override

  /// 收货人所在市
  @JsonKey(name: 'deliveryCity')
  String get city;
  @override

  /// 收货人所在地区
  @JsonKey(name: 'deliveryArea')
  String get area;
  @override

  /// 收货人详细地址
  @JsonKey(name: 'deliveryAddress')
  String get address;
  @override

  /// 发货人编码
  @JsonKey(name: 'sendTeacherCode')
  String? get sendCode;
  @override

  /// 发货人名称
  @JsonKey(name: 'sendTeacherName')
  String? get sendName;
  @override

  /// 是否收费
  bool get ifNeedPay;
  @override

  /// 背景url
  @JsonKey(name: 'albumCoverUrl')
  String? get cover;
  @override

  /// 是否潜客
  bool get ifPotential;
  @override

  /// 购买须知
  String get payNotice;
  @override

  /// 是否已支付
  @JsonKey(name: 'payStatus')
  @Int2BoolJsonConverter()
  bool get isPaid;
  @override

  /// 家长手机号
  String? get parentPhone;
  @override

  /// 支付金额
  @JsonKey(name: 'payAmount')
  double get price;
  @override

  /// 快递单号
  String? get trackingNumber;
  @override

  /// 备注
  String get remark;
  @override

  /// 是否已发货
  @Int2BoolJsonConverter()
  @JsonKey(name: 'status')
  bool get isSend;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 发货时间
  @DateTimeJsonConverter()
  DateTime? get sendTime;
  @override

  /// 购买时间
  @DateTimeJsonConverter()
  DateTime? get buyTime;
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
  _$$PrintHistoryModelImplCopyWith<_$PrintHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
