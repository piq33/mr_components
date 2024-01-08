import 'package:components/component/notification/notification_item.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/notification/notification_model.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/common/list_loading.dart';
import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_paging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationList
    extends EasyPaging<List<NotificationModel>, NotificationModel> {
  const NotificationList({required this.messageType, this.onRefresh, super.key})
      : super(refreshOnStart: true);

  final MessageType messageType;
  final VoidCallback? onRefresh;

  @override
  EasyPagingState<List<NotificationModel>, NotificationModel> createState() =>
      _NotificationListState();
}

/// 每页条数
const _pageSize = 10;

class _NotificationListState
    extends EasyPagingState<List<NotificationModel>, NotificationModel> {
  final _repository = Get.find<RepositoryService>().notificationRepository;

  bool _loading = true;

  @override
  int get count => data?.length ?? 0;

  @override
  NotificationModel getItem(int index) => data![index];

  @override
  int? page;

  @override
  int? total;

  @override
  int? totalPage;

  CancelToken? _cancelToken;

  Future<BslPageResponse<List<NotificationModel>>?> _fetchData(int page) async {
    try {
      final messageType = (widget as NotificationList).messageType;
      _cancelToken = CancelToken();
      final r = await _repository.fetchNotificationList(
        current: page,
        size: _pageSize,
        messageType: messageType,
        cancelToken: _cancelToken,
      );
      if (r.success && mounted) {
        logDebug('请求通知数据成功, 当前页码: $page');
        return r.data;
      }
    } catch (e, stackTrace) {
      logError('获取通知数据异常: ${e.toString()}', e, stackTrace);
    }
    logDebug('请求通知数据失败, 当前页码: $page');
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
    (widget as NotificationList).onRefresh?.call();
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
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemBuilder: (context, index) {
          final notification = getItem(index);
          return NotificationItem(
            sendCid: notification.sendCid,
            noticeId: notification.bizId,
            messageId: notification.messageId,
            title: notification.title,
            text: notification.detail,
            unread: !notification.readFlag,
            type: notification.messageType,
            scene: notification.scene,
            param: notification.otherParam,
            dateTime: notification.updateDate,
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
