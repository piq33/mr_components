import 'dart:io';

import 'package:bsl/mixin/diy_mixin.dart';
import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/util/ui_utils.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ImageResource extends StatefulWidget {
  const ImageResource({required this.data, super.key});

  final ResourceImageValue data;

  @override
  State<ImageResource> createState() => _ImageResourceState();
}

class _ImageResourceState extends State<ImageResource> with DiyPickerMixin {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final value = data.value ?? '';
    return LayoutBuilder(
      builder: (context, constraint) {
        final width = data.width ?? constraint.maxWidth;
        final height = data.height ?? constraint.maxHeight;

        Widget child;
        if (value.isEmpty) {
          child = Assets.common.defaultImage
              .image(width: width, height: height, fit: BoxFit.cover);
        } else {
          child = switch (data.type) {
            ResourceValueType.color => Container(
                width: width,
                height: height,
                color: HexColor.fromHex(value),
              ),
            ResourceValueType.url => CacheImage(
                imageUrl: value,
                width: width,
                height: height,
                fit: data.fit,
                compressionRatio: 0.5,
                imageCacheName: data.value,
              ),
            ResourceValueType.asset => ExtendedImage.asset(
                value,
                width: width,
                height: height,
                fit: data.fit,
                compressionRatio: 0.5,
                imageCacheName: data.value,
              ),
            ResourceValueType.file => ExtendedImage.file(
                File(value),
                width: width,
                height: height,
                fit: data.fit,
                compressionRatio: 0.5,
                imageCacheName: data.value,
              ),
            _ => const SizedBox(),
          };
        }
        return TextButton(
          onPressed: () async {
            final selected =
                (data.value?.isEmpty ?? true) ? null : [data.value!];
            final files = await photoPicker(context, selected, 1);
            if (files == null || files.isEmpty) return;
            // 根据所选择图片，更新当前资源值
            final file = files.first;
            final asset = file.asset;
            if (asset != null) {
              final originalFile = await asset.file;
              if (originalFile != null) {
                data.type = ResourceValueType.file;
                data.value = originalFile.path;
              }
            } else if (file.uploaded) {
              data.type = ResourceValueType.url;
              data.value = file.remote;
            }
            setState(() {});
          },
          child: child,
        );
      },
    );
  }
}
