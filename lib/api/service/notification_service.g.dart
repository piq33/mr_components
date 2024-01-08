// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _NotificationRemoteApi implements NotificationRemoteApi {
  _NotificationRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<List<NotificationCategoryModel>>>
      fetchNotificationCategory(CancelToken? cancelToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<NotificationCategoryModel>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/message/selectGroupMessage',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<NotificationCategoryModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<NotificationCategoryModel>((i) =>
                  NotificationCategoryModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<BslPageResponse<List<NotificationModel>>>>
      fetchNotificationList(
    int current,
    String messageType,
    int size,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'current': current,
      r'messageType': messageType,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<BslPageResponse<List<NotificationModel>>>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/xiaosheng-bussiness/app/message/pagMessageList',
                  queryParameters: queryParameters,
                  data: _data,
                  cancelToken: cancelToken,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value =
        BslResponse<BslPageResponse<List<NotificationModel>>>.fromJson(
      _result.data!,
      (json) => BslPageResponse<List<NotificationModel>>.fromJson(
        json as Map<String, dynamic>,
        (json) => json is List<dynamic>
            ? json
                .map<NotificationModel>((i) =>
                    NotificationModel.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      ),
    );
    return value;
  }

  @override
  Future<BslResponse<NotificationModel>> fetchNotificationById(
    int messageId,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'messageId': messageId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<NotificationModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/message/getDetail',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<NotificationModel>.fromJson(
      _result.data!,
      (json) => NotificationModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<NotificationConfirmModel>> fetchNotificationConfirm({
    String uri = '/api/sso/queryNoticeTargetOneApi',
    String env = 'jiaowu',
    required NotificationConfirmReq req,
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
        _setStreamType<BslResponse<NotificationConfirmModel>>(Options(
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
    final value = BslResponse<NotificationConfirmModel>.fromJson(
      _result.data!,
      (json) => NotificationConfirmModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> readSystemNotification(
    int messageId,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'messageId': messageId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<EmptyObjectData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/message/readMsg',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<EmptyObjectData>.fromJson(
      _result.data!,
      (json) => EmptyObjectData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> submitNotification({
    String uri = '/api/sso/confirmNoticeTarget',
    String env = 'jiaowu',
    required NotificationSubmitReq req,
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
        _setStreamType<BslResponse<EmptyObjectData>>(Options(
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
    final value = BslResponse<EmptyObjectData>.fromJson(
      _result.data!,
      (json) => EmptyObjectData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> readAllNotificationByType(
    String messageType,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'messageType': messageType};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<EmptyObjectData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/message/readAllMsg',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<EmptyObjectData>.fromJson(
      _result.data!,
      (json) => EmptyObjectData.fromJson(json as Map<String, dynamic>),
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
