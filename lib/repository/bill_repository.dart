import 'package:bsl/api/service/bill_service.dart';
import 'package:bsl/model/bill_models.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';

class BillRepository {
  final BillRemoteService _service;

  const BillRepository(this._service);

  /// 获取学生的账单筛选信息(学校、学年学期)
  Future<BslResponse<List<FilterSchoolModel>>> fetchBillFilter(
    String studentCode,
    CancelToken? cancelToken,
  ) {
    final req = BillFilterReq(studentCode: studentCode);
    return _service.api.fetchBillFilter(req: req, cancelToken: cancelToken);
  }

  /// 订单预支付
  Future<BslResponse<PrepareOrderModel>> prepareOrder({
    required PrepareOrderReq req,
    CancelToken? cancelToken,
  }) {
    return _service.api.prepareOrder(req: req, cancelToken: cancelToken);
  }

  /// 获取账单列表
  Future<BslResponse<List<BillModel>>> fetchBill({
    required BillReq req,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchBill(req: req, cancelToken: cancelToken);
  }

  /// 获取账单详情
  Future<BslResponse<BillDetailModel>> fetchBillDetail({
    required String billCode,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchBillDetail(
      billCode: billCode,
      cancelToken: cancelToken,
    );
  }

  /// 获取支付方式
  Future<BslResponse<List<PaymentModel>>> fetchPaymentType({
    required String schoolCode,
    required String billCategory,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchPaymentType(
      schoolCode: schoolCode,
      billCategory: billCategory,
      cancelToken: cancelToken,
    );
  }

  /// 查询订单状态
  Future<BslResponse<OrderStatusModel>> fetchOrderStatus({
    required String billCode,
    required String orderSessionId,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchOrderStatus(
      billCode: billCode,
      orderSessionId: orderSessionId,
      cancelToken: cancelToken,
    );
  }

  /// 获取账单配置信息
  Future<BslResponse<List<BillConfigModel>>> fetchBillConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchBillConfig(schoolCode, cancelToken);
  }
}
