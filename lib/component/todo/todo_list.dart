import 'package:bsl/component/todo/todo_item.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/todo_models.dart';
import 'package:bsl/widget/common/empty.dart';
import 'package:bsl/widget/common/list_loading.dart';
import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_paging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TodoList extends EasyPaging<List<TodoModel>, TodoModel> {
  const TodoList({super.key}) : super(refreshOnStart: true);

  @override
  EasyPagingState<List<TodoModel>, TodoModel> createState() =>
      _TodoListBodyState();
}

/// 每页条数
const _pageSize = 10;

class _TodoListBodyState extends EasyPagingState<List<TodoModel>, TodoModel> {
  final _repository = Get.find<RepositoryService>().todoRepository;

  bool _loading = true;

  @override
  int get count => data?.length ?? 0;

  @override
  TodoModel getItem(int index) => data![index];

  @override
  int? page;

  @override
  int? total;

  @override
  int? totalPage;

  CancelToken? _cancelToken;

  Future<BslPageResponse<List<TodoModel>>?> _fetchData(int page) async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTodoList(
        current: page,
        size: _pageSize,
        cancelToken: _cancelToken,
      );
      if (r.success && mounted) {
        logDebug('请求待办数据成功, 当前页码: $page');
        return r.data;
      }
    } catch (e, stackTrace) {
      logError('获取待办数据异常: ${e.toString()}', e, stackTrace);
    }
    logDebug('请求待办数据失败, 当前页码: $page');
    return null;
  }

  @override
  Widget buildRefreshOnStartWidget() {
    return const ListLoadingAnimation();
  }

  @override
  Widget? buildEmptyWidget() {
    return const Center(child: EmptyWidget());
  }

  @override
  Future onRefresh() async {
    setState(() => _loading = true);
    final r = await _fetchData(1);
    final l = r?.records.toList() ?? List.empty();
    final t = r?.total ?? 0;
    final p = r?.current ?? 1;
    setState(() {
      data = l;
      total = t;
      page = p;
      _loading = false;
    });
  }

  @override
  Future onLoad() async {
    final r = await _fetchData(page! + 1);
    final l = r?.records.toList() ?? List.empty();
    final t = r?.total ?? 0;
    final p = r?.current ?? 1;
    setState(() {
      data!.addAll(l);
      total = t;
      page = p;
    });
  }

  @override
  Widget buildScrollView([ScrollPhysics? physics]) {
    Widget child;
    if (isEmpty) {
      child = buildEmptyWidget() ?? const SizedBox();
    } else {
      child = ListView.separated(
        physics: physics,
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemBuilder: (context, index) {
          final todo = getItem(index);
          return TodoItem(
            messageId: todo.messageId,
            title: todo.title,
            text: todo.detail,
            unread: !todo.readFlag,
            scene: todo.scene,
            param: todo.otherParam,
            date: todo.updateDate,
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: count,
      );
    }
    return AnimatedOpacity(
      opacity: _loading ? 0 : 1,
      duration: const Duration(milliseconds: 500),
      child: child,
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
