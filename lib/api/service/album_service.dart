import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/album/album_model.dart';
import 'package:bsl/model/album/comment_model.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'album_service.g.dart';

class AlbumRemoteService {
  late AlbumRemoteApi api;

  AlbumRemoteService(Dio dio) {
    api = _AlbumRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class AlbumRemoteApi {
  /// 获取学生的剪影筛选信息(学校、学年学期)
  @GET('$dataPrefix/app/student/history/school')
  Future<BslResponse<List<SchoolModel>>> fetchAlbumFilter(
    @Query('studentId') int studentId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询剪影列表
  @GET('$businessPrefix/app/sliactivity/pageAppSliAct')
  Future<BslResponse<BslPageResponse<List<ClipModel>>>> fetchClipList({
    ///	当前页
    @Query('current') required int current,

    /// 每页的数量
    @Query('size') required int size,

    /// 查询类型 0 所有 1 个人 2 班级 3 学校
    @Query('searchType') required int searchType,

    /// 离校日期
    @Query('leaveDate') String? leaveDate,

    /// 学年学期编码
    @Query('yearTermCode') String? yearTermCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 统计剪影浏览数量
  @POST('$businessPrefix/app/sliactivity/clickAct')
  Future<BslResponse<EmptyObjectData>> clipClick(
    ///	活动id
    @Query('activityId') String id,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查看活动详情
  @GET('$businessPrefix/app/sliactivity/getAppActDetail')
  Future<BslResponse<ClipModel>> fetchClipDetail(
    ///	活动id
    @Query('activityId') String clipId,

    /// 家庭成员关系
    @Query('familyRelation') int? familyRelation,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 点赞/取消活动
  @POST('$businessPrefix/app/sliactivity/likeCurrentAct')
  Future<BslResponse<EmptyObjectData>> likeActivity({
    ///	活动id
    @Query('activityId') required String activityId,

    /// 是否点赞
    @Query('ifLike') required bool ifLike,

    /// 家庭成员关系
    @Query('familyRelation') int? familyRelation,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询当前登录用户的 个人图片列表
  @GET('$businessPrefix/app/personalphoto/listPersonalPhotos')
  Future<BslResponse<List<PhotoResourceModel>>> fetchPhotoList(
    /// 离校日期
    @Query('leaveDate') String? leaveDate,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 增加个人相册图片
  @POST('$businessPrefix/app/personalphoto/add')
  Future<BslResponse<EmptyObjectData>> addPhoto(
    @Body() PhotoResourceReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询当前登录用户的 剪影图片列表
  @GET('$businessPrefix/app/timeMoment/listPicForSelectNew')
  Future<BslResponse<List<ClipResourceModel>>> fetchAllClipList(
    /// 查询类型 0 所有 1 个人 2 班级 3 学校
    @Query('searchType') int searchType,

    /// 离校日期
    @Query('leaveDate') String? leaveDate,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询评论列表
  @GET('$businessPrefix/app//sliactivity/pageCommentTop')
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchCommentList({
    /// 活动id
    @Query('activityId') required String activityId,

    /// 当前页
    @Query('current') required int current,

    /// 每页数量
    @Query('size') required int size,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 添加评论
  @POST('$businessPrefix/app/sliactivity/addComment')
  Future<BslResponse<EmptyObjectData?>> addComment({
    @Body() required CommentReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 删除评论
  @POST('$businessPrefix/app/sliactivity/deleteComment')
  Future<BslResponse<EmptyObjectData>> deleteComment({
    /// 评论id
    @Query('commentId') required int commentId,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 评论点赞
  @POST('$businessPrefix/app/sliactivity/likeComment')
  Future<BslResponse<EmptyObjectData?>> likeComment({
    /// 评论id
    @Query('commentId') required String commentId,

    /// 是否点赞
    @Query('ifLike') required bool like,
    @CancelRequest() CancelToken? cancelToken,
  });
}
