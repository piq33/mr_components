import 'dart:math';

import 'package:components/resource/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundAvatar extends StatelessWidget {
  const RoundAvatar({
    this.defaultAsset,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.avatar,
    this.onPressed,
    super.key,
  });

  final String? defaultAsset;
  final String? avatar;
  final double width;
  final double height;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: borderRadius == null
            ? null
            : RoundedRectangleBorder(borderRadius: borderRadius!),
      ),
      onPressed: onPressed,
      child: ClipRRect(
        borderRadius:
            borderRadius ?? BorderRadius.circular(max(width, height) / 2),
        child: avatar?.isEmpty ?? true
            ? _default()
            : CachedNetworkImage(
                width: width,
                height: height,
                imageUrl: avatar ?? '',
                fit: fit,
                placeholder: (context, url) => _default(),
                errorWidget: (context, url, error) => _default(),
              ),
      ),
    );
  }

  Widget _default() {
    return defaultAsset != null
        ? Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(defaultAsset!),
                fit: BoxFit.cover,
              ),
            ),
          )
        : Assets.common.defaultImage.image(
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
  }
}
