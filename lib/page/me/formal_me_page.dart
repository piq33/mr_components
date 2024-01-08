import 'package:components/component/me/formal/me_body.dart';
import 'package:flutter/material.dart';

class FormalMePage extends StatelessWidget {
  const FormalMePage({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MeBody());
  }
}
