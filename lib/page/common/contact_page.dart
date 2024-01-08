import 'package:components/component/common/contact_body.dart';
import 'package:components/widget/common/default_appbar.dart';
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
