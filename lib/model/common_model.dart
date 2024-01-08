import 'dart:math';

import 'package:components/log/global_log.dart';
import 'package:components/model/album_models.dart';
import 'package:components/model/converter/asset_entity_converter.dart';
import 'package:components/model/converter/childtask/resource_type_converter.dart';
import 'package:components/model/converter/content_type_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/string2int_converter.dart';
import 'package:components/model/media_model.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tencentcloud_cos_sdk_plugin/pigeon.dart';
import 'package:tencentcloud_cos_sdk_plugin/transfer_task.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

enum ListViewState {
  @JsonValue('idle')
  idle,
  @JsonValue('refresh')
  refresh,
  @JsonValue('loadMore')
  loadMore,
  @JsonValue('noMore')
  noMore,
}

enum PushCode {
  unknown('0000'),
  // 成长档案
  document('1001'),
  // 宝贝评估
  growUp('1002'),
  // 宝贝托管
  lateCare('1003'),
  // 共享课堂
  library('1004'),
  // 宝贝相册
  gallery('1005'),
  // 喂药申请
  medicine('1006'),
  // 宝贝接送
  pickUp('1007'),
  // 亲子作业详情
  childtaskDetail('100801'),
  // 亲子作业
  childtask('1008'),
  // 精彩瞬间
  clip('1009'),
  // 教学游戏
  weekPlan('1010'),
  // 宝贝考勤
  attendance('1011'),
  // 营养食谱
  recipes('1012'),
  // 校务账单
  bill('101401'),
  // 新生须知
  contract('1015'),
  // 通知公告
  notification('1016'),
  // 干货
  knowledge('1017'),
  // 问卷调查
  survey('101801'),
  // 430课程
  fothzo('1019'),
  // 托育
  childcare('1020'),
  // 保育
  conservation('1021'),

  /// 命令
  // 刷新通知
  refresh('refresh'),
  // 潜生转正
  regular('regular');

  final String sceneCode;
  const PushCode(this.sceneCode);
}

enum PushType {
  unknown,
  todo,
  notification,
  command,
}

// 表单组件必填标记位置
enum RequiredAlign {
  front,
  end,
}

// 性别
enum Gender {
  /// 男性
  @JsonValue('1')
  male('男'),

  /// 女性
  @JsonValue('2')
  female('女'),

  /// 未知
  @JsonValue('')
  unknown('');

  final String display;

  const Gender(this.display);
}

// 关系
enum Relationship {
  invalidate('其他', 0),
  father('爸爸', 1),
  mother('妈妈', 2),
  paternalGrandpa('爷爷', 3),
  paternalGrandma('奶奶', 4),
  maternalGrandpa('外公', 5),
  maternalGrandma('外婆', 6),
  paternalUncle('叔叔', 7),
  maternalUncle('舅舅', 8),
  paternalAunt('阿姨', 9),
  maternalAunt('姑妈', 10),
  other('其他', 11);

  final String display;
  final int req;
  const Relationship(this.display, this.req);
}

class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}

enum ContentType {
  /// 未知
  unknown,

  /// 图文
  text,

  /// 链接
  link,
}

/// 环境配置信息
@freezed
class ConfigModel with _$ConfigModel {
  const ConfigModel._();
  const factory ConfigModel({
    /// app h5页面地址
    @JsonKey(name: 'env.app.version') @Default('') String downloadUrl,

    /// h5地址前缀
    @JsonKey(name: 'env.app.kindh5.prefix') @Default('') String h5Prefix,

    /// app下载二维码地址
    @JsonKey(name: 'env.app.version.qrcode') @Default('') String qrCode,

    /// android下载地址
    @JsonKey(name: 'app.version.url') @Default('') String androidDownload,

    /// ios下载地址
    @JsonKey(name: 'app.ios.url') @Default('') String iosDownload,
  }) = _ConfigModel;

  factory ConfigModel.empty() => const ConfigModel();

  factory ConfigModel.fromJson(Map<String, Object?> json) =>
      _$ConfigModelFromJson(json);
}

/// 安全区域尺寸
@freezed
class SafeAreaConfig with _$SafeAreaConfig {
  const SafeAreaConfig._();
  const factory SafeAreaConfig({
    @Default(0) double left,
    @Default(0) double top,
    @Default(0) double right,
    @Default(0) double bottom,
  }) = _SafeAreaConfig;

  factory SafeAreaConfig.empty() => const SafeAreaConfig();

  factory SafeAreaConfig.fromJson(Map<String, Object?> json) =>
      _$SafeAreaConfigFromJson(json);
}

