import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/util/ui_utils.dart';
import 'package:bsl/widget/diy/resource/background_resource.dart';
import 'package:bsl/widget/diy/resource/image_resource.dart';
import 'package:bsl/widget/diy/resource/textfield_resource.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nil/nil.dart';

class PageCard extends StatelessWidget {
  const PageCard({this.readOnly = false, required this.page, super.key});

  final bool readOnly;
  final PageJsonModel page;

  @override
  Widget build(BuildContext context) {
    final resources = page.resources;
    final background = page.background;
    final child = LayoutBuilder(
      builder: (context, constraint) {
        return Stack(
          children: resources.map(
            (e) {
              final child = IgnorePointer(
                ignoring: readOnly,
                child: _ResourceContainer(resource: e),
              );
              final width =
                  e.width ?? (constraint.maxWidth - e.margin.horizontal);
              final height =
                  e.height ?? (constraint.maxHeight - e.margin.vertical);

              double x, y = 0.0;
              if (e.positionType == PositionType.ratio) {
                if (e.x == -1) {
                  x = (constraint.maxWidth - width - e.margin.horizontal) / 2;
                } else {
                  x = constraint.maxWidth * e.x;
                }
                if (e.y == -1) {
                  y = (constraint.maxHeight - height - e.margin.vertical) / 2;
                } else {
                  y = constraint.maxHeight * e.y;
                }
              } else {
                x = e.x;
                y = e.y;
              }

              final background = e.background;
              final bContainer = BackgroundResource(
                width: width,
                height: height,
                alignment: e.align,
                margin: e.margin,
                padding: e.padding,
                boxFit:
                    background is ResourceImageValue ? background.fit : null,
                borderRadius: e.box?.borderRadius.r,
                data: background,
                child: child,
              );
              logDebug('screenSize: $constraint\nx: $x y: $y\nresource: $e');

              return Positioned(
                left: x,
                top: y,
                child: e.rotate != 0
                    ? Transform.rotate(
                        angle: e.rotate * pi / 180,
                        child: bContainer,
                      )
                    : bContainer,
              );
            },
          ).toList(),
        );
      },
    );
    BoxDecoration? decoration;
    if (background != null && background is ResourceImageValue) {
      decoration = switch (background.type) {
        ResourceValueType.url => BoxDecoration(
            // 避免透明底
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(background.value ?? ''),
              fit: background.fit,
            ),
          ),
        ResourceValueType.color => BoxDecoration(
            color: HexColor.fromHex(background.value ?? 'FFFFFF'),
          ),
        _ => null,
      };
    }
    return Container(decoration: decoration, child: child);
  }
}

class _ResourceContainer extends StatelessWidget {
  const _ResourceContainer({required this.resource});

  final PageResource resource;

  @override
  Widget build(BuildContext context) {
    final box = resource.box;
    final borderColor = box?.borderColor;
    final borderWidth = box?.borderWidth ?? 0;
    final borderRadius = box?.borderRadius ?? 0;
    final enableBox =
        borderColor != null || borderWidth > 0 || borderRadius > 0;

    Widget? child;
    final value = resource.data;
    if (value != null) {
      switch (value) {
        case (ResourceImageValue()):
          child = ImageResource(data: value);
          break;
        case (ResourceTextValue()):
          child = TextFieldResource(data: value);
          break;
        default:
          child = nil;
          break;
      }
    }

    child = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius.r),
      child: Container(
        width: resource.width,
        height: resource.height,
        alignment: resource.align,
        child: child,
      ),
    );
    return Container(
      decoration: enableBox
          ? BoxDecoration(
              border: box?.borderType == BoxBorderType.line
                  ? Border.all(
                      color: borderColor ?? Colors.transparent,
                      width: borderWidth.r,
                    )
                  : null,
              borderRadius: BorderRadius.circular(borderRadius.r),
            )
          : null,
      child: box?.borderType == BoxBorderType.dash
          ? DottedBorder(
              dashPattern: const [3, 3],
              borderType: BorderType.RRect,
              color: borderColor ?? Colors.transparent,
              radius: Radius.circular(borderRadius.r),
              padding: REdgeInsets.all(6),
              child: child,
            )
          : child,
    );
  }
}
