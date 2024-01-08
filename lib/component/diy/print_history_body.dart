import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/custom_dialog.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/diy/print_history_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class PrintHistoryBody extends StatefulWidget {
  const PrintHistoryBody({super.key});

  @override
  State<PrintHistoryBody> createState() => _PrintHistoryBodyState();
}

class _PrintHistoryBodyState extends State<PrintHistoryBody> {
  final _repository = Get.find<RepositoryService>().diyRepository;
  CancelToken? _cancelToken;

  var _list = List<PrintHistoryModel>.empty();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  @override
  void didUpdateWidget(covariant PrintHistoryBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  void _init() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchPrintHistories(_cancelToken);
      if (r.success) {
        List<PrintHistoryModel> list = r.data;
        // 根据创建时间倒序排列
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
      logError('获取打印历史异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _list.isEmpty
        ? const Center(child: EmptyWidget())
        : ListView.separated(
            padding: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
            itemBuilder: (context, index) {
              final history = _list[index];
              return PrintHistoryItem(
                history: history,
                onTipPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      final mainTheme =
                          Theme.of(context).extension<MainTheme>();
                      return Dialog(
                        backgroundColor: mainTheme?.dialogBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        ),
                        child: CustomDialog(
                          text: history.payNotice,
                          confirmText: '我知道了',
                          onConfirm: () => Navigator.of(context).pop(),
                        ),
                      );
                    },
                  );
                },
                onPressed: () {
                  final buyId = history.buyId;
                  if (buyId == null || buyId.isEmpty) {
                    Fluttertoast.showToast(msg: '订单号为空');
                    return;
                  }
                  final parameters = {'buyId': buyId};
                  Get.toNamed('diy/purchaseDetail', parameters: parameters);
                },
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 20.h),
            itemCount: _list.length,
          );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
