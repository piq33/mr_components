import 'package:components/event/version_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/common_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/me_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/common/custom_dialog.dart';
import 'package:components/widget/form/bsl_single_row_button_formfield.dart';
import 'package:components/widget/me/app_version.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key});

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  final _repository = Get.find<RepositoryService>().commonRepository;

  var _version = AppVersionModel.empty();

  CancelToken? _cancelToken;
  final _authService = Get.find<AuthService>();

  void _checkVersion() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchAppVersion(_cancelToken);
      logDebug('app版本检查结果: $r');
      if (!r.success) return;
      AppVersionModel version = r.data;
      if (!version.hasUpdate) {
        Fluttertoast.showToast(msg: '已是最新版本');
      } else {
        eventBus.fire(VersionEvent(version));
      }
      setState(() => _version = version);
    } catch (e, stackTrace) {
      logError('获取App版本异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: REdgeInsets.only(top: 18)),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          padding: REdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            color: meTheme?.cardBackground,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BslSingleRowButtonFormField(
                title: '隐私',
                titleStyle: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 13),
                onPressed: () => Get.toNamed('privacyPolicy'),
              ),
              Container(
                height: 1.p,
                color: mainTheme?.dividerColor,
                margin: REdgeInsets.symmetric(horizontal: 16),
              ),
              BslSingleRowButtonFormField(
                title: '通用',
                titleStyle: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 13),
                onPressed: () => Get.toNamed('setting/cache'),
              ),
            ],
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 25)),
        AppVersion(
          hasUpdate: _version.hasUpdate,
          onPressed: () => _checkVersion(),
        ),
        Padding(padding: REdgeInsets.only(top: 48)),
        Container(
          height: 46.h,
          margin: REdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: meTheme?.logoutButtonBackground,
            borderRadius: BorderRadius.circular(46.r),
          ),
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return Dialog(
                    backgroundColor: mainTheme?.dialogBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                    child: CustomDialog(
                      text: '确认退出当前账号吗?',
                      iconPath: Assets.common.warningIcon.path,
                      dismissible: false,
                      onConfirm: () async {
                        SmartDialog.showLoading(msg: '正在退出');
                        // 清理登录信息
                        _authService.emptyUserInfo();
                        await _authService.clearAuth();
                        // 跳转至登录页
                        Get.offAllNamed('login');
                        UmengCommonSdk.onProfileSignOff();
                        SmartDialog.dismiss();
                      },
                      onCancel: () => Navigator.of(context).pop(),
                    ),
                  );
                },
              );
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(46.r),
              ),
            ),
            child: Text(
              '退出登录',
              style: TextStyle(
                color: meTheme?.logoutButtonTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
