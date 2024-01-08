// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_center_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserCenterStore on UserCenterBase, Store {
  late final _$dataAtom = Atom(name: 'UserCenterBase.data', context: context);

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

  late final _$fetchDataAsyncAction =
      AsyncAction('UserCenterBase.fetchData', context: context);

  @override
  Future<List<ActivityModel>> fetchData({required String phone}) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(phone: phone));
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
