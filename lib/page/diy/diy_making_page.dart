import 'package:bsl/component/diy/diy_making_body.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// diy模板编辑页面，可以编辑模板下各页面的元素
class DiyMakingPage extends StatelessWidget {
  const DiyMakingPage({required this.product, super.key});

  final DiyProductModel product;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '制作相册',
        actions: [
          TextButton(
            onPressed: () async {
              product.syncTitle();
              final result =
                  await Get.toNamed('diy/publish', arguments: product);
              if (result ?? false) Get.back();
            },
            style: TextButton.styleFrom(padding: REdgeInsets.only(right: 23)),
            child: Text(
              '保存',
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: DiyMakingBody(product: product),
    );
  }
}
