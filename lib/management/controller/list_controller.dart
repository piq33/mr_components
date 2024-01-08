import 'dart:math';

import 'package:components/log/global_log.dart';
import 'package:components/model/bsl_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

abstract class ListController<T> extends GetxController {
  /// 是否逆序排列
  final desc = true;

  /// 列表是否正在加载首页
  final firstLoading = true.obs;

  /// 列表是否正在请求数据
  final loading = true.obs;

  /// 是否还能加载更多
  final noMore = false.obs;

  /// 每页大小
  final pageSize = 15;

  /// 页数
  final current = 1.obs;

  /// 总数
  final total = 0.obs;

  /// 总页数
  final totalPages = 0.obs;

  /// 列表
  final list = List<T>.empty().obs;

  final _cancelTokens = List<CancelToken>.empty(growable: true);

  @override
  void onReady() {
    super.onReady();
    _refresh();
  }

  void reload() => _refresh();

  void _refresh() async {
    firstLoading.value = true;
    loading.value = true;
    current.value = 1;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await fetchData(
        page: 1,
        pageSize: pageSize,
        desc: desc,
        cancelToken: cancelToken,
      );
      if (r.success) {
        BslPageResponse<List<T>> pageResponse = r.data;
        List<T> records = pageResponse.records;
        total.value = pageResponse.total;
        totalPages.value = pageResponse.pages;
        noMore.value = pageResponse.noMore;
        list.value = records;
      }
    } catch (e, stackTrace) {
      logError('获取列表首页异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
      firstLoading.value = false;
    }
  }

  void loadMore() async {
    if (firstLoading.value || loading.value) return;
    loading.value = true;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final page = current.value + 1;
      final r = await fetchData(
        page: page,
        pageSize: pageSize,
        desc: desc,
        cancelToken: cancelToken,
      );
      if (r.success) {
        BslPageResponse<List<T>> pageResponse = r.data;
        List<T> records = pageResponse.records;
        total.value = pageResponse.total;
        current.value = page;
        totalPages.value = pageResponse.pages;
        noMore.value = pageResponse.noMore;
        list.addAll(records);
      }
    } catch (e, stackTrace) {
      logError('获取列表${current.value}异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  void refreshPage(int page) async {
    // 计算要替换的位置
    final start = (page - 1) * pageSize;
    final end = min(page * pageSize, list.length);
    final length = end - start;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await fetchData(
        page: page,
        pageSize: pageSize,
        desc: desc,
        cancelToken: cancelToken,
      );
      if (r.success) {
        BslPageResponse<List<T>> pageResponse = r.data;
        List<T> records = pageResponse.records;
        total.value = pageResponse.total;
        noMore.value = pageResponse.noMore;
        list.setRange(start, end, records);
        // 如新列表比旧列表多，需要补充
        if (records.length > length) {
          list.insertAll(end, records.sublist(length));
        }
      }
    } catch (e, stackTrace) {
      logError('获取列表首页异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
      firstLoading.value = false;
    }
  }

  Future<BslResponse<BslPageResponse<List<T>>>> fetchData({
    required int page,
    required int pageSize,
    required bool desc,
    required CancelToken cancelToken,
  });

  @override
  void onClose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    super.onClose();
  }
}
