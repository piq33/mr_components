import 'package:components/api/service/recipes_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/recipes_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class RecipesRepository {
  final RecipesRemoteService _service;

  const RecipesRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 获取日期对应的食谱
  Future<BslResponse<List<MenuDetailModel>>> fetchRecipesByDate({
    /// 学校编码
    String? schoolCode,

    /// 日期
    required DateTime searchDate,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchRecipesByDate(
      schoolCode: schoolCode,
      searchDate: _dateFormat.format(searchDate),
      cancelToken: cancelToken,
    );
  }

  /// 获取日期范围内的食谱
  Future<BslResponse<List<MenuModel>>> fetchRecipesByDateRange({
    /// 学校编码
    String? schoolCode,

    /// 日期范围
    required WeekdayRange range,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchRecipesByDateRange(
      schoolCode: schoolCode,
      startDate: _dateFormat.format(range.startDate),
      endDate: _dateFormat.format(range.endDate),
      cancelToken: cancelToken,
    );
  }
}
