import 'package:components/api/service/album_service.dart';
import 'package:components/model/album/album_model.dart';
import 'package:components/model/album/comment_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class AlbumRepository {
  final AlbumRemoteService _service;

  const AlbumRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 获取学生的剪影筛选信息(学校、学年学期)
  Future<BslResponse<List<SchoolModel>>> fetchAlbumFilter(
    int studentId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchAlbumFilter(studentId, cancelToken);
  }

  /// 查询剪影列表
  Future<BslResponse<BslPageResponse<List<ClipModel>>>> fetchClipList({
    required SearchType searchType,
    required int current,
    required int size,

    /// 离校日期
    DateTime? leaveDate,

    /// 学年学期编码
    String? yearTermCode,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchClipList(
      size: size,
      current: current,
      searchType: searchType.res,
      leaveDate: leaveDate != null ? _dateFormat.format(leaveDate) : null,
      yearTermCode: yearTermCode,
      cancelToken: cancelToken,
    );
  }

  /// 统计剪影浏览数量
  Future<BslResponse<EmptyObjectData>> clipClick({
    required String id,
    CancelToken? cancelToken,
  }) {
    return _service.api.clipClick(id, cancelToken);
  }

  /// 查看活动详情
  Future<BslResponse<ClipModel>> fetchClipDetail({
    required String clipId,

    /// 家庭成员关系
    Relationship? relationship,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchClipDetail(clipId, relationship?.req, cancelToken);
  }

  /// 点赞/取消活动
  Future<BslResponse<EmptyObjectData>> likeActivity({
    ///	活动id
    required String activityId,

    /// 是否点赞
    required bool ifLike,

    /// 家庭成员关系
    Relationship? relationship,
    CancelToken? cancelToken,
  }) {
    return _service.api.likeActivity(
      activityId: activityId,
      ifLike: ifLike,
      familyRelation: relationship?.req,
      cancelToken: cancelToken,
    );
  }

  /// 增加个人相册图片
  Future<BslResponse<EmptyObjectData>> addPhoto({
    required String url,
    required FileType type,
    CancelToken? cancelToken,
  }) {
    final req = PhotoResourceReq(url: url, type: type);
    return _service.api.addPhoto(req, cancelToken);
  }

  /// 查询当前登录用户的 个人图片列表
  Future<BslResponse<List<PhotoResourceModel>>> fetchPhotoList(
    /// 离校日期
    DateTime? leaveDate,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchPhotoList(
      leaveDate != null ? _dateFormat.format(leaveDate) : null,
      cancelToken,
    );
  }

  /// 查询当前登录用户的 剪影图片列表
  Future<BslResponse<List<ClipResourceModel>>> fetchAllClipList({
    required SearchType searchType,

    /// 离校日期
    DateTime? leaveDate,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchAllClipList(
      searchType.res,
      leaveDate != null ? _dateFormat.format(leaveDate) : null,
      cancelToken,
    );
  }

  /// 查询评论列表
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchCommentList({
    /// 活动id
    required String activityId,

    /// 当前页
    required int current,

    /// 每页数量
    required int size,
    CancelToken? cancelToken,
  }) {
    final r = _service.api.fetchCommentList(
      activityId: activityId,
      current: current,
      size: size,
      cancelToken: cancelToken,
    );
    // 对评论进行分组处理
    return r;
  }

  /// 添加评论
  Future<BslResponse<EmptyObjectData?>> addComment({
    /// 活动id
    required String activityId,

    /// 家庭成员关系
    Relationship? relationship,

    /// 评论内容
    required String commentContent,
    CancelToken? cancelToken,
  }) {
    final req = CommentReq(
        activityId: activityId,
        familyRelation: relationship?.req,
        commentContent: commentContent);
    return _service.api.addComment(req: req, cancelToken: cancelToken);
  }

  /// 回复评论
  Future<BslResponse<EmptyObjectData?>> replyComment({
    /// 活动id
    required String activityId,

    /// 家庭成员关系
    Relationship? relationship,

    /// 评论内容
    required String commentContent,

    /// 父评论id
    required String parentId,
    CancelToken? cancelToken,
  }) {
    final req = CommentReq(
      activityId: activityId,
      familyRelation: relationship?.req,
      commentContent: commentContent,
      parentId: parentId,
    );
    return _service.api.addComment(req: req, cancelToken: cancelToken);
  }

  /// 删除评论
  Future<BslResponse<EmptyObjectData>> deleteComment({
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
