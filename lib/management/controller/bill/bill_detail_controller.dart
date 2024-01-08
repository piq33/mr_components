import 'dart:async';

import 'package:components/config.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/mixin/bill_mixin.dart';
import 'package:components/model/bill_models.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluwx/fluwx.dart';
import 'package:get/get.dart';

enum BillPageStatus { error, done, billError }

class BillDetailController extends GetxController with BillConfigMixin {
  BillDetailController(this.initialPage, this.billCode);
  final int initialPage;
  final String billCode;

  final _repository = Get.find<RepositoryService>().billRepository;
  late final pageController = PageController(initialPage: initialPage);
  final loading = true.obs;

  /// 账单详情
  final detail = BillDetailModel.empty().obs;

  /// 可提供的支付方式
  final paymentTypes = List<PaymentModel>.empty().obs;

  /// 当前选中的支付方式
  final activePayment = PaymentModel.empty().obs;
  CancelToken? _cancelToken;

  @override
  void onReady() {
    super.onReady();
    _fetchBillDetail().then(
      (status) {
        final billDetail = detail.value;
        if (status == BillPageStatus.billError ||
            (billDetail.validate &&
                !configs.value.billDetailEnable(billDetail))) {
          // 当前账单未启用，跳转到指定页面
          Get.offNamed('bill/offline');
        }
      },
    );
  }

  void goBack() {
    try {
      if (initialPage.round() >= (pageController.page?.round() ?? 0)) {
        Get.back();
      } else {
        pageController.previousPage(
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }
    } catch (e) {
      Get.back();
    }
  }

  bool get startPage =>
      initialPage.round() >= (pageController.page?.round() ?? 0);

  Future<BillPageStatus> _fetchBillDetail() async {
    try {
      loading.value = true;
      _cancelToken = CancelToken();
      final r = await _repository.fetchBillDetail(
        billCode: billCode,
        cancelToken: _cancelToken,
      );
      if (!r.success) return BillPageStatus.billError;

      BillDetailModel billDetail = r.data;

      // 根据订单信息获取支付途径
      final schoolCode = billDetail.schoolCode;
      final billCategory = billDetail.billCategory ?? '';
      if (schoolCode.isEmpty || billCategory.isEmpty) {
        loading.value = false;
        logWarning(
          '当前账单无法获取支付途径, schoolCode: $schoolCode, billCategory: $billCategory\n${billDetail.toString()}',
        );
        return BillPageStatus.billError;
      }

      await Future.wait([
        _fetchPaymentTypes(schoolCode, billCategory),
        fetchSchoolConfig(schoolCode),
      ]).whenComplete(() {
        loading.value = false;
        detail.value = billDetail;
      });
    } catch (e, stackTrace) {
      logError('获取账单$billCode详情异常: ${e.toString()}', e, stackTrace);
      return BillPageStatus.error;
    }
    return BillPageStatus.done;
  }

  Future<void> _fetchPaymentTypes(
      String schoolCode, String billCategory) async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchPaymentType(
        schoolCode: schoolCode,
        billCategory: billCategory,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        List<PaymentModel> paymentTypeList = r.data;
        paymentTypes.value = paymentTypeList.where((i) {
          /// 线下转账 需要判断二维码是否存在
          if (i.paymentTypeCode == PaymentTypeCode.bankTrans) {
            var qrCodeUrl = i.channelList.first.qrCodeUrl;
            logInfo('qrCodeUrl $qrCodeUrl');
            return qrCodeUrl != null && qrCodeUrl != '';
          }
          return true;
        }).toList();

        paymentTypes.value = paymentTypeList;
        var onlineItem = paymentTypes.firstWhereOrNull(
          (i) => i.isShow && i.isOnline,
        );

        if (onlineItem != null) {
          // 默认线上支付
          activePayment.value = onlineItem;
        } else {
          // 没有线上支付默认选中第一个
          activePayment.value = paymentTypes.first;
        }
      }
    } catch (e, stackTrace) {
      logError(
        '获取$schoolCode, $billCategory支付方式异常: ${e.toString()}',
        e,
        stackTrace,
      );
    }
  }

  void pay(bool online, PaymentModel payment) async {
    activePayment.value = payment;
    try {
      SmartDialog.showLoading(msg: '正在生成订单...');
      var orderInfo = await _prepareOrder();
      if (orderInfo == null) return;
      if (payment.isOnline) {
        // 跳转至微信碧云收银小程序
        var query =
            "orderSessionId=${orderInfo.orderSessionId}&appId=wx4525ab355874fd66&env=PRO&source=app";

        fluwx.open(
          target: MiniProgram(
            path: "pages/pay/pay?$query",
            username: wxBillAppid,
            miniProgramType: WXMiniProgramType.release,
          ),
        );
        final orderSessionId = orderInfo.orderSessionId;
        if (orderSessionId.isEmpty) {
          logWarning("orderSessionId 为空");
          return;
        }
        // 跳转到订单支付状态页面
        final parameters = {
          'billCode': billCode,
          'orderSessionId': orderSessionId
        };
        Get.offNamed('bill/billResult', parameters: parameters);
      } else {
        pageController.nextPage(
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }
    } catch (e, stackTrace) {
      Fluttertoast.showToast(msg: '支付失败');
      logError('跳转小程序异常', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  /// 预生成订单，调用碧合支付前需要在招缴系统生成订单
  Future<PrepareOrderModel?> _prepareOrder() async {
    var det = detail.value;
    try {
      var payment = activePayment.value;
      var accountPaymentId = payment.channelList.first.id;
      var req = PrepareOrderReq(
        billStudentCode: det.billCode,
        orderAmount: det.payAmount,
        accountPaymentId: accountPaymentId,
      );
      var r = await _repository.prepareOrder(req: req);
      PrepareOrderModel data = r.data;
      if (r.success) return data;
    } catch (e, stackTrace) {
      logError("支付订单预生成异常", e, stackTrace);
    }
    return null;
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    pageController.dispose();
    super.onClose();
  }
}
