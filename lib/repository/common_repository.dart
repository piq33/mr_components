import 'dart:async';
import 'dart:io';

import 'package:bsl/api/service/common_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/model/zhaojiao_response.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CommonRepository {
  CommonRepository(this.service);

  final CommonRemoteService service;

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 获取环境配置
  Future<BslResponse<ConfigModel>> fetchConfig({
    required String paramKey,
    CancelToken? cancelToken,
  }) {
    return service.api.fetchConfig(
      paramKey: paramKey,
      cancelToken: cancelToken,
    );
  }

  /// 获取地区信息
  Future<ZhaoJiaoResponse<List<RegionModel>>> fetchRegion({
    /// 省份名称
    String? provinceName,
    CancelToken? cancelToken,
  }) {
    return service.api.fetchRegion(
      provinceName: provinceName,
      cancelToken: cancelToken,
    );
  }

  /// 获取统一字典
  Future<BslResponse<List<DictModel>>> fetchDictData(
    /// 字典类型
    String dictCodeType, [
    CancelToken? cancelToken,
  ]) {
    return service.api.fetchDictData(
      dictCodeType: dictCodeType,
      cancelToken: cancelToken,
    );
  }

  /// 获取短信验证码
  Future<BslResponse<SendSmsCodeModel>> sendSmsCode(
    String phone,
    CancelToken? cancelToken,
  ) {
    final req = SendSmsCodeReq(mobile: phone);
    return service.api.sendSmsCode(req, cancelToken);
  }

  /// 获取App嵌入页面配置
  Future<BslResponse<List<AppEntranceModel>>> fetchQuickLinkConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return service.api.fetchEntranceConfig(schoolCode, 1, cancelToken);
  }

  /// 获取App模块配置
  Future<BslResponse<List<AppEntranceModel>>> fetchSchoolModuleConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return service.api.fetchEntranceConfig(schoolCode, 2, cancelToken);
  }

  /// 获取App底栏
  Future<BslResponse<List<AppEntranceModel>>> fetchBottomBarConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return service.api.fetchEntranceConfig(schoolCode, 3, cancelToken);
  }

  /// 获取App嵌入页面配置
  Future<BslResponse<List<AppEntranceModel>>> fetchQuickEntranceConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return service.api.fetchEntranceConfig(schoolCode, 4, cancelToken);
  }

  /// 获取app轮播图
  Future<BslResponse<List<AdsModel>>> fetchAds(CancelToken? cancelToken) {
    return service.api.fetchAds(cancelToken);
  }

  /// 单点登录H5页面时获取token
  Future<BslResponse<String?>> fetchTicketForKindergarten(
    CancelToken? cancelToken,
  ) {
    return service.api.fetchTicketForKindergarten(cancelToken);
  }

  /// 根据省市查询园所列表
  Future<BslResponse<List<KindergartenModel>>> fetchKindergartenList({
    /// 省份
    String? province,

    /// 城市
    String? city,
    CancelToken? cancelToken,
  }) {
    final req = KindergartenReq(province: province, city: city);
    return service.api.fetchKindergartenList(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 根据学校编码查询宣传信息
  Future<BslResponse<PromotionModel>> fetchPromotionBySchoolCode({
    required String schoolCode,
    CancelToken? cancelToken,
  }) {
    return service.api.fetchPromotionBySchoolCode(
      schoolCode: schoolCode,
      cancelToken: cancelToken,
    );
  }

  /// 获取联系方式
  Future<BslResponse<String>> addContact({
    /// 宝贝姓名
    String? studentName,

    /// 家长姓名
    String? parentName,

    /// 联系电话
    String? contactNumber,

    /// 生日
    DateTime? studentBirthDate,
    String channelLv1 = "online_delivery",
    String channelLv2 = "bo_xiao_sheng",

    /// 学校编码
    String? schoolCode,
    CancelToken? cancelToken,
  }) async {
    final req = ContactReq(
      studentName: studentName,
      parentName: parentName,
      contactNumber: contactNumber,
      studentBirthDate: studentBirthDate != null
          ? _dateFormat.format(studentBirthDate)
          : null,
      channelLv1: channelLv1,
      channelLv2: channelLv2,
      schoolCode: schoolCode,
    );
    return service.api.addContact(req: req, cancelToken: cancelToken);
  }

  /// 获取App版本
  Future<BslResponse<AppVersionModel>> fetchAppVersion(
    CancelToken? cancelToken,
  ) async {
    final system = Platform.isAndroid ? 'android' : 'ios';
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.buildNumber;
    return service.api.fetchAppVersion(system, version, cancelToken);
  }
}
