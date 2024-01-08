import 'package:bsl/component/diy/diy_publish_body.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

/// diy最终发布页面
/// 操作成功后会生成diy相册，及在时光中新增相关记录
class DiyPublishPage extends StatelessWidget {
  const DiyPublishPage({required this.product, super.key});

  final DiyProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '制作相册'),
      body: SingleChildScrollView(child: DiyPublishBody(product: product)),
    );
  }
}
