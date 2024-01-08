import 'package:components/log/global_log.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/conservation/daylife_model.dart';
import 'package:components/repository/conservation_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'daylife_store.g.dart';

class DayLifeStore = DayLifeBase with _$DayLifeStore;

abstract class DayLifeBase with Store {
  DayLifeBase(this.studentCode, this.repository);

  final String studentCode;
  final ConservationRepository repository;
  CancelToken? _cancelToken;

  @observable
  var loading = true;

  @observable
  ObservableList<SimpleDayLifeModel> data = ObservableList.of([]);

  // 当前选中日期
  @observable
  DateTime selectedDate = DateTime.now();

  // 当前选中的周
  @observable
  WeekdayRange selectedWeekRange = WeekdayRange.empty();

  @action
  void selectDate(DateTime? dateTime) {
    selectedDate = dateTime ?? DateTime.now();
  }

  @action
  void selectWeekRange(WeekdayRange? weekRange) {
    selectedWeekRange = weekRange ?? WeekdayRange.empty();
  }

  @action
  Future<List<SimpleDayLifeModel>> fetchData(
    DateTime startDate,
    DateTime endDate,
  ) async {
    loading = true;
    if (studentCode.isEmpty) {
      logWarning('学生学号异常');
      return List.empty();
    }

    try {
      _cancelToken = CancelToken();
      final r = await repository.fetchSimpleDayLife(
        studentCode: studentCode,
        startDate: startDate,
        endDate: endDate,
        cancelToken: _cancelToken,
      );
      data = r.success ? ObservableList.of(r.data) : ObservableList.of([]);
    } catch (e, stackTrace) {
      logError('获取保育数据异常', e, stackTrace);
    } finally {
      loading = false;
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
