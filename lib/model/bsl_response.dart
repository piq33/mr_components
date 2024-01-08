import 'package:freezed_annotation/freezed_annotation.dart';

part 'bsl_response.freezed.dart';
part 'bsl_response.g.dart';

const successCode = 200;

@freezed
class EmptyObjectData with _$EmptyObjectData {
  const factory EmptyObjectData() = _EmptyObjectData;

  factory EmptyObjectData.fromJson(Map<String, Object?> json) =>
      _$EmptyObjectDataFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class BslResponse<T> with _$BslResponse {
  const BslResponse._();

  const factory BslResponse(
    int code,
    T? data,
    T? result,
    @JsonKey(defaultValue: '') String msg,
  ) = BslResponseData;

  bool get success => code == successCode;

  factory BslResponse.success(T data) =>
      BslResponse<T>(successCode, data, data, '');
  factory BslResponse.fail(int code, String msg) =>
      BslResponse<T>(code, null, null, msg);

  factory BslResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BslResponseFromJson(json, fromJsonT);
}

@Freezed(
  genericArgumentFactories: true,
  makeCollectionsUnmodifiable: false,
)
class BslPageResponse<T> with _$BslPageResponse {
  const BslPageResponse._();
  const factory BslPageResponse(
    /// 总数量
    int total,

    /// 总页数
    int pages,

    /// 当前页大小
    int size,

    /// 当前页数
    int current,
    T? records,
    @JsonKey(defaultValue: '') String msg,
  ) = BslPageResponseData;

  bool get hasNext => current < pages;
  bool get noMore => current >= pages;

  factory BslPageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BslPageResponseFromJson(json, fromJsonT);
}

@freezed
class UploadResponse with _$UploadResponse {
  const UploadResponse._();

  const factory UploadResponse(
    int code,
    @JsonKey(defaultValue: '') String msg,
    String fileName,
    String newFileName,
    String originalFilename,
    String url,
  ) = UploadResponseData;

  bool get success => code == successCode;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}
