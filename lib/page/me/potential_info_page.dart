import 'package:components/component/me/potential_info_body.dart';
import 'package:flutter/material.dart';

class PotentialInfoPage extends StatelessWidget {
  const PotentialInfoPage({required this.potentialId, super.key});

  final int potentialId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PotentialInfoBody(potentialId: potentialId),
      ),
    );
  }
}