@freezed
class SelectedRegion with _$SelectedRegion {
  const SelectedRegion._();
  const factory SelectedRegion({
    /// 省份
    RegionModel? province,

    /// 城市
    RegionModel? city,
  }) = _SelectedRegion;

  bool get isEmpty => province?.isEmpty ?? true;
  String get address => '${province?.name ?? ''}${city?.name ?? ''}';

  factory SelectedRegion.empty() => const SelectedRegion();

  factory SelectedRegion.fromJson(Map<String, Object?> json) =>
      _$SelectedRegionFromJson(json);
}

@freezed
class RegionModel with _$RegionModel {
  const RegionModel._();
  const factory RegionModel({
    /// 地区编码
    String? code,

    /// 地区名称
    String? name,

    /// 地区所属区域
    @Default([]) List<RegionModel> children,
  }) = _RegionModel;

  bool get isEmpty => (code?.isEmpty ?? true) && (name?.isEmpty ?? true);

  factory RegionModel.fromJson(Map<String, Object?> json) =>
      _$RegionModelFromJson(json);
}

@freezed
class DictModel with _$DictModel {
  const DictModel._();
  const factory DictModel({
    /// 字典数据id
    @JsonKey(name: 'dictDataId') @String2IntJsonConverter() required int id,

    /// 字典代码
    @JsonKey(name: 'dictDataCode')
    @String2IntJsonConverter()
    @Default('')
    String code,

    /// 字典中文名称
    @JsonKey(name: 'dictValue') @Default('') String value,

    /// 字典英文名称
    @JsonKey(name: 'dictEngValue') @Default('') String engValue,

    /// 备注
    @Default('') String remark,

    /// 排序
    @String2IntJsonConverter() @Default(0) int seq,
  }) = _DictModel;

  bool get validate => id != -1;

  factory DictModel.empty() => const DictModel(id: -1);

  factory DictModel.fromJson(Map<String, Object?> json) =>
      _$DictModelFromJson(json);
}

@freezed
class KindergartenReq with _$KindergartenReq {
  const KindergartenReq._();
  const factory KindergartenReq({
    /// 省份
    String? province,

    /// 城市
    String? city,
  }) = _KindergartenReq;

  factory KindergartenReq.fromJson(Map<String, Object?> json) =>
      _$KindergartenReqFromJson(json);
}

@freezed
class KindergartenWrapper with _$KindergartenWrapper {
  const KindergartenWrapper._();
  const factory KindergartenWrapper({
    // 地区
    required RegionModel region,
    // 园所列表
    required List<KindergartenModel> schools,
  }) = _KindergartenWrapper;

  factory KindergartenWrapper.fromJson(Map<String, Object?> json) =>
      _$KindergartenWrapperFromJson(json);
}

@freezed
class KindergartenModel with _$KindergartenModel {
  const KindergartenModel._();
  const factory KindergartenModel({
    /// 园所名称
    String? schoolName,

    /// 园所编码
    String? schoolCode,

    /// 园所所在省份
    String? province,

    /// 园所所在城市
    String? city,

    /// 园所地址
    String? address,
  }) = _KindergartenModel;

  String get location => '${province ?? ''}${city ?? ''}${address ?? ''}';

  factory KindergartenModel.fromJson(Map<String, Object?> json) =>
      _$KindergartenModelFromJson(json);
}

@freezed
class PromotionModel with _$PromotionModel {
  const PromotionModel._();
  const factory PromotionModel({
    /// 园所编码
    required String schoolCode,

    /// 园所名称
    @Default('') String schoolName,

    /// 园所所在省份
    String? province,

    /// 园所所在城市
    String? city,

    /// 园所地址
    String? address,

    /// 内容方式
    @ContentTypeJsonConverter()
    @Default(ContentType.unknown)
    ContentType contentType,

    /// 图片链接(逗号隔开)
    @JsonKey(name: 'picture') String? imgStr,

    /// 链接
    String? url,

    /// 园所介绍
    @Default('') String introduce,

    /// 师资介绍
    @Default('') String teacherIntroduce,

    /// 备注
    @Default('') String remark,

    /// 最后一次修改人
    String? updateUserName,
  }) = _PromotionModel;

  List<String> get pictures =>
      imgStr != null && imgStr!.isNotEmpty ? imgStr!.split(',') : List.empty();

  String get location => '${province ?? ''}${city ?? ''}${address ?? ''}';

  factory PromotionModel.fromJson(Map<String, Object?> json) =>
      _$PromotionModelFromJson(json);
}

@freezed
class SendSmsCodeReq with _$SendSmsCodeReq {
  const SendSmsCodeReq._();
  const factory SendSmsCodeReq({
    /// 手机号码
    required String mobile,
  }) = _SendSmsCodeReq;

