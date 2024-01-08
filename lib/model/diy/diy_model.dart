import 'dart:convert';
import 'dart:math';

import 'package:components/log/global_log.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/string_list_converter.dart';
import 'package:components/model/diy/diy_json_model.dart';
import 'package:components/model/time_models.dart';
import 'package:components/util/diy/default_homepage.dart';
import 'package:components/util/diy_utils.dart';
import 'package:components/util/list_utils.dart';
import 'package:components/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diy_model.freezed.dart';
part 'diy_model.g.dart';

/// 首页样式, 与[defaultHomePages]中的顺序一致
/// custom时为自定义首页
enum HomepageStyle {
  @JsonValue(-1)
  blank,
  @JsonValue(0)
  custom,
  @JsonValue(1)
  style1,
  @JsonValue(2)
  style2,
  @JsonValue(3)
  style3,
  @JsonValue(4)
  style4,
}

enum DropdownType {
  share('分享'),
  edit('编辑'),
  delete('删除');

  final String display;
  const DropdownType(this.display);
}

enum ModuleType {
  @JsonValue('')
  unknown,
  @JsonValue('text')
  text,
  @JsonValue('pics')
  image,
}

enum DeliveryType {
  // 可选
  @JsonValue(0)
  selection('可选'),
  // 自提
  @JsonValue(1)
  self('自提'),
  // 快递
  @JsonValue(2)
  express('快递');

  final String display;
  const DeliveryType(this.display);
}

enum PrintSupport {
  // 仅支持快递
  @JsonValue(1)
  express,
  // 仅支持自提
  @JsonValue(2)
  self,
  // 快递自提都支持
  @JsonValue(3)
  both,
}

DeliveryType parseDeliveryType(int index) {
  switch (index) {
    case 0:
      return DeliveryType.selection;
    case 1:
      return DeliveryType.self;
    case 2:
      return DeliveryType.express;
    default:
      return DeliveryType.selection;
  }
}

