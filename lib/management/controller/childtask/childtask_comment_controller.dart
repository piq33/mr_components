import 'package:components/management/controller/list_controller.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/childtask/comment_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ChildtaskCommentController extends ListController<CommentModel> {
  ChildtaskCommentController(this.taskCode);

  final _repository = Get.find<RepositoryService>().childtaskRepository;

  /// 作业编码
  final String taskCode;

  @override
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchData({
    required int page,
    required int pageSize,
    required bool desc,
    required CancelToken cancelToken,
  }) async {
    return await _repository.fetchComments(
      current: page,
      size: pageSize,
      taskCode: taskCode,
      sort: desc,
      cancelToken: cancelToken,
    );
  }
}
