// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RecipesStore on RecipesBase, Store {
  late final _$fetchDataFutureAtom =
      Atom(name: 'RecipesBase.fetchDataFuture', context: context);

  @override
  ObservableFuture<BslResponse<List<MenuDetailModel>>?> get fetchDataFuture {
    _$fetchDataFutureAtom.reportRead();
    return super.fetchDataFuture;
  }

  @override
  set fetchDataFuture(
      ObservableFuture<BslResponse<List<MenuDetailModel>>?> value) {
    _$fetchDataFutureAtom.reportWrite(value, super.fetchDataFuture, () {
      super.fetchDataFuture = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('RecipesBase.fetchData', context: context);

  @override
  Future<List<MenuDetailModel>> fetchData(String schoolCode) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(schoolCode));
  }

  @override
  String toString() {
    return '''
fetchDataFuture: ${fetchDataFuture}
    ''';
  }
}
