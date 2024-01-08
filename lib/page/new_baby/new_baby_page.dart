import 'package:bsl/component/new_baby/new_baby_form.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class NewBabyPage extends StatelessWidget {
  const NewBabyPage({this.displaySkip = false, super.key});

  final bool displaySkip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: defaultDarkAppBar(
        context: context,
        background: Colors.transparent,
        title: '添加宝宝',
        hideLeading: displaySkip,
      ),
      body: NewChildForm(displaySkip: displaySkip),
    );
  }
}
