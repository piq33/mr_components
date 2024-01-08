import 'package:components/component/common/kindergarten_body.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class KindergartenPage extends StatelessWidget {
  const KindergartenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultDarkAppBar(context: context, title: '找园所'),
      body: const SingleChildScrollView(child: KindergartenBody()),
    );
  }
}
