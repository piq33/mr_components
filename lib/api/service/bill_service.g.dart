// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _BillRemoteApi implements BillRemoteApi {
  _BillRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<List<FilterSchoolModel>>> fetchBillFilter({
    String uri = '/billApi/v1/findStuBillSchoolAndYearTerm',
    String env = 'zhaojiao',
    required BillFilterReq req,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = req;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<FilterSchoolModel>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByPost',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<FilterSchoolModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<FilterSchoolModel>(
                  (i) => FilterSchoolModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<PrepareOrderModel>> prepareOrder({
    String uri = '/v1/bsmbill/bill/prepareOrder',
    String env = 'zhaojiao',
    required PrepareOrderReq req,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = req;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<PrepareOrderModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByPost',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<PrepareOrderModel>.fromJson(
      _result.data!,
      (json) => PrepareOrderModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<List<BillModel>>> fetchBill({
    String uri = '/billApi/v1/findStudentBillsByApp',
    String env = 'zhaojiao',
    required BillReq req,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = req;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<BillModel>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByPost',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<BillModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<BillModel>(
                  (i) => BillModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<BillDetailModel>> fetchBillDetail({
    String uri = '/v1/bsmbill/bill/getStudentBillDetail',
    String env = 'zhaojiao',
    required String billCode,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'billCode': billCode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<BillDetailModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByGet',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<BillDetailModel>.fromJson(
      _result.data!,
      (json) => BillDetailModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<List<PaymentModel>>> fetchPaymentType({
    String uri = '/v1/bsmbill/bill/getPayTypeBySchool',
    String env = 'zhaojiao',
    required String schoolCode,
    required String billCategory,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'schoolCode': schoolCode,
      r'billCategory': billCategory,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<PaymentModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByGet',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<PaymentModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<PaymentModel>(
                  (i) => PaymentModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<OrderStatusModel>> fetchOrderStatus({
    String uri = '/v1/bhpay/queryByOrderSessionId',
    String env = 'zhaojiao',
    required String billCode,
    required String orderSessionId,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'billCode': billCode,
      r'orderSessionId': orderSessionId,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<OrderStatusModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/transfer/callByGet',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<OrderStatusModel>.fromJson(
      _result.data!,
      (json) => OrderStatusModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<List<BillConfigModel>>> fetchBillConfig(
    String schoolCode,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<BillConfigModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-data/app/dict_menu/bill_category/${schoolCode}',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<BillConfigModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<BillConfigModel>(
                  (i) => BillConfigModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
