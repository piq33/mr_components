import 'package:bsl/api/service/bosocial_service.dart';
import 'package:bsl/model/bosocial_models.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:dio/dio.dart';

class BoSocialRepository {
  final BoSocialRemoteService _service;

  const BoSocialRepository(this._service);

  /// 查询所有干货分类
  Future<BslResponse<List<CatalogModel>>> fetchKnowledgeCatalogs({
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchKnowledgeCatalogs(cancelToken: cancelToken);
  }

  /// 查询所有干货标签
  Future<BslResponse<List<TagModel>>> fetchKnowledgeTags({
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchKnowledgeTags(cancelToken: cancelToken);
  }

  /// 根据分类查询干货列表
  Future<BslResponse<BslPageResponse<List<KnowledgeModel>>>>
      fetchKnowledgeList({
    /// 分类id
    String? catalogId,

    /// 当前页
    required int current,

    /// 每页数量
    required int size,

    /// 查询值
    String? queryValue,

    /// 标签列表, 用逗号隔开
    List<String>? tagIdList,
    required String apiUrl,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchKnowledgeList(
      catalogId: catalogId,
      current: current,
      size: size,
      queryValue: queryValue,
      tagIdList: tagIdList,
      apiUrl: apiUrl,
      cancelToken: cancelToken,
    );
  }

  /// 查询干货详情
  Future<BslResponse<KnowledgeDetailModel>> fetchKnowledgeDetail({
    /// 干货id
    required String knowledgeId,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchKnowledgeDetail(
      knowledgeId: knowledgeId,
      cancelToken: cancelToken,
    );
  }

  /// 干货浏览记录
  Future<BslResponse<EmptyObjectData>> readKnowledge({
    /// 干货id
    required String knowledgeId,
    CancelToken? cancelToken,
  }) {
    return _service.api.readKnowledge(
      knowledgeId: knowledgeId,
      cancelToken: cancelToken,
    );
  }

  /// 干货点赞
  Future<BslResponse<EmptyObjectData?>> likeKnowledge({
    /// 干货id
    required String knowledgeId,

    /// 是否点赞
    required bool like,
    CancelToken? cancelToken,
  }) {
    return _service.api.likeKnowledge(
      knowledgeId: knowledgeId,
      like: like,
      cancelToken: cancelToken,
    );
  }

  /// 查询评论列表
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchCommentList({
    /// 干货id
    required String knowledgeId,

    /// 当前页
    required int current,

    /// 每页数量
    required int size,
    CancelToken? cancelToken,
  }) {
    final r = _service.api.fetchCommentList(
      knowledgeId: knowledgeId,
      current: current,
      size: size,
      cancelToken: cancelToken,
    );
    // 对评论进行分组处理
    return r;
  }

  /// 添加评论
  Future<BslResponse<EmptyObjectData?>> addComment({
    /// 干货id
    required String knowledgeId,

    /// 评论内容
    required String commentContent,
    CancelToken? cancelToken,
  }) {
    final req =
        CommentReq(knowledgeId: knowledgeId, commentContent: commentContent);
    return _service.api.addComment(req: req, cancelToken: cancelToken);
  }

  /// 回复评论
  Future<BslResponse<EmptyObjectData?>> replyComment({
    /// 干货id
    required String knowledgeId,

    /// 评论内容
    required String commentContent,

    /// 父评论id
    required String parentId,
    CancelToken? cancelToken,
  }) {
    final req = CommentReq(
      knowledgeId: knowledgeId,
      commentContent: commentContent,
      parentId: parentId,
    );
    return _service.api.addComment(req: req, cancelToken: cancelToken);
  }

  /// 删除评论
  Future<BslResponse<String>> deleteComment({
    /// 评论id
    required int commentId,
    CancelToken? cancelToken,
  }) {
    return _service.api.deleteComment(
      commentId: commentId,
      cancelToken: cancelToken,
    );
  }

  /// 评论点赞
  Future<BslResponse<EmptyObjectData?>> likeComment({
    /// 评论id
    required String commentId,

    /// 是否点赞
    required bool like,
    CancelToken? cancelToken,
  }) {
    return _service.api.likeComment(
      commentId: commentId,
      like: like,
      cancelToken: cancelToken,
    );
  }
}
