import 'package:components/api/service/time_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/time_models.dart';
import 'package:dio/dio.dart';

class TimeRepository {
  final TimeRemoteService _service;

  const TimeRepository(this._service);

  /// 按类型查询时光的年份列表
  Future<BslResponse<List<int>>> fetchTimeList({
    /// 时光类型
    required CatalogType catalog,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchTimeList(catalog.name, cancelToken);
  }

  /// 按类型及年份查询时光列表
  Future<BslResponse<List<TimeYearListModel>>> fetchTimePageList({
    required int year,

    /// 时光类型
    required CatalogType catalog,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchTimePageList(year, catalog.name, cancelToken);
  }

  /// 增加时光信息
  Future<BslResponse<dynamic>> addTimeLine({
    required AddTimeLineReq req,
    CancelToken? cancelToken,
  }) {
    return _service.api.addTimeLine(req, cancelToken);
  }

  /// 编辑时光信息
  Future<BslResponse<dynamic>> editTimeLine({
    required EditTimeLineReq req,
    CancelToken? cancelToken,
  }) {
    return _service.api.editTimeLine(req, cancelToken);
  }

  /// 删除时光信息
  Future<BslResponse<dynamic>> deleteTimeLine({
    required String id,
    CancelToken? cancelToken,
  }) {
    return _service.api.deleteTimeLine(id, cancelToken);
  }
}
