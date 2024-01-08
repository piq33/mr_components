import 'package:bsl/management/controller/school/student_controller.dart';
import 'package:bsl/model/school_models.dart';
import 'package:get/get.dart';

/// 全局学生信息管理服务
class StudentService extends GetxService {
  /// 当前所选择的学生(只在[StudentController]里进行修改)
  var selectedStudent = StudentModel.empty().obs;
}