  factory SendSmsCodeReq.fromJson(Map<String, Object?> json) =>
      _$SendSmsCodeReqFromJson(json);
}

@freezed
class SendSmsCodeModel with _$SendSmsCodeModel {
  const SendSmsCodeModel._();
  const factory SendSmsCodeModel({
    /// 手机号码
    required String mobile,

    /// 发送结果
    @Default(false) bool sendResult,
  }) = _SendSmsCodeModel;

  factory SendSmsCodeModel.fromJson(Map<String, Object?> json) =>
      _$SendSmsCodeModelFromJson(json);
}

enum FileType {
  @JsonValue('none')
  none,
  @JsonValue('image')
  image,
  @JsonValue('video')
  video,
  @JsonValue('audio')
  audio,
  @JsonValue('file')
  file,
}

/// 参考[CancelToken]实现的上传控制类，以保证上传接口调用与dio一致
class UploadCancelToken {
  bool completed = false;
  bool canceled = false;

  TransferTask? transferTask;
  CosXmlClientException? clientException;
  CosXmlServiceException? serviceException;

  void success() {
    if (canceled) {
      logError('上传任务在取消前完成完成了: ${transferTask?.toString()}');
    }
    completed = true;
  }

  bool get isCanceled => canceled;

  void cancel([Object? reason]) async {
    if (completed) return;
    canceled = true;
    logWarning('上传任务: ${transferTask?.toString()}取消: $reason');
    await transferTask?.cancel();
  }
}

/// 上传文件
@unfreezed
class UploadFile with _$UploadFile {
  UploadFile._();
  factory UploadFile({
    @JsonKey(includeToJson: false) @Default('') String local,

    /// 本地资源(兼容AssetEntity)
    @JsonKey(includeToJson: false)
    @AssetEntityJsonConverter()
    AssetEntity? asset,

    /// 服务器地址
    @Default('') String remote,

    /// 是否缓存
    @JsonKey(includeToJson: false) @Default(false) bool temp,

    /// 文件类型
    @JsonKey(includeToJson: false) @Default(FileType.none) FileType type,

    /// 是否已上传
    @JsonKey(includeToJson: false) @Default(false) uploaded,
  }) = _UploadFile;

  /// 优先获取网络地址
  String get availableUrl => remote.isEmpty ? local : remote;

  factory UploadFile.fromRemote(FileType type, String url) =>
      UploadFile(local: '', remote: url, type: type, uploaded: true);
  factory UploadFile.fromAsset(FileType type, AssetEntity asset) =>
      UploadFile(local: '', asset: asset, type: type, uploaded: true);
  factory UploadFile.fromJson(Map<String, Object?> json) =>
      _$UploadFileFromJson(json);
}

// 轮播图
@freezed
class AdsModel with _$AdsModel {
  const AdsModel._();
  const factory AdsModel({
    required int id,

    /// 图片链接
    required String imgUrl,

    /// 标题名称
    @Default('') String title,

    /// 展示顺序
    @Default(0) int seq,
  }) = _AdsModel;

  factory AdsModel.fromJson(Map<String, Object?> json) =>
      _$AdsModelFromJson(json);
}

// 日期范围
@freezed
class WeekdayRange with _$WeekdayRange {
  const WeekdayRange._();
  const factory WeekdayRange({
    /// 起始日期
    required DateTime startDate,

    /// 结束日期
    required DateTime endDate,
  }) = _WeekdayRange;

  factory WeekdayRange.empty() =>
      WeekdayRange(startDate: DateTime.now(), endDate: DateTime.now());

  factory WeekdayRange.fromJson(Map<String, Object?> json) =>
      _$WeekdayRangeFromJson(json);
}

@freezed
class ResourceModel with _$ResourceModel {
  const ResourceModel._();
  const factory ResourceModel({
    /// 资源类型
    @String2ResourceTypeJsonConverter() @Default(FileType.none) FileType type,

    /// 资源链接
    @Default('') String url,
  }) = _ResourceModel;

  factory ResourceModel.fromJson(Map<String, Object?> json) =>
      _$ResourceModelFromJson(json);
}

@freezed
class ResourceWrapper with _$ResourceWrapper {
  const ResourceWrapper._();
  const factory ResourceWrapper({
    /// 资源url
    required String url,

    /// 是否视频文件
    required bool isVideo,
    required String heroTag,
  }) = _ResourceWrapper;

  factory ResourceWrapper.fromClipResource(
      ClipResourceModel resource, String heroTag) {
    return ResourceWrapper(
      url: resource.url,
      isVideo: resource.isVideo,
      heroTag: heroTag,
    );
  }

