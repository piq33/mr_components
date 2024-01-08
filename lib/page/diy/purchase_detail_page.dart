import 'package:bsl/component/diy/purchase_detail_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class PurchaseDetailPage extends StatelessWidget {
  const PurchaseDetailPage({required this.buyId, super.key});

  final String buyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '支付详情'),
      body: SingleChildScrollView(child: PurchaseDetailBody(buyId: buyId)),
    );
  }
}
