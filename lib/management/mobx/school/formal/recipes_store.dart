import 'package:components/log/global_log.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/recipes_models.dart';
import 'package:components/repository/recipes_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'recipes_store.g.dart';

class RecipesStore = RecipesBase with _$RecipesStore;

abstract class RecipesBase with Store {
  RecipesBase(this.repository);

  final RecipesRepository repository;

  CancelToken? _cancelToken;
  List<MenuDetailModel> data = [];

  @observable
  ObservableFuture<BslResponse<List<MenuDetailModel>>?> fetchDataFuture =
      ObservableFuture.value(null);

  @action
  Future<List<MenuDetailModel>> fetchData(String schoolCode) async {
    data = [];
    _cancelToken = CancelToken();
    final future = repository.fetchRecipesByDate(
      schoolCode: schoolCode,
      searchDate: DateTime.now(),
      cancelToken: _cancelToken,
    );
    fetchDataFuture = ObservableFuture(future);

    try {
      final r = await future;
      List<MenuDetailModel> list = r.data ?? List.empty();
      return data = r.success ? list : List.empty();
    } catch (e, stackTrace) {
      logError('获取每日菜单数据异常', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
