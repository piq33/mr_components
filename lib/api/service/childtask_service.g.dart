// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childtask_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ChildtaskRemoteApi implements ChildtaskRemoteApi {
  _ChildtaskRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<List<ChildtaskInfoModel>>> fetchChildtaskInfo({
    String uri = '/v1/kindergarten/bussiness/childtask/listWithDate',
    String env = 'kindergarten',
    required String schoolCode,
    required String phaseCode,
    required String courseCode,
    required String gradeCode,
    required String classCode,
    required String startDate,
    required String endDate,
    String? studentNo,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'schoolCode': schoolCode,
      r'phaseCode': phaseCode,
      r'courseCode': courseCode,
      r'gradeCode': gradeCode,
      r'classCode': classCode,
      r'startDate': startDate,
      r'endDate': endDate,
      r'studentNo': studentNo,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<ChildtaskInfoModel>>>(Options(
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
    final value = BslResponse<List<ChildtaskInfoModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ChildtaskInfoModel>(
                  (i) => ChildtaskInfoModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<ChildtaskModel>> fetchChildtask({
    String uri = '/v1/kindergarten/bussiness/childtask/detail',
    String env = 'kindergarten',
    required String code,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'code': code,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<ChildtaskModel>>(Options(
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
    final value = BslResponse<ChildtaskModel>.fromJson(
      _result.data!,
      (json) => ChildtaskModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<bool>> submitChildtask({
    String uri = '/v1/kindergarten/bussiness/childtask/work',
    String env = 'kindergarten',
    required ChildtaskkReq req,
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
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<BslResponse<bool>>(Options(
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
    final value = BslResponse<bool>.fromJson(
      _result.data!,
      (json) => json as bool,
    );
    return value;
  }

  @override
  Future<BslResponse<ChildtaskResultModel>> fetchClockInResult({
    String uri = '/v1/kindergarten/bussiness/childtask/result',
    String env = 'kindergarten',
    required String code,
    required String studentNo,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'code': code,
      r'studentNo': studentNo,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<ChildtaskResultModel>>(Options(
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
    final value = BslResponse<ChildtaskResultModel>.fromJson(
      _result.data!,
      (json) => ChildtaskResultModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> commentTask(
    CommentReq req,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
              '/api/xiaosheng-bussiness/app/hwComment',
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
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchComments(
    String taskCode,
    int current,
    int size,
    bool descSortFlag,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'current': current,
      r'size': size,
      r'descSortFlag': descSortFlag,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<BslPageResponse<List<CommentModel>>>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/xiaosheng-bussiness/app/hwComment/${taskCode}/comment',
                  queryParameters: queryParameters,
                  data: _data,
                  cancelToken: cancelToken,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value = BslResponse<BslPageResponse<List<CommentModel>>>.fromJson(
      _result.data!,
      (json) => BslPageResponse<List<CommentModel>>.fromJson(
        json as Map<String, dynamic>,
        (json) => json is List<dynamic>
            ? json
                .map<CommentModel>(
                    (i) => CommentModel.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      ),
    );
    return value;
  }

  @override
  Future<BslResponse<List<ChildtaskLikeModel>>> fetchChildtaskLikeInfo(
    int userId,
    List<int> resultIds,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userId': userId,
      r'taskCodeSubIds': resultIds,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<ChildtaskLikeModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/hwLikes/likes',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<ChildtaskLikeModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ChildtaskLikeModel>(
                  (i) => ChildtaskLikeModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> setChildtaskLike(
    ChildtaskLikeReq req,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
              '/api/xiaosheng-bussiness/app/hwLikes',
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
