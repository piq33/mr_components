import 'package:components/api/service/childtask_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/childtask/childtask_model.dart';
import 'package:components/model/childtask/comment_model.dart';
import 'package:components/model/common_model.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class ChildtaskRepository {
  final ChildtaskRemoteService _service;

  const ChildtaskRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 根据日期查询任务列表
  Future<BslResponse<List<ChildtaskInfoModel>>> fetchChildtaskInfo({
    /// 学校编码
    required String schoolCode,

    /// 学段编码
    required String phaseCode,

    /// 课程编码
    required String courseCode,

    /// 年级编码
    required String gradeCode,

    /// 班级编码
    required String classCode,

    /// 开始日期
    required DateTime startDate,

    /// 结束日期
    required DateTime endDate,

    /// 学号
    String? studentNo,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchChildtaskInfo(
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      courseCode: courseCode,
      gradeCode: gradeCode,
      classCode: classCode,
      startDate: _dateFormat.format(startDate),
      endDate: _dateFormat.format(endDate),
      studentNo: studentNo,
      cancelToken: cancelToken,
    );
  }

  /// 根据任务编码查询任务详情
  Future<BslResponse<ChildtaskModel>> fetchChildtask({
    /// 任务编码
    required String code,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchChildtask(code: code, cancelToken: cancelToken);
  }

  /// 提交任务打卡请求
  Future<BslResponse<bool>> submitChildtask({
    /// 用户id
    required int userId,

    /// 学生编码
    required String studentNo,

    /// 学生姓名
    String? studentName,

    /// 家长姓名
    String? parentName,

    /// 家长头像
    String? parentAvatar,

    /// 家长手机号
    String? parentPhone,

    /// 家长关系
    Relationship? parentRelation,

    /// 任务编码
    required String taskCode,

    /// 补充内容
    String? content,

    /// 资源文件地址(,分割)
    List<UploadFile>? uploadFiles,

    /// 是否完成
    required bool isFinish,
    CancelToken? cancelToken,
  }) {
    final req = ChildtaskkReq(
      userId: userId,
      studentNo: studentNo,
      studentName: studentName,
      parentName: parentName,
      parentAvatar: parentAvatar,
      parentPhone: parentPhone,
      parentRelation: parentRelation?.req,
      content: content,
      taskCode: taskCode,
      resourceUrl: uploadFiles?.map((e) => e.remote).toList().join(','),
      finishFlag: isFinish ? 1 : 0,
    );

    return _service.api.submitChildtask(req: req, cancelToken: cancelToken);
  }

  /// 查询打卡详情
  Future<BslResponse<ChildtaskResultModel>> fetchClockInResult({
    /// 任务编码
    required String code,

    /// 学生学号
    required String studentNo,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchClockInResult(
      code: code,
      studentNo: studentNo,
      cancelToken: cancelToken,
    );
  }

  /// 评论任务
  Future<BslResponse<EmptyObjectData>> commentTask({
    /// 作业编码
    required String taskCode,

    /// 评论人id
    required int commentUserId,

    /// 评论学生id
    required int commentStudentId,

    /// 评论内容
    required String commentContent,

    /// 进度id
    int? taskCodeSubId,
    CancelToken? cancelToken,
  }) {
    final req = CommentReq(
      taskCode: taskCode,
      commentUserId: commentUserId,
      commentStudentId: commentStudentId,
      commentContent: commentContent,
      taskCodeSubId: taskCodeSubId,
    );
    return _service.api.commentTask(req, cancelToken);
  }

  /// 回复评论
  Future<BslResponse<EmptyObjectData>> replyComment({
    /// 作业编码
    required String taskCode,

    /// 评论人id
    required int commentUserId,

    /// 评论学生id
    required int commentStudentId,

    /// 评论内容
    required String commentContent,

    /// 回复评论id
    required int replyCommentId,

    /// 回复人id
    required int replyUserId,

    /// 回复人学生id
    required int replyStudentId,

    /// 进度id
    int? taskCodeSubId,
    CancelToken? cancelToken,
  }) {
    final req = CommentReq(
      taskCode: taskCode,
      commentUserId: commentUserId,
      commentStudentId: commentStudentId,
      commentContent: commentContent,
      replyUserId: replyUserId,
      replyStudentId: replyStudentId,
      replyCommentId: replyCommentId,
      taskCodeSubId: taskCodeSubId,
    );
    return _service.api.commentTask(req, cancelToken);
  }

  /// 查询任务评论列表
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchComments({
    /// 作业编码
    required String taskCode,

    /// 当前页
    required int current,

    /// 每页数量
    required int size,

    /// 是否逆序
    bool sort = true,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchComments(
      taskCode,
      current,
      size,
      sort,
      cancelToken,
    );
  }

  /// 查询任务点赞列表
  Future<BslResponse<List<ChildtaskLikeModel>>> fetchChildtaskLikeInfo({
    /// 登录用户id
    required int userId,

    /// 同学进度id列表
    required List<int> resultIds,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchChildtaskLikeInfo(userId, resultIds, cancelToken);
  }

  /// 任务点赞
  Future<BslResponse<EmptyObjectData>> setChildtaskLike({
    /// 登录用户id
    required int userId,

    /// 是否点赞
    required bool like,

    /// 同学进度id
    required int resultId,
    CancelToken? cancelToken,
  }) {
    final req = ChildtaskLikeReq(
      userId: userId,
      like: like,
      resultId: resultId,
    );
    return _service.api.setChildtaskLike(req, cancelToken);
  }
}
