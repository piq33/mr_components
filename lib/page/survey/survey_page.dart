import 'package:bsl/component/survey/survey_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '问卷列表'),
      body: const SurveyBody(),
    );
  }
}
