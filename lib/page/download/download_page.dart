import 'package:bsl/component/download/download_body.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.download.downloadBackground.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: const DownloadBody(),
      ),
    );
  }
}
