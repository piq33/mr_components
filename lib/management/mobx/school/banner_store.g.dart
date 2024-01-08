// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BannerStore on BannerBase, Store {
  late final _$dataAtom = Atom(name: 'BannerBase.data', context: context);

  @override
  ObservableList<AdsModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<AdsModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('BannerBase.fetchData', context: context);

  @override
  Future<List<AdsModel>> fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
