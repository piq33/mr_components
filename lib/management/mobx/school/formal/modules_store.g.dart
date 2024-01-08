// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ModulesStore on ModulesBase, Store {
  late final _$dataAtom = Atom(name: 'ModulesBase.data', context: context);

  @override
  ObservableList<AppEntranceModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<AppEntranceModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('ModulesBase.fetchData', context: context);

  @override
  Future<void> fetchData(String schoolCode) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(schoolCode));
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
