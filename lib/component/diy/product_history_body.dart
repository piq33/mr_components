import 'package:bsl/event/timeline_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/mixin/diy_mixin.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/model/time_models.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/widget/common/custom_dialog.dart';
import 'package:bsl/widget/common/empty.dart';
import 'package:bsl/widget/diy/diy_history_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ProductHistoryBody extends StatefulWidget {
  const ProductHistoryBody({super.key});

  @override
  State<ProductHistoryBody> createState() => _ProductHistoryBodyState();
}

class _ProductHistoryBodyState extends State<ProductHistoryBody>
    with DiyShareMixin {
  final _repository = Get.find<RepositoryService>().diyRepository;
  final _cancelTokens = List<CancelToken>.empty(growable: true);

  var _loading = true;
  var _list = List<TemplateDetailModel>.empty();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(covariant ProductHistoryBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  Future<void> _refresh() async {
    setState(() => _loading = true);
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchHistories(cancelToken);
      if (r.success) {
        // 根据创建时间倒序排列
        List<TemplateDetailModel> list = r.data;
        list.sort((a, b) {
          final aTime = a.createTime;
          final bTime = b.createTime;
          if (aTime == null || bTime == null) {
            return 0;
          }
          return bTime.compareTo(aTime);
        });
        setState(() => _list = list);
      }
    } catch (e, stackTrace) {
      logError('获取相册支付历史异常: ${e.toString()}', e, stackTrace);
    } finally {
      setState(() => _loading = false);
    }
  }

  void _deleteDiy(String studentAlbumId, CatalogType catalogType) async {
    try {
      SmartDialog.showLoading(msg: '正在删除...');
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.deleteDiy(studentAlbumId, cancelToken);
      if (r.success) {
        Fluttertoast.showToast(msg: '删除成功');
        // 通知时光刷新
        eventBus.fire(
          RefreshTimelineEvent(
            catalogs: [catalogType],
            operation: OperationType.delete,
          ),
        );
        await _refresh();
      }
      SmartDialog.dismiss();
    } catch (e, stackTrace) {
      logError('获取相册支付历史异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _loading ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: _list.isEmpty
          ? const Center(child: EmptyWidget())
          : ListView.separated(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
              itemBuilder: (context, index) {
                final detail = _list[index];
                return DiyHistoryItem(
                  history: detail,
                  onPressed: () {
                    final studentAlbumId = detail.studentAlbumId;
                    if (studentAlbumId == null || studentAlbumId.isEmpty) {
                      Fluttertoast.showToast(msg: '相册数据异常');
                      return;
                    }
                    Get.toNamed(
                      '/diy/view',
                      parameters: {
                        'onlyEdit': 'false',
                        'studentAlbumId': studentAlbumId,
                      },
                    );
                  },
                  onTipPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        final mainTheme =
                            Theme.of(context).extension<MainTheme>();
                        return Dialog(
                          backgroundColor: mainTheme?.dialogBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                          ),
                          child: CustomDialog(
                            text: detail.payNotice,
                            confirmText: '我知道了',
                            onConfirm: () => Navigator.of(context).pop(),
                          ),
                        );
                      },
                    );
                  },
                  onDeletePressed: () async {
                    final confirm = await showDialog<bool?>(
                      context: context,
                      builder: (context) {
                        final theme = Theme.of(context).extension<MainTheme>();
                        return Dialog(
                          backgroundColor: theme?.dialogBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                          ),
                          child: CustomDialog(
                            text: '是否要删除相册: ${detail.title}?',
                            onCancel: () => Navigator.of(context).pop(false),
                            onConfirm: () => Navigator.of(context).pop(true),
                          ),
                        );
                      },
                    );

                    if (confirm == null || !confirm) return;
                    final studentAlbumId = detail.studentAlbumId;
                    if (studentAlbumId == null || studentAlbumId.isEmpty) {
                      Fluttertoast.showToast(msg: '相册数据异常');
                      return;
                    }
                    _deleteDiy(studentAlbumId, detail.catalogType);
                  },
                  onEditPressed: () {
                    final studentAlbumId = detail.studentAlbumId;
                    if (studentAlbumId == null || studentAlbumId.isEmpty) {
                      Fluttertoast.showToast(msg: '相册数据异常');
                      return;
                    }
                    Get.toNamed(
                      '/diy/view',
                      parameters: {
                        'onlyEdit': 'true',
                        'studentAlbumId': studentAlbumId,
                      },
                    );
                  },
                  onSharePressed: () => share(context, detail),
                  onPrintPressed: () {
                    final studentAlbumId = detail.studentAlbumId;
                    if (studentAlbumId == null) {
                      Fluttertoast.showToast(msg: '相册数据异常');
                      return;
                    }
                    final parameters = {
                      'studentAlbumId': studentAlbumId,
                      'printSupport': detail.printSupport.index.toString(),
                    };
                    Get.toNamed('diy/purchase', parameters: parameters);
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemCount: _list.length,
            ),
    );
  }

  @override
  void dispose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    super.dispose();
  }
}
