// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daylife_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DayLifeStore on DayLifeBase, Store {
  late final _$loadingAtom =
      Atom(name: 'DayLifeBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$dataAtom = Atom(name: 'DayLifeBase.data', context: context);

  @override
  ObservableList<SimpleDayLifeModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<SimpleDayLifeModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$selectedDateAtom =
      Atom(name: 'DayLifeBase.selectedDate', context: context);

  @override
  DateTime get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  late final _$selectedWeekRangeAtom =
      Atom(name: 'DayLifeBase.selectedWeekRange', context: context);

  @override
  WeekdayRange get selectedWeekRange {
    _$selectedWeekRangeAtom.reportRead();
    return super.selectedWeekRange;
  }

  @override
  set selectedWeekRange(WeekdayRange value) {
    _$selectedWeekRangeAtom.reportWrite(value, super.selectedWeekRange, () {
      super.selectedWeekRange = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('DayLifeBase.fetchData', context: context);

  @override
  Future<List<SimpleDayLifeModel>> fetchData(
      DateTime startDate, DateTime endDate) {
    return _$fetchDataAsyncAction
        .run(() => super.fetchData(startDate, endDate));
  }

  late final _$DayLifeBaseActionController =
      ActionController(name: 'DayLifeBase', context: context);

  @override
  void selectDate(DateTime? dateTime) {
    final _$actionInfo = _$DayLifeBaseActionController.startAction(
        name: 'DayLifeBase.selectDate');
    try {
      return super.selectDate(dateTime);
    } finally {
      _$DayLifeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectWeekRange(WeekdayRange? weekRange) {
    final _$actionInfo = _$DayLifeBaseActionController.startAction(
        name: 'DayLifeBase.selectWeekRange');
    try {
      return super.selectWeekRange(weekRange);
    } finally {
      _$DayLifeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
data: ${data},
selectedDate: ${selectedDate},
selectedWeekRange: ${selectedWeekRange}
    ''';
  }
}
