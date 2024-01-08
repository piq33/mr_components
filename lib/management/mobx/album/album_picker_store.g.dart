// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_picker_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlbumPickerStore on AlbumPickerBase, Store {
  late final _$photosLoadingAtom =
      Atom(name: 'AlbumPickerBase.photosLoading', context: context);

  @override
  bool get photosLoading {
    _$photosLoadingAtom.reportRead();
    return super.photosLoading;
  }

  @override
  set photosLoading(bool value) {
    _$photosLoadingAtom.reportWrite(value, super.photosLoading, () {
      super.photosLoading = value;
    });
  }

  late final _$clipsLoadingAtom =
      Atom(name: 'AlbumPickerBase.clipsLoading', context: context);

  @override
  bool get clipsLoading {
    _$clipsLoadingAtom.reportRead();
    return super.clipsLoading;
  }

  @override
  set clipsLoading(bool value) {
    _$clipsLoadingAtom.reportWrite(value, super.clipsLoading, () {
      super.clipsLoading = value;
    });
  }

  late final _$photosAtom =
      Atom(name: 'AlbumPickerBase.photos', context: context);

  @override
  ObservableList<ResourceWrapper> get photos {
    _$photosAtom.reportRead();
    return super.photos;
  }

  @override
  set photos(ObservableList<ResourceWrapper> value) {
    _$photosAtom.reportWrite(value, super.photos, () {
      super.photos = value;
    });
  }

  late final _$clipsAtom =
      Atom(name: 'AlbumPickerBase.clips', context: context);

  @override
  ObservableList<ResourceWrapper> get clips {
    _$clipsAtom.reportRead();
    return super.clips;
  }

  @override
  set clips(ObservableList<ResourceWrapper> value) {
    _$clipsAtom.reportWrite(value, super.clips, () {
      super.clips = value;
    });
  }

  late final _$selectedListAtom =
      Atom(name: 'AlbumPickerBase.selectedList', context: context);

  @override
  ObservableList<String> get selectedList {
    _$selectedListAtom.reportRead();
    return super.selectedList;
  }

  @override
  set selectedList(ObservableList<String> value) {
    _$selectedListAtom.reportWrite(value, super.selectedList, () {
      super.selectedList = value;
    });
  }

  late final _$refreshImagesAsyncAction =
      AsyncAction('AlbumPickerBase.refreshImages', context: context);

  @override
  Future<void> refreshImages() {
    return _$refreshImagesAsyncAction.run(() => super.refreshImages());
  }

  late final _$submitAsyncAction =
      AsyncAction('AlbumPickerBase.submit', context: context);

  @override
  Future<AlbumPickerModel> submit() {
    return _$submitAsyncAction.run(() => super.submit());
  }

  late final _$AlbumPickerBaseActionController =
      ActionController(name: 'AlbumPickerBase', context: context);

  @override
  void onPicSelect(ResourceWrapper resource, bool checked) {
    final _$actionInfo = _$AlbumPickerBaseActionController.startAction(
        name: 'AlbumPickerBase.onPicSelect');
    try {
      return super.onPicSelect(resource, checked);
    } finally {
      _$AlbumPickerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
photosLoading: ${photosLoading},
clipsLoading: ${clipsLoading},
photos: ${photos},
clips: ${clips},
selectedList: ${selectedList}
    ''';
  }
}
