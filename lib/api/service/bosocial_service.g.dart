// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bosocial_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _BoSocialRemoteApi implements BoSocialRemoteApi {
  _BoSocialRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<List<CatalogModel>>> fetchKnowledgeCatalogs(
      {CancelToken? cancelToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<CatalogModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/bsqreal/listAllCatalog',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<CatalogModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<CatalogModel>(
                  (i) => CatalogModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<List<TagModel>>> fetchKnowledgeTags(
      {CancelToken? cancelToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<List<TagModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/bsqreal/listAllTags',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<List<TagModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<TagModel>(
                  (i) => TagModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BslResponse<BslPageResponse<List<KnowledgeModel>>>>
      fetchKnowledgeList({
    String? catalogId,
    required int current,
    required int size,
    String? queryValue,
    List<String>? tagIdList,
    required String apiUrl,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'catalogId': catalogId,
      r'current': current,
      r'size': size,
      r'queryValue': queryValue,
      r'tagIdList': tagIdList,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'path': apiUrl};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<BslPageResponse<List<KnowledgeModel>>>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '',
                  queryParameters: queryParameters,
                  data: _data,
                  cancelToken: cancelToken,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value = BslResponse<BslPageResponse<List<KnowledgeModel>>>.fromJson(
      _result.data!,
      (json) => BslPageResponse<List<KnowledgeModel>>.fromJson(
        json as Map<String, dynamic>,
        (json) => json is List<dynamic>
            ? json
                .map<KnowledgeModel>(
                    (i) => KnowledgeModel.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      ),
    );
    return value;
  }

  @override
  Future<BslResponse<KnowledgeDetailModel>> fetchKnowledgeDetail({
    required String knowledgeId,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'knowledgeId': knowledgeId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<KnowledgeDetailModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/bsqreal/getDetail',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<KnowledgeDetailModel>.fromJson(
      _result.data!,
      (json) => KnowledgeDetailModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<EmptyObjectData>> readKnowledge({
    required String knowledgeId,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'knowledgeId': knowledgeId};
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
              '/api/xiaosheng-bussiness/app/bsqreal/addStudentView',
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
  Future<BslResponse<EmptyObjectData?>> likeKnowledge({
    required String knowledgeId,
    required bool like,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'knowledgeId': knowledgeId,
      r'ifLike': like,
    };
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
              '/api/xiaosheng-bussiness/app/bsqreal/likeReal',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<EmptyObjectData?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : EmptyObjectData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<BslPageResponse<List<CommentModel>>>> fetchCommentList({
    required String knowledgeId,
    required int current,
    required int size,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'knowledgeId': knowledgeId,
      r'current': current,
      r'size': size,
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
                  '/api/xiaosheng-bussiness/app/bsqreal/pageCommentTop',
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
  Future<BslResponse<EmptyObjectData?>> addComment({
    required CommentReq req,
    CancelToken? cancelToken,
  }) async {
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
              '/api/xiaosheng-bussiness/app/bsqreal/addComment',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<EmptyObjectData?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : EmptyObjectData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BslResponse<String>> deleteComment({
    required int commentId,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'commentId': commentId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BslResponse<String>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/xiaosheng-bussiness/app/bsqreal/deleteComment',
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
  Future<BslResponse<EmptyObjectData?>> likeComment({
    required String commentId,
    required bool like,
    CancelToken? cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'commentId': commentId,
      r'ifLike': like,
    };
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
              '/api/xiaosheng-bussiness/app/bsqreal/likeComment',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BslResponse<EmptyObjectData?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : EmptyObjectData.fromJson(json as Map<String, dynamic>),
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
