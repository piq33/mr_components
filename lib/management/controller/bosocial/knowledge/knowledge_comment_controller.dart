import 'package:components/log/global_log.dart';
import 'package:components/management/controller/list_controller.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/bosocial/comment_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class KnowledgeCommentController extends ListController<CommentModel> {
  KnowledgeCommentController(this.knowledgeId);

  final _repository = Get.find<RepositoryService>().boSocialRepository;
  final _cancelTokens = List<CancelToken>.empty(growable: true);

  /// 干货id
  final String knowledgeId;

  @override
  bool get desc => false;

  void refreshPageOfComment(String commentId) {
    final index = list.indexWhere((element) => element.commentId == commentId);
    if (index == -1) return;

    /// 根据index计算对应page
    int page = (index ~/ pageSize) + 1;
    refreshPage(page);
  }

  Future<bool> onCommentLike(CommentModel comment) async {
    final target = !comment.selfLike;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.likeComment(
        commentId: comment.commentId,
        like: target,
        cancelToken: cancelToken,
      );
      final result = r.success;
      if (result) {
        refreshPageOfComment(comment.commentId);
      }
      return result;
    } catch (e, stackTrace) {
      logError('评论: ${comment.toString()}点赞异常', e, stackTrace);
    }
    return false;
  }

  Future<bool> onComment(
    String knowledgeId,
    String comment,
    CommentModel? reply,
  ) async {
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      BslResponse<EmptyObjectData?> r;
      if (reply == null) {
        r = await _repository.addComment(
          knowledgeId: knowledgeId,
          commentContent: comment,
          cancelToken: cancelToken,
        );
      } else {
        r = await _repository.replyComment(
          knowledgeId: knowledgeId,
          commentContent: comment,
          parentId: reply.commentId,
          cancelToken: cancelToken,
        );
      }
      if (!r.success) return false;

      // 评论成功后,刷新评论列表
      if (reply == null) {
        if (desc) {
          // 评论逆序排列时只需要刷新第一页即可
          refreshPage(1);
        } else {
          // 若评论是顺序排列，则根据最后一页的情况来按需刷新
          final size = list.length;
          // 如最后一页不完整，则直接刷新最后一页即可
          if (size > 0 && (size % pageSize) == 0) {
            // 如最后一页已满，则加载下一页
            loadMore();
          } else {
            refreshPage(current.value);
          }
        }
      } else {
        // 如果是评论下的回复, 获取其父评论id(topParentId为空时)
        var commentId = reply.topComment
            ? reply.commentId
            : reply.topParentId?.toString() ?? '';
        refreshPageOfComment(commentId);
      }
      return true;
    } catch (e, stackTrace) {
      logError(
        '${reply != null ? '回复$reply\n' : '评论: $comment'}: 异常',
        e,
        stackTrace,
      );
    }
    return false;
  }

  @override
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchData({
    required int page,
    required int pageSize,
    required bool desc,
    required CancelToken cancelToken,
  }) async {
    return await _repository.fetchCommentList(
      current: page,
      size: pageSize,
      knowledgeId: knowledgeId,
      cancelToken: cancelToken,
    );
  }

  @override
  void onClose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    super.onClose();
  }
}
