import 'package:bsl/component/diy/print_history_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class PrintHistoryPage extends StatelessWidget {
  const PrintHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '打印记录'),
      body: const PrintHistoryBody(),
    );
  }
}