  factory ResourceWrapper.fromPhotoResource(
    PhotoResourceModel resource,
    String heroTag,
  ) {
    return ResourceWrapper(
      url: resource.url,
      isVideo: resource.isVideo,
      heroTag: heroTag,
    );
  }

  factory ResourceWrapper.fromImage(String url, [String? heroTag]) {
    return ResourceWrapper(
      url: url,
      isVideo: false,
      heroTag: heroTag ?? '${Random().nextInt(100000)}/$url',
    );
  }

  factory ResourceWrapper.fromVideo({required String url, String? heroTag}) {
    return ResourceWrapper(
      url: url,
      isVideo: true,
      heroTag: heroTag ?? '${Random().nextInt(100000)}/$url',
    );
  }

  ImageWrapper toImageWrapper() => ImageWrapper(url: url, heroTag: heroTag);

  factory ResourceWrapper.fromJson(Map<String, Object?> json) =>
      _$ResourceWrapperFromJson(json);
}

@freezed
class ContactReq with _$ContactReq {
  const ContactReq._();
  const factory ContactReq({
    /// 宝贝姓名
    String? studentName,

    /// 家长姓名
    String? parentName,

    /// 联系电话
    String? contactNumber,

    /// 生日
    String? studentBirthDate,

    /// 固定值 online_delivery
    required String? channelLv1,

    /// 固定值 bo_xiao_sheng
    required String? channelLv2,

    /// 学校编码
    String? schoolCode,
  }) = _ContactReq;

  factory ContactReq.fromJson(Map<String, Object?> json) =>
      _$ContactReqFromJson(json);
}

@freezed
class AppVersionModel with _$AppVersionModel {
  const AppVersionModel._();
  const factory AppVersionModel({
    /// 安卓版本下载地址
    @Default('') String downloadUrl,

    /// 是否强制更新
    @JsonKey(name: 'forceUpdateFlag') @Default(false) bool forceUpdate,

    /// 是否有更新的版本
    @Default(false) bool hasUpdate,

    /// 后台最新版本号
    @JsonKey(name: 'latestVersionNo') @Default(0) int latestVersion,

    /// 上传时间
    @DateTimeJsonConverter() DateTime? uploadTime,

    /// 更新描述
    @Default('') String versionDesc,
  }) = _AppVersionModel;

  String get versionString {
    final int major = latestVersion ~/ 10000;
    final int minor = (latestVersion - major * 10000) ~/ 100;
    final int patch = latestVersion - major * 10000 - minor * 100;
    return '$major.$minor.$patch';
  }

  factory AppVersionModel.empty() => const AppVersionModel();

  factory AppVersionModel.fromJson(Map<String, Object?> json) =>
      _$AppVersionModelFromJson(json);
}

/// h5跳转原生路由参数
@freezed
class H5NativeRoute with _$H5NativeRoute {
  const H5NativeRoute._();
  const factory H5NativeRoute({
    /// 原生路径
    @JsonKey(name: 'page') String? route,

    /// 退出当前页面
    @Default(false) bool exit,

    /// 页面参数
    Map<String, dynamic>? parameters,
  }) = _H5NativeRoute;

  Map<String, String> get toRouteParameters {
    final map = <String, String>{};
    parameters?.forEach((key, value) {
      map[key] = value.toString();
    });
    return map;
  }

  factory H5NativeRoute.fromJson(Map<String, Object?> json) =>
      _$H5NativeRouteFromJson(json);
}

/// 腾讯云上传临时密钥
@freezed
class TencentCloudCredentials with _$TencentCloudCredentials {
  const TencentCloudCredentials._();
  const factory TencentCloudCredentials({
    /// 临时密钥id
    String? tmpSecretId,

    /// 临时密钥key
    String? tmpSecretKey,

    /// 临时密钥token
    String? token,
  }) = _TencentCloudCredentials;

  bool get validate =>
      tmpSecretId != null && tmpSecretKey != null && token != null;

  factory TencentCloudCredentials.fromJson(Map<String, Object?> json) =>
      _$TencentCloudCredentialsFromJson(json);
}

/// 腾讯云上传所需认证
@freezed
class TencentCloudTempToken with _$TencentCloudTempToken {
  const TencentCloudTempToken._();
  const factory TencentCloudTempToken({
    /// 到期时间字符串
    DateTime? expiration,

    /// 到期时间
    @Default(0) int expiredTime,

    /// 请求id
    String? requestId,

    /// 密钥
    TencentCloudCredentials? credentials,
  }) = _TencentCloudTempToken;

  factory TencentCloudTempToken.fromJson(Map<String, Object?> json) =>
      _$TencentCloudTempTokenFromJson(json);
}
