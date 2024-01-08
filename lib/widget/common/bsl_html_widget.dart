import 'dart:math';

import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

class BslHtmlWidget extends StatelessWidget {
  const BslHtmlWidget({this.width, required this.html, super.key});

  final double? width;
  final String html;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final random = Random();
    return HtmlWidget(
      html,
      textStyle: TextStyle(
        color: mainTheme?.textColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
      customWidgetBuilder: (element) {
        if (element.localName == 'img') {
          final src = element.attributes['src'] ?? '';
          if (src.isEmpty) return null;

          final tag = '${random.nextInt(10000)}/$src';
          return GestureDetector(
            onTap: () {
              final parameters = {'url': src, 'tag': tag};
              Get.toNamed('image', parameters: parameters);
            },
            child: Hero(
              tag: tag,
              child: CacheImage(width: width, imageUrl: src),
            ),
          );
        }
        return null;
      },
    );
  }
}
