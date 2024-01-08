// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ActivityStore on ActivityBase, Store {
  late final _$selectedRegionAtom =
      Atom(name: 'ActivityBase.selectedRegion', context: context);

  @override
  SelectedRegion get selectedRegion {
    _$selectedRegionAtom.reportRead();
    return super.selectedRegion;
  }

  @override
  set selectedRegion(SelectedRegion value) {
    _$selectedRegionAtom.reportWrite(value, super.selectedRegion, () {
      super.selectedRegion = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'ActivityBase.loading', context: context);

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

  late final _$dataAtom = Atom(name: 'ActivityBase.data', context: context);

  @override
  ObservableList<ActivityModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<ActivityModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$selectRegionAsyncAction =
      AsyncAction('ActivityBase.selectRegion', context: context);

  @override
  Future<void> selectRegion(
      RegionModel? provinceRegion, RegionModel? cityRegion) {
    return _$selectRegionAsyncAction
        .run(() => super.selectRegion(provinceRegion, cityRegion));
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('ActivityBase.fetchData', context: context);

  @override
  Future<void> fetchData({List<String>? schoolCodes}) {
    return _$fetchDataAsyncAction
        .run(() => super.fetchData(schoolCodes: schoolCodes));
  }

  @override
  String toString() {
    return '''
selectedRegion: ${selectedRegion},
loading: ${loading},
data: ${data}
    ''';
  }
}
