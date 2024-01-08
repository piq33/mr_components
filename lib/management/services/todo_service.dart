import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/todo_models.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TodoService extends GetxService {
  final _service = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().todoRepository;

  var todoList = List<TodoModel>.empty().obs;

  CancelToken? _cancelToken;
  Worker? _worker;

  void refreshList() => _fetchData();

  void _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTodoList(
        current: 1,
        size: 2,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        BslPageResponse<List<TodoModel>> page = r.data;
        logDebug('请求主页待办数据成功');
        todoList.value = page.records;
      }
    } catch (e, stackTrace) {
      logError('获取主页待办数据异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  void onReady() {
    super.onReady();
    _worker = ever(_service.selectedStudent, (student) {
      if (!student.validate) return;
      todoList.value = List.empty();
      _fetchData();
    });
  }

  @override
  void onClose() {
    _worker?.dispose();
    _cancelToken?.cancel('close');
    super.onClose();
  }
}
