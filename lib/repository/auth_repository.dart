import 'package:components/api/service/auth_service.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/converter/gender_converter.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class AuthRepository {
  final AuthRemoteService _service;

  const AuthRepository(this._service);

  static final _birthDateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 用户密码登录
  Future<BslResponse<AuthModel>> authByPassword(
    String phone,
    String password,
    CancelToken? cancelToken,
  ) {
    final req =
        AuthReq(loginPwd: password, loginType: 1, mobile: phone, smsCode: '');
    return _service.api.auth(req, cancelToken);
  }

  /// 潜生切换到正式生
  Future<BslResponse<AuthModel>> regular(
    String? studentCode,
    CancelToken? cancelToken,
  ) {
    final req = RegularReq(studentCode: studentCode);
    return _service.api.regular(req, cancelToken);
  }

  /// 手机验证码登录
  Future<BslResponse<AuthModel>> authBySmsCode(
    String phone,
    String smsCode,
    CancelToken? cancelToken,
  ) {
    final req =
        AuthReq(loginPwd: '', loginType: 2, mobile: phone, smsCode: smsCode);
    return _service.api.auth(req, cancelToken);
  }

  /// 获取登录用户信息
  Future<BslResponse<UserModel>> fetchUserInfo([CancelToken? cancelToken]) {
    return _service.api.fetchUserInfo(cancelToken);
  }

  /// 更新登录用户信息
  Future<BslResponse<EmptyObjectData>> updateUserInfo({
    String? nickName,
    Gender? gender,
    String? avatar,
    DateTime? birth,
    CancelToken? cancelToken,
  }) {
    final req = UserUpdateReq(
      nickName: nickName,
      gender:
          gender == null ? null : const GenderIntJsonConverter().toJson(gender),
      avatar: avatar,
      birthDate: birth == null ? null : _birthDateFormat.format(birth),
    );
    return _service.api.updateUserInfo(req, cancelToken);
  }
}
