import 'package:bsl/component/me/potential/me_body.dart';
import 'package:flutter/material.dart';

class PotentialMePage extends StatelessWidget {
  const PotentialMePage({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MeBody());
  }
}
