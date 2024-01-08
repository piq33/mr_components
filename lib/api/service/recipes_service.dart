import 'package:components/api/bsl_api.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/recipes_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'recipes_service.g.dart';

class RecipesRemoteService {
  late RecipesRemoteApi api;

  RecipesRemoteService(Dio dio) {
    api = _RecipesRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class RecipesRemoteApi {
  /// 获取日期对应的食谱
  @GET(forwardGetApi)
  Future<BslResponse<List<MenuDetailModel>>> fetchRecipesByDate({
    @Query('uri')
    String uri = '/v1/kindergarten/bussiness/childcookbook/getByDate',
    @Query('env') String env = 'kindergarten',

    /// 学校编码
    @Query('schoolCode') String? schoolCode,

    /// 日期
    @Query('searchDate') required String searchDate,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取日期范围内的食谱
  @GET(forwardGetApi)
  Future<BslResponse<List<MenuModel>>> fetchRecipesByDateRange({
    @Query('uri') String uri = '/v1/kindergarten/bussiness/childcookbook/list',
    @Query('env') String env = 'kindergarten',

    /// 学校编码
    @Query('schoolCode') String? schoolCode,

    /// 开始日期
    @Query('startDate') required String startDate,

    /// 结束日期
    @Query('endDate') required String endDate,
    @CancelRequest() CancelToken? cancelToken,
  });
}
