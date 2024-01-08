import 'package:components/component/me/person_info_body.dart';
import 'package:components/management/services/student_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonInfoPage extends GetView<StudentService> {
  const PersonInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Obx(() {
          final student = controller.selectedStudent.value;
          return PersonInfoBody(student: student);
        }),
      ),
    );
  }
}
