import 'package:bsl/component/diy/product_history_body.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductHistoryPage extends StatelessWidget {
  const ProductHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '历史作品',
        actions: [
          TextButton(
            onPressed: () => Get.toNamed('diy/printHistory'),
            style: TextButton.styleFrom(padding: REdgeInsets.only(right: 23)),
            child: Text(
              '打印记录',
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: const ProductHistoryBody(),
    );
  }
}
