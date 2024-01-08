import 'dart:convert';

import 'package:components/api/service/diy_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/model/time/time_model.dart';
import 'package:dio/dio.dart';

class DiyRepository {
  final DiyRemoteService _service;

  const DiyRepository(this._service);

  /// 获取diy模板
  Future<BslResponse<List<TemplateModel>>> fetchTemplateList(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchTemplateList(cancelToken);
  }

  /// 获取diy模板详情
  Future<BslResponse<TemplateModel>> fetchTemplate(
    String templateId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchTemplate(templateId, cancelToken);
  }

  /// 获取购买历史
  Future<BslResponse<List<TemplateDetailModel>>> fetchHistories(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchHistories(cancelToken);
  }

  /// 获取相册详情
  Future<BslResponse<TemplateDetailModel>> fetchTemplateDetail(
    String studentAlbumId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchTemplateDetail(studentAlbumId, cancelToken);
  }

  /// 获取diy音乐列表
  Future<BslResponse<List<MusicModel>>> fetchMusicList(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchMusicList(cancelToken);
  }

  /// 发布无模板相册
  Future<BslResponse<EmptyObjectData>> addNoTemplateDiy({
    required String title,
    MusicModel? music,
    String? content,
    UploadFile? cover,
    CatalogType? catalogType,
    required List<UploadFile> uploadFiles,
    CancelToken? cancelToken,
  }) async {
    var req = DiyProductReq(
      title: title,
      content: content,
      cover: cover?.remote,
      useMusic: false,
      musicId: '-1',
      catalogType: catalogType,
      photoList: uploadFiles.map((e) => e.remote).toList(),
    );
    final musicId = music?.musicId;
    if (musicId != null) {
      req = req.copyWith(useMusic: true, musicId: musicId);
    }
    return await _service.api.addNoTemplateDiy(req, cancelToken);
  }

  /// 发布带模板相册
  Future<BslResponse<EmptyObjectData>> addTemplateDiy({
    required String templateId,
    required String title,
    MusicModel? music,
    String? content,
    UploadFile? cover,
    CatalogType? catalogType,
    required List<PageJsonModel> pages,
    CancelToken? cancelToken,
  }) async {
    var req = DiyProductReq(
      templateId: templateId,
      title: title,
      content: content,
      useMusic: false,
      musicId: '-1',
      cover: cover?.remote,
      catalogType: catalogType,
      pageList: pages.map((e) {
        return DiyPageReq(
          pageId: e.pageId,
          pageIndex: e.pageIndex,
          moduleJson: jsonEncode(e.toJson()),
        );
      }).toList(),
    );
    final musicId = music?.musicId;
    if (musicId != null) {
      req = req.copyWith(useMusic: true, musicId: musicId);
    }
    return await _service.api.addTemplateDiy(req, cancelToken);
  }

  /// 编辑无模板相册
  Future<BslResponse<EmptyObjectData>> editNoTemplateDiy({
    required String studentAlbumId,
    MusicModel? music,
    required List<UploadFile> uploadFiles,
    CancelToken? cancelToken,
  }) async {
    var req = DiyProductReq(
      studentAlbumId: studentAlbumId,
      useMusic: false,
      musicId: '-1',
      photoList: uploadFiles.map((e) => e.remote).toList(),
    );
    final musicId = music?.musicId;
    if (musicId != null) {
      req = req.copyWith(useMusic: true, musicId: musicId);
    }
    return await _service.api.editNoTemplateDiy(req, cancelToken);
  }

  /// 编辑带模板相册
  Future<BslResponse<EmptyObjectData>> editTemplateDiy({
    required String studentAlbumId,
    MusicModel? music,
    required List<PageJsonModel> pages,
    CancelToken? cancelToken,
  }) async {
    var req = DiyProductReq(
      studentAlbumId: studentAlbumId,
      useMusic: false,
      musicId: '-1',
      pageList: pages.map((e) {
        return DiyPageReq(
          pageId: e.pageId,
          pageIndex: e.pageIndex,
          moduleJson: jsonEncode(e.toJson()),
        );
      }).toList(),
    );
    final musicId = music?.musicId;
    if (musicId != null) {
      req = req.copyWith(useMusic: true, musicId: musicId);
    }
    return await _service.api.editTemplateDiy(req, cancelToken);
  }

  /// 更新相册信息
  Future<BslResponse<EmptyObjectData>> updateGallery({
    /// 相册id
    required String studentAlbumId,

    /// 相册内容
    String? content,

    /// 封面url
    String? cover,

    ///	标签

    CatalogType? catalogType,

    /// 相册标题
    String? title,
    CancelToken? cancelToken,
  }) {
    final req = DiyProductReq(
      studentAlbumId: studentAlbumId,
      content: content,
      cover: cover,
      catalogType: catalogType,
      title: title,
    );
    return _service.api.updateGallery(req, cancelToken);
  }

  /// 删除相册
  Future<BslResponse<EmptyObjectData>> deleteDiy(
    String studentAlbumId,
    CancelToken? cancelToken,
  ) {
    return _service.api.deleteGallery(studentAlbumId, cancelToken);
  }

  /// 打印记录
  Future<BslResponse<List<PrintHistoryModel>>> fetchPrintHistories(
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchPrintHistories(cancelToken);
  }

  /// 获取购买记录
  Future<BslResponse<PrintHistoryModel>> fetchShipInfo(
    String buyId,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchShipInfo(buyId, cancelToken);
  }

  /// 购买相册-自提
  Future<BslResponse<PurchaseResponse>> printDiySelf({
    /// 相册id
    required String studentAlbumId,
    CancelToken? cancelToken,
  }) {
    final req = PurchaseReq(
      studentAlbumId: studentAlbumId,
      deliveryType: DeliveryType.self,
    );
    return _service.api.buyAlbum(req, cancelToken);
  }

  /// 购买相册-快递
  Future<BslResponse<PurchaseResponse>> printDiyExpress({
    /// 相册id
    required String studentAlbumId,

    /// 收货人
    required String consignee,

    /// 收货人手机号
    required String mobile,

    /// 收货地址
    required SelectedRegion region,

    /// 详细地址
    required String address,
    CancelToken? cancelToken,
  }) {
    final req = PurchaseReq(
      studentAlbumId: studentAlbumId,
      consignee: consignee,
      mobile: mobile,
      province: region.province?.name ?? '',
      city: region.city?.name ?? '',
      address: address,
      deliveryType: DeliveryType.express,
    );
    return _service.api.buyAlbum(req, cancelToken);
  }

  /// 更新收货人信息
  Future<BslResponse<EmptyObjectData>> updateShipInfo({
    /// 购买记录id
    required String buyId,

    /// 收货人
    required String consignee,

    /// 收货人手机号
    required String mobile,

    /// 收货地址
    required SelectedRegion region,

    /// 详细地址
    required String address,
    CancelToken? cancelToken,
  }) {
    final req = PurchaseReq(
      buyId: buyId,
      consignee: consignee,
      mobile: mobile,
      province: region.province?.name ?? '',
      city: region.city?.name ?? '',
      address: address,
      deliveryType: DeliveryType.express,
    );
    return _service.api.updateShipInfo(req, cancelToken);
  }
}
