import 'package:components/component/me/student_info_body.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class StudentInfoPage extends StatelessWidget {
  const StudentInfoPage({required this.studentCode, super.key});

  final String studentCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.me.infoBackground.provider(),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppbarWidget(
                title: '学生信息',
                background: Colors.transparent,
              ),
              StudentInfoBody(studentCode: studentCode),
            ],
          ),
        ),
      ),
    );
  }
}
