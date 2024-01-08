import 'package:components/model/common_model.dart';
import 'package:get/get.dart';

typedef OnResourcePressed = Function(List<ResourceWrapper> list, int index);

// 根据剪影类型(视频、照片)跳转到对应页面
void galleryRouteTo(List<ResourceWrapper> resources, int index) {
  if (index >= resources.length) return;

  final item = resources[index];
  if (item.isVideo) {
    final parameters = {'url': item.url};
    Get.toNamed('video', parameters: parameters);
  } else {
    final images = resources
        .where((e) => !e.isVideo)
        .map((e) => e.toImageWrapper())
        .toList();
    final index =
        images.indexWhere((element) => element.heroTag == item.heroTag);
    final parameters = {
      'index': index == -1 ? '0' : index.toString(),
    };
    Get.toNamed(
      'gallery',
      parameters: parameters,
      arguments: images,
    );
  }
}
