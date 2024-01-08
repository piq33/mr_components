import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/course_models.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'course_service.g.dart';

class CourseRemoteService {
  late CourseRemoteApi api;

  CourseRemoteService(Dio dio) {
    api = _CourseRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class CourseRemoteApi {
  /// 获取选修课程列表
  @POST(forwardPostApi)
  Future<BslResponse<List<ElectiveCourseModel>>> fetchElectiveCourses({
    @Query('uri') String uri =
        '/v1/kindergarten/chcare/xiaosheng/listElectiveCourseForStudent',
    @Query('env') String env = 'kindergarten',
    @Body() required ElectiveCourseReq req,
    @CancelRequest() CancelToken? cancelToken,
  });
}
