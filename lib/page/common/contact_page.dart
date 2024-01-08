import 'package:bsl/component/common/contact_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultDarkAppBar(context: context, title: '联系我们'),
      body: const SingleChildScrollView(child: ContactBody()),
    );
  }
}
