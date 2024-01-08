import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'diy_service.g.dart';

class DiyRemoteService {
  late DiyRemoteApi api;

  DiyRemoteService(Dio dio) {
    api = _DiyRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class DiyRemoteApi {
  /// 获取diy模板
  @GET('$businessPrefix/app/diy/getAppDiyTemplateList')
  Future<BslResponse<List<TemplateModel>>> fetchTemplateList(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取diy模板详情
  @GET('$businessPrefix/app/diy/getTemplateDetail')
  Future<BslResponse<TemplateModel>> fetchTemplate(
    @Query('templateId') String templateId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取相册历史
  @GET('$businessPrefix/app/diy/getStudentHisAlbumList')
  Future<BslResponse<List<TemplateDetailModel>>> fetchHistories(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取相册详情
  @GET('$businessPrefix/app/diy/getStudentAlbumDetail')
  Future<BslResponse<TemplateDetailModel>> fetchTemplateDetail(
    @Query("studentAlbumId") String studentAlbumId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取diy音乐列表
  @GET('$businessPrefix/app/diy/listDiyMusic')
  Future<BslResponse<List<MusicModel>>> fetchMusicList(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 发布无模板相册
  @POST('$businessPrefix/app/diy/deployNoTemplate')
  Future<BslResponse<EmptyObjectData>> addNoTemplateDiy(
    @Body() DiyProductReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 发布带模板相册
  @POST('$businessPrefix/app/diy/deployDiyWithTemplate')
  Future<BslResponse<EmptyObjectData>> addTemplateDiy(
    @Body() DiyProductReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 编辑无模板相册
  @POST('$businessPrefix/app/diy/updateStudentAlbumNoTemplate')
  Future<BslResponse<EmptyObjectData>> editNoTemplateDiy(
    @Body() DiyProductReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 编辑带模板相册
  @POST('$businessPrefix/app/diy/updateStudentAlbumWithTemplate')
  Future<BslResponse<EmptyObjectData>> editTemplateDiy(
    @Body() DiyProductReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 更新相册信息
  @POST('$businessPrefix/app/diy/updateAlbumMain')
  Future<BslResponse<EmptyObjectData>> updateGallery(
    @Body() DiyProductReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 删除相册
  @POST('$businessPrefix/app/diy/deleteStudentAlbum')
  Future<BslResponse<EmptyObjectData>> deleteGallery(
    @Query("studentAlbumId") String studentAlbumId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 打印记录
  @GET('$businessPrefix/app/diy/listPrintRecords')
  Future<BslResponse<List<PrintHistoryModel>>> fetchPrintHistories(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 购买相册
  @POST('$businessPrefix/app/diy/buyAlbum')
  Future<BslResponse<PurchaseResponse>> buyAlbum(
    @Body() PurchaseReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取购买记录
  @GET('$businessPrefix/app/diy/getBuyDetail')
  Future<BslResponse<PrintHistoryModel>> fetchShipInfo(
    @Query('buyId') String buyId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 更新收货人信息
  @POST('$businessPrefix/app/diy/updateConsigneeInfo')
  Future<BslResponse<EmptyObjectData>> updateShipInfo(
    @Body() PurchaseReq req,
    @CancelRequest() CancelToken? cancelToken,
  );
}
