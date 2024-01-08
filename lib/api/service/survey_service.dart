import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/survey/survey_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'survey_service.g.dart';

class SurveyRemoteService {
  late SurveyRemoteApi api;

  SurveyRemoteService(Dio dio) {
    api = _SurveyRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class SurveyRemoteApi {
  /// 问卷列表ticket
  @GET('$dataPrefix/app/student/ticket')
  Future<BslResponse<String?>> fetchTicketForSurvey(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 问卷列表token
  @POST('/survey/jiaoWu/getUserToken')
  Future<BslResponse<String?>> fetchTokenForSurvey(
    /// baseurl
    @Header(dynamicBaseUrlHeader) String baseurl,
    @Body() SurveyTokenReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 问卷列表
  @GET('/survey/user/project/pageProjectsBySchool')
  Future<BslResponse<BslPageResponse<List<SurveyModel>>>> fetchSurveyList({
    /// token
    @Header("token") required String token,

    /// baseurl
    @Header(dynamicBaseUrlHeader) required String baseurl,

    /// 当前页码
    @Query('current') required int current,

    /// 每页大小
    @Query('size') required int size,

    /// 学生学号
    @Query('studentCode') String? studentCode,

    /// 学校编码
    @Query('schoolCode') String? schoolCode,

    /// 问卷状态
    @Query('status') int? status,

    /// 问卷名称
    @Query('name') String? name,

    /// 问卷开始时间(时间戳)
    @Query('beginDateTime') int? beginDateTime,

    /// 问卷结束时间(时间戳)
    @Query('endDateTime') int? endDateTime,

    /// WX
    @Query('browser') String? browser,
    @CancelRequest() CancelToken? cancelToken,
  });
}
