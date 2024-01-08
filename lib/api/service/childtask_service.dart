import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/childtask/childtask_model.dart';
import 'package:bsl/model/childtask/comment_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'childtask_service.g.dart';

class ChildtaskRemoteService {
  late ChildtaskRemoteApi api;

  ChildtaskRemoteService(Dio dio) {
    api = _ChildtaskRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class ChildtaskRemoteApi {
  /// 根据日期查询任务列表
  @GET(forwardGetApi)
  Future<BslResponse<List<ChildtaskInfoModel>>> fetchChildtaskInfo({
    @Query('uri')
        String uri = '/v1/kindergarten/bussiness/childtask/listWithDate',
    @Query('env') String env = 'kindergarten',

    /// 学校编码
    @Query('schoolCode') required String schoolCode,

    /// 学段编码
    @Query('phaseCode') required String phaseCode,

    /// 课程编码
    @Query('courseCode') required String courseCode,

    /// 年级编码
    @Query('gradeCode') required String gradeCode,

    /// 班级编码
    @Query('classCode') required String classCode,

    /// 开始日期
    @Query('startDate') required String startDate,

    /// 结束日期
    @Query('endDate') required String endDate,

    /// 学号
    @Query('studentNo') String? studentNo,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 根据任务编码查询任务详情
  @GET(forwardGetApi)
  Future<BslResponse<ChildtaskModel>> fetchChildtask({
    @Query('uri') String uri = '/v1/kindergarten/bussiness/childtask/detail',
    @Query('env') String env = 'kindergarten',

    /// 任务编码
    @Query('code') required String code,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 提交任务打卡请求
  @POST(forwardPostApi)
  Future<BslResponse<bool>> submitChildtask({
    @Query('uri') String uri = '/v1/kindergarten/bussiness/childtask/work',
    @Query('env') String env = 'kindergarten',
    @Body() required ChildtaskkReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询打卡详情
  @GET(forwardGetApi)
  Future<BslResponse<ChildtaskResultModel>> fetchClockInResult({
    @Query('uri') String uri = '/v1/kindergarten/bussiness/childtask/result',
    @Query('env') String env = 'kindergarten',

    /// 任务编码
    @Query('code') required String code,

    /// 学生学号
    @Query('studentNo') required String studentNo,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 评论任务
  @POST('$businessPrefix/app/hwComment')
  Future<BslResponse<EmptyObjectData>> commentTask(
    @Body() CommentReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询任务评论列表
  @GET('$businessPrefix/app/hwComment/{taskCode}/comment')
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchComments(
    /// 作业编码
    @Path('taskCode') String taskCode,

    /// 当前页
    @Query('current') int current,

    /// 每页数量
    @Query('size') int size,

    /// 排序
    @Query('descSortFlag') bool descSortFlag,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询任务点赞列表
  @GET('$businessPrefix/app/hwLikes/likes')
  Future<BslResponse<List<ChildtaskLikeModel>>> fetchChildtaskLikeInfo(
    /// 登录用户id
    @Query('userId') int userId,

    /// 同学进度id列表
    @Query('taskCodeSubIds') List<int> resultIds,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 任务点赞
  @POST('$businessPrefix/app/hwLikes')
  Future<BslResponse<EmptyObjectData>> setChildtaskLike(
    @Body() ChildtaskLikeReq req,
    @CancelRequest() CancelToken? cancelToken,
  );
}
