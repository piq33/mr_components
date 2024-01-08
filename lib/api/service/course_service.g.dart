// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CourseRemoteApi implements CourseRemoteApi {
  _CourseRemoteApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BslResponse<List<ElectiveCourseModel>>> fetchElectiveCourses({
    String uri =
        '/v1/kindergarten/chcare/xiaosheng/listElectiveCourseForStudent',
    String env = 'kindergarten',
    required ElectiveCourseReq req,
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
        _setStreamType<BslResponse<List<ElectiveCourseModel>>>(Options(
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
    final value = BslResponse<List<ElectiveCourseModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ElectiveCourseModel>((i) =>
                  ElectiveCourseModel.fromJson(i as Map<String, dynamic>))
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
