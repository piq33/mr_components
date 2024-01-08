import 'package:flutter/widgets.dart';

/// 当前是否为release模式
const bool release = bool.fromEnvironment('dart.vm.product');

/// 当前app在微信开发平台上的appid
const wxAppid = String.fromEnvironment('WxAppid');

/// 碧合支付小程序appid
const wxBillAppid = String.fromEnvironment('WxBillAppid');

const releaseDate = String.fromEnvironment('ReleaseDate');

/// 推送配置
const pushAppId = String.fromEnvironment('PushAppId');
const pushAppKey = String.fromEnvironment('PushAppKey');
const pushAppSecret = String.fromEnvironment('PushAppSecret');
const pushMasterSecret = String.fromEnvironment('PushMasterSecret');

/// 友盟配置
const umentAndroidKey = String.fromEnvironment('UmentAndroidKey');
const umentIosKey = String.fromEnvironment('UmentIosKey');

enum Env { DEV, UAT, PROD }

final Env env = switch (const String.fromEnvironment('Environment')) {
  'DEV' => Env.DEV,
  'UAT' => Env.UAT,
  'PROD' => Env.PROD,
  _ => Env.DEV,
};

const config = {
  Env.DEV: developConfig,
  Env.UAT: uatConfig,
  Env.PROD: productionConfig,
};

final Config appConfig = config[env]!;

@immutable
class Config {
  final String baseUrl;

  /// 推送前缀
  final String aliasPrefix;

  const Config({
    required this.baseUrl,
    required this.aliasPrefix,
  });
}

const Config developConfig = Config(
  baseUrl: "http://114.115.178.124:8000/",
  aliasPrefix: 'test',
);

const Config uatConfig = Config(
  baseUrl: "https://xs.brightscholar.net/",
  aliasPrefix: 'uat',
);

const Config productionConfig = Config(
  baseUrl: "https://xs.brightscholar.com/",
  aliasPrefix: '',
);
