import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zhaojiao_response.freezed.dart';
part 'zhaojiao_response.g.dart';

/// 招缴分页请求体
@Freezed(
  genericArgumentFactories: true,
  makeCollectionsUnmodifiable: false,
  toJson: true,
)
class ZhaoJiaoRequest<T> with _$ZhaoJiaoRequest {
  const ZhaoJiaoRequest._();
  const factory ZhaoJiaoRequest({
    /// 当前页大小
    required int size,

    /// 当前页数
    required int current,
    T? queryData,
  }) = ZhaoJiaoRequestData;

  factory ZhaoJiaoRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ZhaoJiaoRequestFromJson(json, fromJsonT);
}

/// 招缴的响应体类
@freezed
class ZhaoJiaoResponseHead with _$ZhaoJiaoResponseHead {
  const ZhaoJiaoResponseHead._();

  const factory ZhaoJiaoResponseHead({
    /// 响应码
    @Default('') String respCode,

    /// 响应描述
    @Default('') String respDesc,

    /// 响应状态
    @Default('01') String respStatus,

    /// 是否成功
    @Default(false) bool success,

    /// 跟踪id
    String? traceId,
  }) = _ZhaoJiaoResponseHead;

  factory ZhaoJiaoResponseHead.fromJson(Map<String, Object?> json) =>
      _$ZhaoJiaoResponseHeadFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class ZhaoJiaoResponse<T> with _$ZhaoJiaoResponse {
  const ZhaoJiaoResponse._();

  const factory ZhaoJiaoResponse(
    T? data,
    ZhaoJiaoResponseHead head,
    int code,
  ) = ZhaoJiaoResponseData;

  bool get success => head.success;

  factory ZhaoJiaoResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ZhaoJiaoResponseFromJson(json, fromJsonT);
}

@Freezed(
  genericArgumentFactories: true,
  makeCollectionsUnmodifiable: false,
)
class ZhaoJiaoPageResponse<T> with _$ZhaoJiaoPageResponse {
  const ZhaoJiaoPageResponse._();
  const factory ZhaoJiaoPageResponse(
    /// 总数量
    @String2IntJsonConverter() int total,

    /// 当前页大小
    @String2IntJsonConverter() int size,

    /// 当前页数
    @String2IntJsonConverter() int current,
    T? rows,
    @JsonKey(defaultValue: '') String msg,
  ) = ZhaoJiaoPageResponseData;

  bool get hasNext => (current * size) < total;
  bool get noMore => (current * size) >= total;

  factory ZhaoJiaoPageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ZhaoJiaoPageResponseFromJson(json, fromJsonT);
}
