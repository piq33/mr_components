import 'package:components/api/bsl_api.dart';
import 'package:components/model/bill_models.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'bill_service.g.dart';

class BillRemoteService {
  late BillRemoteApi api;

  BillRemoteService(Dio dio) {
    api = _BillRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class BillRemoteApi {
  /// 获取学生的账单筛选信息(学校、学年学期)
  @POST(forwardPostApi)
  Future<BslResponse<List<FilterSchoolModel>>> fetchBillFilter({
    @Query('uri') String uri = '/billApi/v1/findStuBillSchoolAndYearTerm',
    @Query('env') String env = 'zhaojiao',
    @Body() required BillFilterReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 预下单
  @POST(forwardPostApi)
  Future<BslResponse<PrepareOrderModel>> prepareOrder({
    @Query('uri') String uri = '/v1/bsmbill/bill/prepareOrder',
    @Query('env') String env = 'zhaojiao',
    @Body() required PrepareOrderReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取账单列表
  @POST(forwardPostApi)
  Future<BslResponse<List<BillModel>>> fetchBill({
    @Query('uri') String uri = '/billApi/v1/findStudentBillsByApp',
    @Query('env') String env = 'zhaojiao',
    @Body() required BillReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取账单详情
  @GET(forwardGetApi)
  Future<BslResponse<BillDetailModel>> fetchBillDetail({
    @Query('uri') String uri = '/v1/bsmbill/bill/getStudentBillDetail',
    @Query('env') String env = 'zhaojiao',
    @Query('billCode') required String billCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取支付方式
  @GET(forwardGetApi)
  Future<BslResponse<List<PaymentModel>>> fetchPaymentType({
    @Query('uri') String uri = '/v1/bsmbill/bill/getPayTypeBySchool',
    @Query('env') String env = 'zhaojiao',
    @Query('schoolCode') required String schoolCode,
    @Query('billCategory') required String billCategory,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 查询订单状态
  @GET(forwardGetApi)
  Future<BslResponse<OrderStatusModel>> fetchOrderStatus({
    @Query('uri') String uri = '/v1/bhpay/queryByOrderSessionId',
    @Query('env') String env = 'zhaojiao',
    @Query('billCode') required String billCode,
    @Query('orderSessionId') required String orderSessionId,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取账单配置信息
  @GET('$dataPrefix/app/dict_menu/bill_category/{schoolCode}')
  Future<BslResponse<List<BillConfigModel>>> fetchBillConfig(
    @Path('schoolCode') String schoolCode,
    @CancelRequest() CancelToken? cancelToken,
  );
}
