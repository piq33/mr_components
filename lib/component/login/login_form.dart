import 'package:components/config.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/controller/common/sms_controller.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/config_service.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/login_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/umeng/umeng.dart';
import 'package:components/util/global.dart';
import 'package:components/util/reg_utils.dart';
import 'package:components/widget/common/rounded_loading_button.dart';
import 'package:components/widget/login/login_contract.dart';
import 'package:components/widget/login/login_textfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SmsLoginField extends GetView<SmsController> {
  const _SmsLoginField({
    required this.phoneController,
    required this.textController,
    this.focusNode,
  });

  final TextEditingController phoneController;
  final TextEditingController textController;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return LoginTextField(
      focusNode: focusNode,
      controller: textController,
      title: '验证码',
      errorText: '验证码错误,请再输入一次',
      hintText: '请输入验证码',
      maxLength: 6,
      contentPadding: REdgeInsets.symmetric(horizontal: 12),
      suffixIcon: Container(
        margin: REdgeInsets.only(top: 4, right: 12, bottom: 4),
        child: Obx(() => _smsChild(context)),
      ),
      onValidator: (sms) => true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _smsChild(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    final smsStatus = controller.status.value;
    switch (smsStatus) {
      case SmsCodeButtonStatus.idle:
        return TextButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            final phone = phoneController.text;
            if (!phone.phoneNumber()) {
              Fluttertoast.showToast(msg: '请输入合法手机号');
              return;
            }
            controller.requestSms(phone);
          },
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            '获取验证码',
            style: TextStyle(
              color: loginTheme?.remindColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      case SmsCodeButtonStatus.countdown:
        return Container(
          width: 30.w,
          alignment: Alignment.center,
          child: Text(
            '${controller.timer.value.toString()}S',
            style: TextStyle(
              color: mainTheme?.textColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      case SmsCodeButtonStatus.retry:
        return TextButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            final phone = phoneController.text;
            if (!phone.phoneNumber()) {
              Fluttertoast.showToast(msg: '请输入合法手机号');
              return;
            }
            controller.requestSms(phone);
          },
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            '重试',
            style: TextStyle(
              color: loginTheme?.remindColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      default:
        return nil;
    }
  }
}

/// 操作默认等待毫秒数
const _controlWaiting = 500;

class LoginForm extends StatefulWidget {
  const LoginForm({this.contract, super.key});

  final bool? contract;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _configService = Get.find<ConfigService>();
  final _authService = Get.find<AuthService>();
  final _loginController = RoundedLoadingButtonController();
  // 测试账号
  // 家长: 15521197778/18124203640
  // 潜客: 18826222910
  final _phoneController =
      TextEditingController(text: env != Env.PROD ? '18777118519' : '');
  final _smsController = TextEditingController(
    // debug模式下根据环境自动填充登录密码
    text: kDebugMode
        ? env == Env.PROD
            ? '147789'
            : '123456'
        : '',
  );

  final _firstFocusNode = FocusNode();
  final _secondFocusNode = FocusNode();

  CancelToken? _cancelToken;
  late bool _check = widget.contract ?? false;

  @override
  void initState() {
    super.initState();
    final phone = _phoneController.text;
    // 清理登录信息
    _authService.emptyUserInfo();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      /// 若手机为空，则不需要弹出键盘
      if (phone.isNotEmpty) {
        FocusScope.of(context).requestFocus(FocusNode());
      } else {
        _firstFocusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    final loginButtonWidth = ScreenUtil().screenWidth - 64.w;
    return Container(
      padding: REdgeInsets.only(left: 36, top: 34, right: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoginTextField(
            focusNode: _firstFocusNode,
            controller: _phoneController,
            title: '手机号码',
            errorText: '手机号错误,请再输入一次',
            hintText: '请输入手机号',
            maxLength: 11,
            contentPadding: EdgeInsets.zero,
            prefixIcon: Container(
              width: 34.w,
              alignment: Alignment.center,
              padding: REdgeInsets.only(left: 4),
              child: Text(
                '+86',
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            suffixIcon: TextButton(
              onPressed: () {
                _phoneController.clear();
                FocusScope.of(context).requestFocus(_firstFocusNode);
              },
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60.r)),
                ),
              ),
              child: Assets.login.loginInputClearIcon.image(
                width: 12.w,
                height: 12.h,
              ),
            ),
            onValidator: (phone) => phone.isEmpty || phone.phoneNumber(),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            onSubmitted: (val) {
              _firstFocusNode.unfocus();
              _secondFocusNode.requestFocus();
            },
          ),
          Padding(padding: REdgeInsets.only(top: 10)),
          _SmsLoginField(
            focusNode: _secondFocusNode,
            phoneController: _phoneController,
            textController: _smsController,
          ),
          Padding(padding: REdgeInsets.only(top: 40)),
          RoundedLoadingButton(
            width: loginButtonWidth,
            height: 47.h,
            animateOnTap: false,
            controller: _loginController,
            background: loginTheme?.loginButtonBackground,
            successColor: loginTheme?.loginButtonBackground,
            failedColor: loginTheme?.loginButtonBackground,
            borderRadius: 47.r,
            elevation: 0,
            onPressed: () async {
              FocusScope.of(context).requestFocus(FocusNode());
              final phone = _phoneController.text;
              final smsCode = _smsController.text;
              if (phone.isEmpty) {
                Fluttertoast.showToast(msg: '登录手机号不能为空');
                return;
              }
              if (smsCode.isEmpty) {
                Fluttertoast.showToast(msg: '短信验证码不能为空');
                return;
              }
              if (!_check) {
                Fluttertoast.showToast(msg: '请先阅读并勾选协议');
                return;
              }
              Authentication? authentication;
              bool result = false;
              _loginController.start();
              try {
                // 先初始化配置才能进行数据请求
                await _configService.setup();
                _cancelToken = CancelToken();
                final r = await _authService.repository
                    .authBySmsCode(phone, smsCode, _cancelToken);
                result = r.success;
                final token = r.data.token ?? '';
                if (r.success && token.isNotEmpty) {
                  /// 将授权信息缓存到本地
                  authentication = await _authService.storeAuth(r.data);
                  // 请求用户身份信息
                  await _authService.fetchUserInfo();
                  _loginController.success();
                } else {
                  _loginController.error();
                }
                if (authentication == null) logDebug('缺少授权信息: ${r.toString()}');
              } catch (e) {
                logError('登录异常', e);
                _loginController.error();
              } finally {
                _cancelToken = null;
                await Future.delayed(
                  const Duration(milliseconds: _controlWaiting),
                );
                _loginController.stop();
                await Future.delayed(
                  const Duration(milliseconds: _controlWaiting),
                );
              }
              if (!result || authentication == null) return;
              final sp = await SharedPreferences.getInstance();
              sp.setBool(firstContractConfirmKey, false);
              reportUserLogin(authentication.phoneNumber);
              switch (authentication.userIdentity) {
                case UserIdentity.parent:
                case UserIdentity.visitor:
                  Get.offAllNamed('home');
                  break;
                case UserIdentity.teacher:
                  await _authService.clearAuth();
                  Fluttertoast.showToast(msg: '暂不支持教师登录');
                  logError('异常用户身份: $authentication');
                  break;
                case UserIdentity.invalidate:
                  await _authService.clearAuth();
                  Fluttertoast.showToast(msg: '暂未绑定学生，请联系园所老师绑定');
                  logError('异常用户身份: $authentication');
                  break;
              }
            },
            child: Text(
              '登录',
              style: TextStyle(
                color: loginTheme?.loginButtonTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          LoginContract(
            checked: _check,
            onChanged: (val) {
              // 只要用户勾选,即注册友盟sdk
              if (_check) setupUmeng();
              setState(() => _check = val ?? false);
            },
            onUserAgreementPressed: () => Get.toNamed('privacyPolicy'),
            onPrivacyPolicyPressed: () => Get.toNamed('privacyPolicy'),
          ),
          Padding(padding: REdgeInsets.only(bottom: 50)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _cancelToken = null;
    _phoneController.dispose();
    _smsController.dispose();
    super.dispose();
  }
}
