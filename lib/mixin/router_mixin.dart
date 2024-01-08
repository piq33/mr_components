import 'dart:convert';

import 'package:components/log/global_log.dart';
import 'package:components/model/album/album_model.dart';
import 'package:components/model/attendance/attendance_model.dart';
import 'package:components/model/bill_models.dart';
import 'package:components/model/childtask/childtask_model.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/conservation/daylife_model.dart';
import 'package:components/model/recipes/recipes_model.dart';
import 'package:components/model/survey/survey_model.dart';
import 'package:components/model/week_plan/week_plan_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

typedef UnknownSceneCallback = Function(String? messageId, String param);

mixin SceneMixin {
  // 根据场景码跳转到对应页面
  toScene({
    required PushCode scene,
    String? messageId,
    required String param,
    UnknownSceneCallback? callback,
  }) {
    switch (scene) {
      case PushCode.document:
        _toBrowser(param, '/student/archive/index');
        break;
      case PushCode.growUp:
        _toBrowser(param, '/student/evaluate/index');
        break;
      case PushCode.lateCare:
        _toBrowser(param, '/student/latecare/index');
        break;
      case PushCode.library:
        _toBrowser(param, '/student/resource/index');
        break;
      case PushCode.gallery:
        _toBrowser(param, '/student/album/index');
        break;
      case PushCode.medicine:
        _toBrowser(param, '/student/medicine/index');
        break;
      case PushCode.pickUp:
        _toBrowser(param, '/student/pickup/index');
        break;
      case PushCode.childtaskDetail:
        if (param.isEmpty) {
          Fluttertoast.showToast(msg: '该亲子任务已失效');
          return;
        }
        try {
          final json = jsonDecode(param);
          final childtask = ChildtaskOtherParam.fromJson(json);
          final parameters = {'code': childtask.code};
          Get.toNamed('childtask/detail', parameters: parameters);
        } catch (e, stackTrace) {
          logError('亲子任务参数异常', e, stackTrace);
          Fluttertoast.showToast(msg: '该亲子任务已失效');
        }
        break;
      case PushCode.clip:
        if (param.isEmpty) {
          Get.toNamed('album/clip');
          return;
        }
        try {
          final json = jsonDecode(param);
          final clip = ClipOtherParam.fromJson(json);
          final parameters = {'momentId': clip.activityId};
          Get.toNamed('album/moment/detail', parameters: parameters);
        } catch (e, stackTrace) {
          logError('剪影参数异常', e, stackTrace);
          Get.toNamed('album/clip');
        }
        break;
      case PushCode.weekPlan:
        if (param.isEmpty) {
          Get.toNamed('weekPlan');
          return;
        }
        try {
          final json = jsonDecode(param);
          final weekPlan = WeekPlanOtherParam.fromJson(json);
          final parameters = {'date': weekPlan.date};
          Get.toNamed('weekPlan', parameters: parameters);
        } catch (e, stackTrace) {
          logError('周计划参数异常', e, stackTrace);
          Get.toNamed('weekPlan');
        }
        break;
      case PushCode.attendance:
        if (param.isEmpty) {
          Get.toNamed('attendance');
          return;
        }
        try {
          final json = jsonDecode(param);
          final attendance = AttendanceOtherParam.fromJson(json);
          final parameters = {'date': attendance.date};
          Get.toNamed('attendance', parameters: parameters);
        } catch (e, stackTrace) {
          logError('考勤参数异常', e, stackTrace);
          Get.toNamed('attendance');
        }
        break;
      case PushCode.recipes:
        if (param.isEmpty) {
          Get.toNamed('recipes');
          return;
        }
        try {
          final json = jsonDecode(param);
          final weekPlan = RecipesOtherParam.fromJson(json);
          final parameters = {'date': weekPlan.date};
          Get.toNamed('recipes', parameters: parameters);
        } catch (e, stackTrace) {
          logError('食谱参数异常', e, stackTrace);
          Get.toNamed('recipes');
        }
        break;
      case PushCode.bill:
        if (param.isEmpty) {
          Fluttertoast.showToast(msg: '该订单已失效');
          return;
        }
        try {
          final billCode = BillOtherParam.fromJson(jsonDecode(param));
          Get.toNamed(
            'bill/detail',
            parameters: {
              'page': '1',
              'billCode': billCode.billStudentCode,
            },
          );
        } catch (e, stackTrace) {
          logError('订单参数异常', e, stackTrace);
          Fluttertoast.showToast(msg: '该订单已失效');
        }
        break;
      case PushCode.contract:
        _toBrowser(param, '/student/nsn/index');
        break;
      case PushCode.fothzo:
        _toBrowser(param, '/student/common/reSignUp');
        break;
      case PushCode.childcare:
        _toBrowser(param, '/student/chcare/classHourMng/account');
        break;
      case PushCode.conservation:
        if (param.isEmpty) {
          Get.toNamed('conservation/report');
          return;
        }
        try {
          final json = jsonDecode(param);
          final childcare = ConservationOtherParam.fromJson(json);
          final parameters = {'date': childcare.date};
          Get.toNamed('conservation/report', parameters: parameters);
        } catch (e, stackTrace) {
          logError('保育参数异常', e, stackTrace);
          Get.toNamed('conservation/report');
        }
        break;
      case PushCode.notification:
        toNotificationDetailPage(messageId: messageId, param: param);
        break;
      case PushCode.survey:
        if (param.isEmpty) {
          Fluttertoast.showToast(msg: '该问卷已失效');
          return;
        }
        try {
          final json = jsonDecode(param);
          final survey = SurveyOtherParam.fromJson(json);
          final url = survey.url;
          if (url == null || url.isEmpty) {
            Fluttertoast.showToast(msg: '该问卷链接已失效');
            return;
          }
          final parameters = {'title': survey.name, 'url': url};
          Get.toNamed('survey/browser', parameters: parameters);
        } catch (e, stackTrace) {
          logError('问卷参数异常', e, stackTrace);
          Fluttertoast.showToast(msg: '该问卷已失效');
        }
        break;
      default:
        callback?.call(messageId, param);
        break;
    }
  }

  void toNotificationDetailPage({String? messageId, required String param}) {
    if (messageId == null || param.isEmpty) {
      Fluttertoast.showToast(msg: '该通知已失效');
      return;
    }
    try {
      final parameters = {'messageId': messageId.toString()};
      Get.toNamed('notification/detail', parameters: parameters);
    } catch (e, stackTrace) {
      logError('通知参数异常', e, stackTrace);
      Fluttertoast.showToast(msg: '该通知已失效');
    }
  }

  void _toBrowser(String param, String defaultUrl) {
    final json = jsonDecode(param);
    final url = _parseH5Url(json) ?? defaultUrl;
    final params = _parseH5Params(json) ?? '';
    final parameters = {'url': url, 'params': params};
    Get.toNamed('browser', parameters: parameters);
  }

  String? _parseH5Url(dynamic json) {
    if (json.isNotEmpty && json is Map<String, dynamic>) {
      return json['path'];
    }
    return null;
  }

  String? _parseH5Params(dynamic json) {
    Map<String, dynamic> queryParameters = {};
    if (json.isNotEmpty && json is Map<String, dynamic>) {
      try {
        Map<String, dynamic> params = json['param'] ?? {};
        for (var param in params.entries) {
          queryParameters[param.key] = param.value.toString();
        }
      } catch (e, stackTrace) {
        logWarning('页面参数解析失败', e, stackTrace);
        return null;
      }
    }
    try {
      return queryParameters.isNotEmpty
          ? Uri(queryParameters: queryParameters).query
          : null;
    } catch (e, stackTrace) {
      logError('加载h5链接异常', e, stackTrace);
    }
    return null;
  }
}
