// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clips_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClipsStore on ClipsBase, Store {
  late final _$fetchDataFutureAtom =
      Atom(name: 'ClipsBase.fetchDataFuture', context: context);

  @override
  ObservableFuture<List<ClipModel>> get fetchDataFuture {
    _$fetchDataFutureAtom.reportRead();
    return super.fetchDataFuture;
  }

  @override
  set fetchDataFuture(ObservableFuture<List<ClipModel>> value) {
    _$fetchDataFutureAtom.reportWrite(value, super.fetchDataFuture, () {
      super.fetchDataFuture = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('ClipsBase.fetchData', context: context);

  @override
  Future<List<ClipModel>> fetchData({required StudentModel student}) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(student: student));
  }

  @override
  String toString() {
    return '''
fetchDataFuture: ${fetchDataFuture}
    ''';
  }
}
