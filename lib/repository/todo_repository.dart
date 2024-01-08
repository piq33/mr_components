import 'package:components/api/service/todo_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/todo_models.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  final TodoRemoteService _service;

  const TodoRepository(this._service);

  /// 查询待办事项列表
  Future<BslResponse<BslPageResponse<List<TodoModel>>>> fetchTodoList({
    /// 当前页
    required int current,

    /// 每页数量
    required int size,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchTodoList(current, size, cancelToken);
  }

  /// 阅读待办
  Future<BslResponse<EmptyObjectData>> readTodo(
    int messageId,
    CancelToken? cancelToken,
  ) {
    return _service.api.readTodo(messageId, cancelToken);
  }

  /// 根据业务类型阅读全部待办
  Future<BslResponse<EmptyObjectData>> readAllTodoByType(
    String bizType,
    CancelToken? cancelToken,
  ) {
    return _service.api.readAllTodoByType(bizType, cancelToken);
  }
}
