// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClipStore on ClipBase, Store {
  Computed<ObservableList<ResourceWrapper>>? _$imagesComputed;

  @override
  ObservableList<ResourceWrapper> get images => (_$imagesComputed ??=
          Computed<ObservableList<ResourceWrapper>>(() => super.images,
              name: 'ClipBase.images'))
      .value;

  late final _$fetchDataFutureAtom =
      Atom(name: 'ClipBase.fetchDataFuture', context: context);

  @override
  ObservableFuture<BslResponse<List<ClipResourceModel>>?> get fetchDataFuture {
    _$fetchDataFutureAtom.reportRead();
    return super.fetchDataFuture;
  }

  @override
  set fetchDataFuture(
      ObservableFuture<BslResponse<List<ClipResourceModel>>?> value) {
    _$fetchDataFutureAtom.reportWrite(value, super.fetchDataFuture, () {
      super.fetchDataFuture = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('ClipBase.fetchData', context: context);

  @override
  Future<List<ResourceWrapper>> fetchData({required StudentModel student}) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(student: student));
  }

  @override
  String toString() {
    return '''
fetchDataFuture: ${fetchDataFuture},
images: ${images}
    ''';
  }
}
