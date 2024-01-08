import 'dart:io';

import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSelector extends StatelessWidget {
  const ImageSelector({
    this.width,
    this.height,
    this.file,
    required this.onPressed,
    super.key,
  });

  final double? width;
  final double? height;
  final File? file;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              color: Color(0xFFF4F4F4),
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(width ?? 0)),
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: width == null
                        ? BorderRadius.zero
                        : BorderRadius.all(Radius.circular(width!)),
                  ),
                ),
                child: file != null
                    ? Image.file(file!, width: width, height: height)
                    : Icon(
                        Icons.add,
                        color: mainTheme?.cornerTextColor,
                        size: 30.r,
                      ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Assets.common.imageSelectorIcon.image(
              width: 20.w,
              height: 20.h,
            ),
          )
        ],
      ),
    );
  }
}
