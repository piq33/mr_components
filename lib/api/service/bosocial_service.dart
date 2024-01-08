import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bosocial_models.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'bosocial_service.g.dart';

class BoSocialRemoteService {
  late BoSocialRemoteApi api;

  BoSocialRemoteService(Dio dio) {
    api = _BoSocialRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class BoSocialRemoteApi {
  /// 查询所有干货分类
  @GET('$businessPrefix/app/bsqreal/listAllCatalog')
  Future<BslResponse<List<CatalogModel>>> fetchKnowledgeCatalogs({
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询所有干货标签
  @GET('$businessPrefix/app/bsqreal/listAllTags')
  Future<BslResponse<List<TagModel>>> fetchKnowledgeTags({
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 根据分类查询干货列表
  @GET('')
  Future<BslResponse<BslPageResponse<List<KnowledgeModel>>>>
      fetchKnowledgeList({
    /// 分类id
    @Query('catalogId') String? catalogId,

    /// 当前页
    @Query('current') required int current,

    /// 每页数量
    @Query('size') required int size,

    /// 查询值
    @Query('queryValue') String? queryValue,

    /// 标签列表, 用逗号隔开
    @Query('tagIdList') List<String>? tagIdList,
    @Header(dynamicPathHeader) required String apiUrl,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询干货详情
  @GET('$businessPrefix/app/bsqreal/getDetail')
  Future<BslResponse<KnowledgeDetailModel>> fetchKnowledgeDetail({
    /// 干货id
    @Query('knowledgeId') required String knowledgeId,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 干货浏览记录
  @POST('$businessPrefix/app/bsqreal/addStudentView')
  Future<BslResponse<EmptyObjectData>> readKnowledge({
    /// 干货id
    @Query('knowledgeId') required String knowledgeId,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 干货点赞
  @POST('$businessPrefix/app/bsqreal/likeReal')
  Future<BslResponse<EmptyObjectData?>> likeKnowledge({
    /// 干货id
    @Query('knowledgeId') required String knowledgeId,

    /// 是否点赞
    @Query('ifLike') required bool like,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询评论列表
  @GET('$businessPrefix/app/bsqreal/pageCommentTop')
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchCommentList({
    /// 干货id
    @Query('knowledgeId') required String knowledgeId,

    /// 当前页
    @Query('current') required int current,

    /// 每页数量
    @Query('size') required int size,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 添加评论
  @POST('$businessPrefix/app/bsqreal/addComment')
  Future<BslResponse<EmptyObjectData?>> addComment({
    @Body() required CommentReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 删除评论
  @POST('$businessPrefix/app/bsqreal/deleteComment')
  Future<BslResponse<String>> deleteComment({
    /// 评论id
    @Query('commentId') required int commentId,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 评论点赞
  @POST('$businessPrefix/app/bsqreal/likeComment')
  Future<BslResponse<EmptyObjectData?>> likeComment({
    /// 评论id
    @Query('commentId') required String commentId,

    /// 是否点赞
    @Query('ifLike') required bool like,
    @CancelRequest() CancelToken? cancelToken,
  });
}
