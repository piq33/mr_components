import 'package:mobx/mobx.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

part 'local_gallery_store.g.dart';

class LocalGalleryStore = LocalGalleryBase with _$LocalGalleryStore;

abstract class LocalGalleryBase with Store {
  @observable
  ObservableList<AssetEntity> data = ObservableList.of([]);

  @action
  Future<void> init(List<String> assetIds) async {
    final list = List<AssetEntity>.empty(growable: true);
    for (final id in assetIds) {
      final asset = await AssetEntity.fromId(id);
      if (asset != null) list.add(asset);
    }
    data = ObservableList.of(list);
  }

  @action
  void select(AssetEntity asset) {
    data.add(asset);
  }

  @action
  void unselect(AssetEntity asset) {
    data.remove(asset);
  }
}