@freezed
class TemplateDetailModel with _$TemplateDetailModel {
  const TemplateDetailModel._();
  const factory TemplateDetailModel({
    /// 模板id -1表示没有使用模板
    String? templateId,

    /// 相册id
    String? studentAlbumId,

    /// 相册内容
    @JsonKey(name: 'albumContent') @Default('') String content,

    /// 封面url
    @JsonKey(name: 'albumCoverUrl') String? cover,

    ///	标签
    @JsonKey(name: 'albumTag', unknownEnumValue: CatalogType.unknown)
    @Default(CatalogType.unknown)
    CatalogType catalogType,

    /// 相册标题
    @JsonKey(name: 'albumTitle') @Default('') String title,

    /// 相册样式
    @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
    @Default(HomepageStyle.custom)
    HomepageStyle homepageStyle,

    /// 背景url
    String? backgroundUrl,

    /// 学生id
    int? studentId,

    /// 学生姓名
    @Default('') String studentName,

    /// 学生编码
    String? studentCode,

    /// 学年学期编码
    String? yearTermCode,

    /// 学校编码
    @Default('') String schoolCode,

    /// 班级编码
    @Default('') String classCode,

    /// 年级编码
    @Default('') String gradeCode,

    /// 课程编码
    @Default('') String courseCode,

    /// 学段编码
    @Default('') String phaseCode,

    /// 是否有配置
    @Default(false) bool hasConfig,

    /// 是否使用背景音乐
    @JsonKey(name: 'ifBackgroundMusic') @Default(false) bool useMusic,

    /// 是否收费
    @Default(false) bool ifNeedPay,

    /// 购买须知
    @Default('') String payNotice,

    /// 付费金额
    @JsonKey(name: 'paymentAmount') @Default(0.0) double price,

    /// 是否潜客
    @Default(false) bool ifPotential,

    /// 潜客id
    @JsonKey(name: 'potentialStudentId') int? potentialId,

    /// 是否可打印
    @JsonKey(name: 'printSupport', unknownEnumValue: PrintSupport.both)
    @Default(PrintSupport.both)
    PrintSupport printSupport,

    /// 是否使用了模板
    @Default(false) bool ifUseTemplate,

    /// 背景音乐id
    String? musicId,

    /// 背景音乐地址
    String? musicUrl,

    /// 不使用模板的照片列表
    @String2ListJsonConverter()
    @JsonKey(name: 'photoJson')
    @Default([])
    List<String> photoList,

    /// 对应模板
    @JsonKey(name: 'diyAppTemplateDetailVO') TemplateModel? template,

    /// 已发布页面
    @JsonKey(name: 'pageInstanceList', includeToJson: false)
    @Default([])
    List<PageInstanceJsonModel> instanceList,

    /// 模板json
    String? templateJson,

    /// 快递类型
    @JsonKey(unknownEnumValue: DeliveryType.express)
    @Default(DeliveryType.express)
    DeliveryType deliveryType,

    /// 分享链接
    String? shareUrl,

    /// 业务状态
    int? status,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _TemplateDetailModel;

  bool get validate =>
      (studentAlbumId?.isNotEmpty ?? false) && (shareUrl?.isNotEmpty ?? false);
  double get realPrice => max(price, 0);

  factory TemplateDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateDetailModelFromJson(json);
}

@freezed
class PageInstanceJsonModel with _$PageInstanceJsonModel {
  const PageInstanceJsonModel._();
  const factory PageInstanceJsonModel({
    /// 相册id
    String? studentAlbumId,

    /// 模板id
    String? templateId,

    /// 页面id
    String? pageId,

    /// 实例id
    String? instanceId,

    /// 学校编码
    String? schoolCode,

    /// 页面对象
    @JsonKey(name: 'moduleJson') PageJsonModel? page,

    /// 页面对应类型, 后端用于区分页面
    @JsonKey(name: 'albumTemplateType') int? pageIndex,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 业务状态
    int? status,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _PageInstanceJsonModel;

  factory PageInstanceJsonModel.fromJson(Map<String, dynamic> json) {
    PageJsonModel? pageJson;
    var moduleJson = json['moduleJson'];
    if (moduleJson != null && moduleJson.isNotEmpty) {
      try {
        pageJson = PageJsonModel.fromJson(
          jsonDecode(moduleJson) as Map<String, dynamic>,
        );
      } catch (e, stackTrace) {
        logError('解析页面json异常: ${e.toString()}', e, stackTrace);
        pageJson = null;
      }
    }
    return PageInstanceJsonModel(
      studentAlbumId: json['studentAlbumId'] as String?,
      templateId: json['templateId'] as String?,
      pageId: json['pageId'] as String?,
      instanceId: json['instanceId'] as String?,
      schoolCode: json['schoolCode'] as String?,
      page: pageJson,
      pageIndex: json['albumTemplateType'] as int?,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      status: json['status'] as int?,
      createTime: const DateTimeJsonConverter().fromJson(json['createTime']),
      updateTime: const DateTimeJsonConverter().fromJson(json['updateTime']),
    );
  }
}

@freezed
class PaymentModel with _$PaymentModel {
  const PaymentModel._();
  const factory PaymentModel({
    /// 交易id
    required int paymentId,

    /// 相册id
    String? studentAlbumId,

    /// 收货人
    @Default('') String consignee,

    /// 收货人手机号
    @JsonKey(name: 'consigneeMobile') @Default('') String mobile,

    /// 收货人所在省
    @JsonKey(name: 'deliveryProvince') @Default('') String province,

    /// 收货人所在市
    @JsonKey(name: 'deliveryCity') @Default('') String city,

    /// 收货人所在地区
    @JsonKey(name: 'deliveryArea') @Default('') String area,

    /// 收货人详细地址
    @JsonKey(name: 'deliveryAddress') @Default('') String address,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}

@freezed
class PurchaseReq with _$PurchaseReq {
  const PurchaseReq._();
  const factory PurchaseReq({
    /// 购买记录id
    String? buyId,

    /// 相册id
    String? studentAlbumId,

    /// 收货人
    @Default('') String consignee,

    /// 收货人手机号
    @JsonKey(name: 'consigneeMobile') @Default('') String mobile,

    /// 收货人所在省
    @JsonKey(name: 'deliveryProvince') @Default('') String province,

    /// 收货人所在市
    @JsonKey(name: 'deliveryCity') @Default('') String city,

    /// 收货人所在地区
    @JsonKey(name: 'deliveryArea') @Default('') String area,

    /// 收货人详细地址
    @JsonKey(name: 'deliveryAddress') @Default('') String address,

    /// 发货类型
    @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
    @Default(DeliveryType.self)
    DeliveryType deliveryType,
  }) = _PurchaseReq;

  factory PurchaseReq.fromJson(Map<String, dynamic> json) =>
      _$PurchaseReqFromJson(json);
}

@freezed
class PurchaseResponse with _$PurchaseResponse {
  const PurchaseResponse._();
  const factory PurchaseResponse({
    /// 订单编号
    String? billNo,
  }) = _PurchaseResponse;

  factory PurchaseResponse.fromJson(Map<String, dynamic> json) =>
      _$PurchaseResponseFromJson(json);
}

/// 后端返回的原始数据类
/// 记录了模板的所有信息
/// 在app渲染时, 需要解析为[TemplateJsonModel]
@freezed
class TemplateModel with _$TemplateModel {
  const TemplateModel._();
  const factory TemplateModel({
    /// 封面url
    @JsonKey(name: 'albumCoverUrl') String? cover,

    /// 相册名称
    @JsonKey(name: 'albumName') @Default('') String name,

    /// 相册样式
    @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
    @Default(HomepageStyle.custom)
    HomepageStyle homepageStyle,

    /// 相册翻页样式
    @JsonKey(name: 'toggleEffect', unknownEnumValue: PageTransitionType.flip)
    @Default(PageTransitionType.flip)
    PageTransitionType transition,

    /// 自定义背景url
    @JsonKey(name: 'backgroundUrl') String? customBackgroundUrl,

    /// 是否使用背景音乐
    @JsonKey(name: 'ifBackgroundMusic') @Default(false) bool music,

    /// 是否适用于潜客
    @JsonKey(name: 'ifSuitPotential') @Default(false) bool potentialEnable,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 背景音乐id
    String? musicId,

    /// 背景音乐url
    String? musicUrl,

    /// 业务状态
    int? status,

    /// 模板id
    String? templateId,

    /// 模板名称
    @Default('') String templateName,

    /// 使用人数
    @Default(0) int usePeople,

    /// 相册页列表
    @JsonKey(name: 'albumPageList', includeToJson: false)
    @Default([])
    List<TemplatePageModel> pageList,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _TemplateModel;

  TemplateJsonModel get template {
    final list = List<PageJsonModel>.empty(growable: true);
    for (var page in pages) {
      final json = page.page;
      if (json != null) list.add(json);
    }
    return TemplateJsonModel(
      templateId: templateId,
      transition: transition,
      pages: list,
    );
  }

  /// 返回包含首页的所有页面
  List<TemplatePageModel> get pages {
    final homepage = parseHomepage(homepageStyle);
    if (homepage == null) return pageList;

    // 检查返回的页面里是否包含首页
    TemplatePageModel? homepageModel = pageList.firstWhereOrNull(
      (element) => element.pageId == '0',
    );
    if (homepageModel != null) return pageList;

    final background = homepage.background;
    final backgroundUrl = homepageStyle == HomepageStyle.custom
        ? customBackgroundUrl
        : background is ResourceImageValue
            ? background.value
            : '';
    // 根据模板信息填充首页资源
    for (final resource in homepage.resources) {
      // 新页面资源为空则初始化为图片资源
      resource.data ??= ResourceImageValue();

      final data = resource.data;
      switch (data) {
        case ResourceTextValue():
          data.value = name;
          break;
        case ResourceImageValue():
          data.type = ResourceValueType.url;
          data.value = cover;
          break;
        default:
          break;
      }
    }
    homepageModel = TemplatePageModel(
      pageId: '0',
      templateId: templateId,
      picUrl: cover,
      original: homepage.copyWith(
        pageId: '0',
        background: ResourceImageValue(
          type: ResourceValueType.url,
          value: backgroundUrl,
        ),
      ),
      homepageStyle: homepageStyle,
      pageIndex: homepage.pageIndex,
      backgroundUrl: backgroundUrl,
      createTime: createTime,
      updateTime: updateTime,
    );
    return [homepageModel, ...pageList];
  }

  factory TemplateModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateModelFromJson(json);
}

@freezed
class BackendModuleModel with _$BackendModuleModel {
  const BackendModuleModel._();
  const factory BackendModuleModel({
    /// 模块类型
    @Default(ModuleType.unknown) ModuleType? moduleType,

    /// 初始图片
    @Default([]) List<String> pics,

    /// 初始文字
    @Default('') String text,
  }) = _BackendModuleModel;

  factory BackendModuleModel.fromJson(Map<String, dynamic> json) =>
      _$BackendModuleModelFromJson(json);
}

@freezed
class TemplatePageModel with _$TemplatePageModel {
  const TemplatePageModel._();
  const factory TemplatePageModel({
    /// 页面对应类型, 后端用于区分页面
    @JsonKey(name: 'albumTemplateType') @Default(-1) int pageIndex,

    /// 页面id -1 => 新增的页面 0 => 首页
    @Default('-1') String pageId,

    /// 模板id
    String? templateId,

    /// 缩略图url
    String? picUrl,

    /// 后端模块配置
    @Default([]) List<BackendModuleModel> modules,

    /// 模板对应的原始页面
    @JsonKey(name: 'appJsonObj') PageJsonModel? original,

    /// 相册样式
    @JsonKey(name: 'backgroundStyle', unknownEnumValue: HomepageStyle.blank)
    @Default(HomepageStyle.custom)
    HomepageStyle homepageStyle,

    /// 背景url
    String? backgroundUrl,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 业务状态
    int? status,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _TemplatePageModel;

  /// 获取可被app解析的json页面对象
  PageJsonModel? get page {
    final isHomePage = original?.homePage ?? false;
    if (isHomePage) return original;

    final homepage = parseHomepage(homepageStyle);
    Color? mainColor;

    if (homepage == null) {
      /// 若没有home页面时, 生成一个随机首页并提取其主题颜色
      final r = Random();
      final homepages = defaultHomePages();
      final index = r.nextInt(homepages.length);
      mainColor = homepages[index].mainColor;
    } else {
      mainColor = homepage.mainColor;
    }

    final originalResources = original?.resources ?? [];
    final size = originalResources.length;
    final resources = List<PageResource>.empty(growable: true);
    for (var i = 0; i < size; i++) {
      final resource = originalResources[i];
      // 看是否有对应的module
      final module = i < modules.length ? modules[i] : null;
      resources.add(resource.setup(module: module, mainColor: mainColor));
    }

    // 同步数据信息到json对象中
    return original?.copyWith(
      pageId: pageId,
      pageIndex: pageIndex,
      mainColor: mainColor,
      background: (backgroundUrl?.isNotEmpty ?? false)
          ? ResourceImageValue(
              type: ResourceValueType.url,
              value: backgroundUrl,
            )
          : homepage?.background ??
              // 当没有任何背景时, 使用纯白背景
              ResourceImageValue(
                type: ResourceValueType.color,
                value: Colors.white.toHex(leadingHashSign: false),
              ),
      resources: resources,
    );
  }

  factory TemplatePageModel.fromJson(Map<String, dynamic> json) =>
      _$TemplatePageModelFromJson(json);
}

@unfreezed
class DiyProductModel with _$DiyProductModel {
  const DiyProductModel._();
  factory DiyProductModel({
    /// 相册标题
    String? title,

    /// 相册使用的音乐
    MusicModel? music,

    /// 相册模板
    TemplateJsonModel? template,
  }) = _DiyProductModel;

  factory DiyProductModel.fromTemplate(TemplateModel template) {
    final music = template.musicId == null || template.musicId == ''
        ? MusicModel.empty()
        : MusicModel(musicId: template.musicId, url: template.musicUrl);
    return DiyProductModel(
      title: template.name,
      music: music,
      template: template.template,
    );
  }

  factory DiyProductModel.fromTemplateDetail(TemplateDetailModel detail) {
    final music = detail.useMusic
        ? MusicModel(musicId: detail.musicId, url: detail.musicUrl)
        : MusicModel.empty();

    // 将实例json转化为实际页面
    final pages = List<PageJsonModel>.empty(growable: true);
    final instances = detail.instanceList;
    for (var instance in instances) {
      final json = instance.page;
      // 若页面元素为空,将其初始化为图片元素
      for (var resource in json?.resources ?? []) {
        resource.data ??= ResourceImageValue();
      }

      if (json != null) pages.add(json);
    }

    // 将 photoList 转化为页面
    final photoList = detail.photoList;
    for (var photo in photoList) {
      pages.add(
        PageJsonModel(
          resources: [
            PageResource(
              margin: REdgeInsets.only(
                left: 10,
                top: 20,
                right: 10,
                bottom: 128,
              ),
              // 避免透明底
              background: ResourceImageValue(
                type: ResourceValueType.color,
                value: Colors.white.toHex(leadingHashSign: false),
              ),
              box: PageBox(borderRadius: 8.r),
              data: ResourceImageValue(
                type: ResourceValueType.url,
                value: photo,
              ),
            ),
          ],
        ),
      );
    }
    // 检查是否有首页, 若没有则根据返回的模板信息生成一个首页
    if (!pages.any((page) => page.homePage)) {
      var home = parseHomepage(detail.homepageStyle);
      if (home != null) {
        home = home.copyWith(
          pageId: '0',
          pageIndex: 0,
          homePage: true,
        );
        pages.insert(0, home);
      }

      // 填充首页资源
      for (var resource in home?.resources ?? []) {
        final data = resource.data;
        switch (data) {
          case ResourceTextValue():
            data.value = detail.title;
            break;
          case ResourceImageValue():
            data.value = detail.backgroundUrl;
            break;
          default:
            break;
        }
      }
    }

    final template = detail.template;
    var templateJson = template?.template;
    templateJson ??= TemplateJsonModel(
      templateId: detail.templateId,
      transition: template?.transition ?? PageTransitionType.flip,
    );
    templateJson = templateJson.copyWith(pages: pages);
    return DiyProductModel(
      title: detail.title,
      music: music,
      template: templateJson,
    );
  }

  /// 将模板首页标题同步到title
  void syncTitle() {
    final homepage = template?.pages.firstWhereOrNull((page) => page.homePage);
    if (homepage == null) return;

    for (var resource in homepage.resources) {
      final data = resource.data;
      if (data is ResourceTextValue) {
        title = data.value;
        return;
      }
    }
  }

  bool get validate =>
      template != null && (template?.pages.isNotEmpty ?? false);

  factory DiyProductModel.fromJson(Map<String, dynamic> json) =>
      _$DiyProductModelFromJson(json);
}

@freezed
class DiyPageReq with _$DiyPageReq {
  const DiyPageReq._();
  const factory DiyPageReq({
    /// 页面id
    String? pageId,

    /// 页面对应类型, 后端用于区分页面
    @JsonKey(name: 'albumTemplateType') int? pageIndex,

    /// 页面 json
    String? moduleJson,
  }) = _DiyPageReq;

  factory DiyPageReq.fromJson(Map<String, dynamic> json) =>
      _$DiyPageReqFromJson(json);
}

@freezed
class DiyProductReq with _$DiyProductReq {
  const DiyProductReq._();
  const factory DiyProductReq({
    /// 模板id
    String? templateId,

    /// 相册id
    String? studentAlbumId,

    /// 相册内容
    @JsonKey(name: 'albumContent') String? content,

    /// albumTag
    @JsonKey(name: 'albumTag') CatalogType? catalogType,

    /// 相册标题
    @JsonKey(name: 'albumTitle') String? title,

    /// 相册封面
    @JsonKey(name: 'albumCoverUrl') String? cover,

    /// 是否使用音乐
    @JsonKey(name: 'ifBackgroundMusic') bool? useMusic,

    /// 背景音乐id
    String? musicId,

    /// 照片列表
    List<String>? photoList,

    /// 页面列表
    List<DiyPageReq>? pageList,
  }) = _DiyProductReq;

  factory DiyProductReq.fromJson(Map<String, dynamic> json) =>
      _$DiyProductReqFromJson(json);
}

@freezed
class MusicModel with _$MusicModel {
  const MusicModel._();
  const factory MusicModel({
    /// 音乐id
    String? musicId,

    /// 音乐名称
    @JsonKey(name: 'musicName') @Default('') String title,

    /// 音乐url
    @JsonKey(name: 'musicUrl') String? url,

    /// 业务状态
    int? status,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _MusicModel;

  factory MusicModel.empty() => const MusicModel(musicId: '-1');

  bool get empty => musicId == null || musicId == '' || musicId == '-1';

  factory MusicModel.fromJson(Map<String, dynamic> json) =>
      _$MusicModelFromJson(json);
}

@freezed
class PrintHistoryModel with _$PrintHistoryModel {
  const PrintHistoryModel._();
  const factory PrintHistoryModel({
    /// 订单号
    String? orderNo,

    /// 学生相册id
    String? studentAlbumId,

    /// 模板id
    String? templateId,

    /// 相册名称
    @JsonKey(name: 'albumTitle') @Default('') String title,

    /// 相册模板名称
    @Default('') String templateName,

    /// 学生编号
    String? studentCode,

    /// 学生id
    int? studentId,

    /// 潜客id
    @JsonKey(name: 'potentialStudentId') int? potentialId,

    /// 账单编号
    String? billNo,

    /// 购买记录id
    String? buyId,

    /// 学生姓名
    @Default('') String studentName,

    /// 学年学期编码
    String? yearTermCode,

    /// 学校编码
    @Default('') String schoolCode,

    /// 班级编码
    @Default('') String classCode,

    /// 年级编码
    @Default('') String gradeCode,

    /// 课程编码
    @Default('') String courseCode,

    /// 学段编码
    @Default('') String phaseCode,

    /// 收货人
    @Default('') String consignee,

    /// 发货类型
    @JsonKey(name: 'sendType', unknownEnumValue: DeliveryType.self)
    @Default(DeliveryType.self)
    DeliveryType deliveryType,

    /// 收货人手机号
    @JsonKey(name: 'consigneeMobile') @Default('') String mobile,

    /// 收货人所在省
    @JsonKey(name: 'deliveryProvince') @Default('') String province,

    /// 收货人所在市
    @JsonKey(name: 'deliveryCity') @Default('') String city,

    /// 收货人所在地区
    @JsonKey(name: 'deliveryArea') @Default('') String area,

    /// 收货人详细地址
    @JsonKey(name: 'deliveryAddress') @Default('') String address,

    /// 发货人编码
    @JsonKey(name: 'sendTeacherCode') String? sendCode,

    /// 发货人名称
    @JsonKey(name: 'sendTeacherName') String? sendName,

    /// 是否收费
    @Default(false) bool ifNeedPay,

    /// 背景url
    @JsonKey(name: 'albumCoverUrl') String? cover,

    /// 是否潜客
    @Default(false) bool ifPotential,

    /// 购买须知
    @Default('') String payNotice,

    /// 是否已支付
    @JsonKey(name: 'payStatus')
    @Int2BoolJsonConverter()
    @Default(false)
    bool isPaid,

    /// 家长手机号
    String? parentPhone,

    /// 支付金额
    @JsonKey(name: 'payAmount') @Default(0.0) double price,

    /// 快递单号
    String? trackingNumber,

    /// 备注
    @Default('') String remark,

    /// 是否已发货
    @Int2BoolJsonConverter()
    @JsonKey(name: 'status')
    @Default(false)
    bool isSend,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 发货时间
    @DateTimeJsonConverter() DateTime? sendTime,

    /// 购买时间
    @DateTimeJsonConverter() DateTime? buyTime,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _PrintHistoryModel;

  factory PrintHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PrintHistoryModelFromJson(json);
}
