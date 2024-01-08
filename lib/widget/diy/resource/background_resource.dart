import 'dart:io';

import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/util/ui_utils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class BackgroundResource extends StatelessWidget {
  const BackgroundResource({
    this.width,
    this.height,
    this.alignment,
    this.boxFit = BoxFit.contain,
    this.borderRadius,
    this.margin,
    this.padding,
    this.data,
    this.child,
    super.key,
  });

  final double? width;
  final double? height;
  final Alignment? alignment;
  final BoxFit? boxFit;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final ResourceValue? data;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    ImageProvider<Object>? provider;
    Color? background;
    final tData = data;
    if (tData != null && tData is ResourceImageValue) {
      background = tData.type == ResourceValueType.color &&
              (tData.value?.isNotEmpty ?? false)
          ? HexColor.fromHex(tData.value!)
          : null;
      final value = tData.value ?? '';
      if (value.isNotEmpty) {
        switch (tData.type) {
          case ResourceValueType.url:
            provider = ExtendedNetworkImageProvider(
              value,
              cache: true,
              imageCacheName: tData.value,
            );
            break;
          case ResourceValueType.asset:
            provider = ExtendedAssetImageProvider(
              value,
              imageCacheName: tData.value,
            );
            break;
          case ResourceValueType.file:
            provider = ExtendedFileImageProvider(
              File(value),
              imageCacheName: tData.value,
            );
            break;
          default:
            break;
        }
      }
    }

    Widget container = Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: background,
        image: provider != null
            ? DecorationImage(
                image: provider,
                fit: boxFit,
                alignment: Alignment.center,
              )
            : null,
      ),
      child: child,
    );
    return borderRadius != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius!),
            child: container,
          )
        : container;
  }
}
