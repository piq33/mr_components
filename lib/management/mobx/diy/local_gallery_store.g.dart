// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gallery_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocalGalleryStore on LocalGalleryBase, Store {
  late final _$dataAtom = Atom(name: 'LocalGalleryBase.data', context: context);

  @override
  ObservableList<AssetEntity> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<AssetEntity> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('LocalGalleryBase.init', context: context);

  @override
  Future<void> init(List<String> assetIds) {
    return _$initAsyncAction.run(() => super.init(assetIds));
  }

  late final _$LocalGalleryBaseActionController =
      ActionController(name: 'LocalGalleryBase', context: context);

  @override
  void select(AssetEntity asset) {
    final _$actionInfo = _$LocalGalleryBaseActionController.startAction(
        name: 'LocalGalleryBase.select');
    try {
      return super.select(asset);
    } finally {
      _$LocalGalleryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unselect(AssetEntity asset) {
    final _$actionInfo = _$LocalGalleryBaseActionController.startAction(
        name: 'LocalGalleryBase.unselect');
    try {
      return super.unselect(asset);
    } finally {
      _$LocalGalleryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
