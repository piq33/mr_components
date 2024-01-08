import 'package:components/log/global_log.dart';
import 'package:components/model/activity/activity_model.dart';
import 'package:components/model/common_model.dart';
import 'package:components/repository/activity_repository.dart';
import 'package:components/repository/common_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'activity_store.g.dart';

class ActivityStore = ActivityBase with _$ActivityStore;

abstract class ActivityBase with Store {
  ActivityBase({
    required this.queryAll,
    required this.commonRepository,
    required this.activityRepository,
  });

  final bool queryAll;
  final CommonRepository commonRepository;
  final ActivityRepository activityRepository;
  CancelToken? _cancelToken;

  @observable
  SelectedRegion selectedRegion = SelectedRegion.empty();

  @observable
  bool loading = true;

  @observable
  ObservableList<ActivityModel> data = ObservableList<ActivityModel>();

  @action
  Future<void> selectRegion(
    RegionModel? provinceRegion,
    RegionModel? cityRegion,
  ) async {
    loading = true;

    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    selectedRegion = SelectedRegion(province: provinceRegion, city: cityRegion);
    final province = provinceRegion?.name ?? '';
    final city = cityRegion?.name ?? '';
    if (province.isEmpty || city.isEmpty) {
      fetchData();
      return;
    }

    try {
      _cancelToken = CancelToken();
      final r = await commonRepository.fetchKindergartenList(
        province: province,
        city: city,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        List<KindergartenModel> kindergartens = r.data;
        final schoolCodes = kindergartens
            .where((e) => e.schoolCode?.isNotEmpty ?? false)
            .map((e) => e.schoolCode!)
            .toList();
        if (schoolCodes.isEmpty && !queryAll) {
          data = ObservableList.of([]);
          loading = false;
          return;
        }
        fetchData(schoolCodes: schoolCodes);
      }
    } catch (e, stackTrace) {
      logError('获取幼儿园列表异常', e, stackTrace);
      data = ObservableList.of([]);
      loading = false;
    }
  }

  @action
  Future<void> fetchData({List<String>? schoolCodes}) async {
    loading = true;

    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    data = ObservableList.of([]);
    try {
      _cancelToken = CancelToken();
      final r = await activityRepository.fetchActivityBySchoolCode(
        queryType: queryAll ? 1 : 2,
        schoolCodes: schoolCodes ?? [],
        cancelToken: _cancelToken,
      );
      if (r.success) data = ObservableList.of(r.data);
    } catch (e, stackTrace) {
      logError('获取活动列表数据异常', e, stackTrace);
    } finally {
      loading = false;
    }
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
