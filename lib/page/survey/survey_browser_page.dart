import 'package:bsl/component/survey/survey_browser_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class SurveyBrowserPage extends StatelessWidget {
  const SurveyBrowserPage({
    required this.title,
    required this.url,
    this.token,
    super.key,
  });

  final String title;
  final String url;
  final String? token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: title),
      body: SurveyBrowserBody(url: url, token: token),
    );
  }
}
