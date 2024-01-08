import 'dart:async';

import 'package:components/api/service/survey_service.dart';
import 'package:components/config.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/survey/survey_model.dart';
import 'package:dio/dio.dart';

class SurveyRepository {
  SurveyRepository(this.service);

  final SurveyRemoteService service;

  /// 问卷列表ticket
  Future<BslResponse<String?>> fetchTicketForSurvey(
    CancelToken? cancelToken,
  ) {
    return service.api.fetchTicketForSurvey(cancelToken);
  }

  /// 问卷列表token
  Future<BslResponse<String?>> fetchTokenForSurvey(
    String ticket,
    CancelToken? cancelToken,
  ) {
    final req = SurveyTokenReq(ticket: ticket);
    return service.api.fetchTokenForSurvey(
      env == Env.PROD
          ? 'https://survey-api.brightscholar.com/'
          : 'https://survey-api.brightscholar.net/',
      req,
      cancelToken,
    );
  }

  /// 问卷列表
  Future<BslResponse<BslPageResponse<List<SurveyModel>>>> fetchSurveyList({
    /// token
    required String token,

    /// 当前页码
    required int current,

    /// 每页大小
    required int size,

    /// 学生学号
    String? studentCode,

    /// 学校编码
    String? schoolCode,

    /// 问卷状态
    int? status,

    /// 问卷名称
    String? name,

    /// 问卷开始时间(时间戳)
    int? beginDateTime,

    /// 问卷结束时间(时间戳)
    int? endDateTime,
    String? browser,
    CancelToken? cancelToken,
  }) {
    return service.api.fetchSurveyList(
      token: token,
      current: current,
      size: size,
      studentCode: studentCode,
      schoolCode: schoolCode,
      status: status,
      name: name,
      beginDateTime: beginDateTime,
      endDateTime: endDateTime,
      browser: browser,
      cancelToken: cancelToken,
      baseurl: env == Env.PROD
          ? 'https://survey-api.brightscholar.com/'
          : 'https://survey-api.brightscholar.net/',
    );
  }
}
