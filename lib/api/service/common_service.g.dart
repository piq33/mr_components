// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CommonRemoteApi implements CommonRemoteApi {
  _CommonRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<ConfigModel>> fetchConfig({
    required String paramKey,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'paramKey': paramKey};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<ConfigModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/sysParam/list',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<ConfigModel>.fromJson(
      _result.data!,
      (json) => ConfigModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ZhaoJiaoResponse<List<RegionModel>>> fetchRegion({
    String uri = '/apis/bsmdata/view/dataChinaRegion/listTree',
    String env = 'zhaojiao',
    String? provinceName,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'provinceName': provinceName,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ZhaoJiaoResponse<List<RegionModel>>>(Options(
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
    final value = ZhaoJiaoResponse<List<RegionModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<RegionModel>(
                  (i) => RegionModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<List<DictModel>>> fetchDictData({
    String uri = '/v1/bsm/data/dictData/get',
    String env = 'zhaojiao',
    required String dictCodeType,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'dictCodeType': dictCodeType,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<DictModel>>>(Options(
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
    final value = BslResponse<List<DictModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<DictModel>(
                  (i) => DictModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<SendSmsCodeModel>> sendSmsCode(
    SendSmsCodeReq req,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = req;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<SendSmsCodeModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-data/app/login/sendSmsCode',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<SendSmsCodeModel>.fromJson(
      _result.data!,
      (json) => SendSmsCodeModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<List<AppEntranceModel>>> fetchEntranceConfig(
    String schoolCode,
    int type,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'itemType': type};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<AppEntranceModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-data/app/func_setting/${schoolCode}',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<AppEntranceModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<AppEntranceModel>(
                  (i) => AppEntranceModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<List<AdsModel>>> fetchAds(CancelToken? cancelToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<AdsModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/adMng',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<AdsModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<AdsModel>(
                  (i) => AdsModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<TencentCloudTempToken?>> fetchUploadToken(
      [CancelToken? cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<TencentCloudTempToken>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-resource/app/oss/endpoint/obtainTempSecretInfo',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<TencentCloudTempToken?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : TencentCloudTempToken.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<String?>> fetchTicketForKindergarten(
      CancelToken? cancelToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<String>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-data/app/login/getTicketForKindergarten',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<String?>.fromJson(
      _result.data!,
      (json) => json as String?,
    );
    return value;
  }

  @override
  Future<BslResponse<List<KindergartenModel>>> fetchKindergartenList({
    String uri = '/v1/kindergarten/data/getSchoolInfoByCondition',
    String env = 'kindergarten',
    required KindergartenReq req,
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
        _setStreamType<BslResponse<List<KindergartenModel>>>(Options(
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
    final value = BslResponse<List<KindergartenModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<KindergartenModel>(
                  (i) => KindergartenModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<PromotionModel>> fetchPromotionBySchoolCode({
    String uri = '/v1/kindergarten/data/getSchoolPromotionBySchoolCode',
    String env = 'kindergarten',
    required String schoolCode,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'uri': uri,
      r'env': env,
      r'schoolCode': schoolCode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<PromotionModel>>(Options(
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
    final value = BslResponse<PromotionModel>.fromJson(
      _result.data!,
      (json) => PromotionModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<String>> addContact({
    String uri = '/apis/bsmcore/potentialStudent/add?assignUser=false',
    String env = 'kindergarten',
    required ContactReq req,
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
        _setStreamType<BslResponse<String>>(Options(
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
    final value = BslResponse<String>.fromJson(
      _result.data!,
      (json) => json as String,
    );
    return value;
  }

  @override
  Future<BslResponse<AppVersionModel>> fetchAppVersion(
    String system,
    String version,
    CancelToken? cancelToken,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'appOsType': system,
      r'versionNo': version,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<AppVersionModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-system/app/version/checkAppVersion',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<AppVersionModel>.fromJson(
      _result.data!,
      (json) => AppVersionModel.fromJson(json as Map<String, dynamic>),
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
