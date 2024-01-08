import 'package:bsl/component/me/cache_body.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class CachePage extends StatelessWidget {
  const CachePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '通用'),
      body: const CacheBody(),
    );
  }
}
