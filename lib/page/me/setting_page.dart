import 'package:bsl/component/me/setting_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '设置'),
      body: const SingleChildScrollView(child: SettingBody()),
    );
  }
}
