import 'package:components/model/common_model.dart';
import 'package:components/repository/common_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'banner_store.g.dart';

class BannerStore = BannerBase with _$BannerStore;

abstract class BannerBase with Store {
  BannerBase(this.repository);

  final CommonRepository repository;

  CancelToken? _cancelToken;

  @observable
  ObservableList<AdsModel> data = ObservableList();

  @action
  Future<List<AdsModel>> fetchData() async {
    data.clear();
    _cancelToken = CancelToken();
    final r = await repository.fetchAds(_cancelToken);
    List<AdsModel> list = r.success ? r.data : List.empty();
    return data = ObservableList.of(list);
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
