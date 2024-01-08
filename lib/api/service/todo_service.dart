import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/todo_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'todo_service.g.dart';

class TodoRemoteService {
  late TodoRemoteApi api;

  TodoRemoteService(Dio dio) {
    api = _TodoRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class TodoRemoteApi {
  /// 查询待办事项列表
  @GET('$businessPrefix/app/message/pageTodoList')
  Future<BslResponse<BslPageResponse<List<TodoModel>>>> fetchTodoList(
    /// 当前页
    @Query('current') int current,

    /// 每页数量
    @Query('size') int size,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 阅读待办
  @POST('$businessPrefix/app/message/readTodo')
  Future<BslResponse<EmptyObjectData>> readTodo(
    @Query('messageId') int messageId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 根据业务类型阅读全部待办
  @POST('$businessPrefix/app/message/readAllTodo')
  Future<BslResponse<EmptyObjectData>> readAllTodoByType(
    @Query('bizType') String bizType,
    @CancelRequest() CancelToken? cancelToken,
  );
}
