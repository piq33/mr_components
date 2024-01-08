import 'dart:collection';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/student_service.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _authService = Get.find<AuthService>();
  final _studentService = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().commonRepository;

  CancelToken? _cancelToken;
  Worker? _userWorker;
  Worker? _studentWorker;

  List<AppEntranceModel> _emptyList() {
    return [
      AppEntranceModel(
        functionName: '校园',
        function: Bottom(BottomType.school),
        local: 'assets/navigation/school_replace_icon.png',
      ),
      AppEntranceModel(
        functionName: '时光',
        function: Bottom(BottomType.time),
        local: 'assets/navigation/time_replace_icon.png',
      ),
      AppEntranceModel(
        functionName: '博社区',
        function: Bottom(BottomType.bosocial),
        local: 'assets/navigation/bosocial_replace_icon.png',
      ),
      AppEntranceModel(
        functionName: '我的',
        function: Bottom(BottomType.me),
        local: 'assets/navigation/me_replace_icon.png',
      ),
    ];
  }

  final bottomEntrance = List<AppEntranceModel>.empty().obs;

  var lastIndex = 0;
  var selectedIndex = 0.obs;

  void pageChanged(int page) {
    lastIndex = selectedIndex.value;
    selectedIndex.value = page;
  }

  @override
  void onReady() {
    super.onReady();
    // 每当用户发生变动,刷新App底栏配置
    _userWorker = ever(
      _authService.user,
      (user) => _refresh(_studentService.selectedStudent.value),
    );
    // 每当选择的学生发生变动，刷新App底栏配置
    _studentWorker = ever(
      _studentService.selectedStudent,
      (student) => _refresh(student),
    );

    final student = _studentService.selectedStudent.value;
    _refresh(student);
  }

  void _refresh(StudentModel student) async {
    lastIndex = 0;
    selectedIndex.value = 0;

    final list = await _fetchConfig(student);
    final displayList = list.where((element) => element.display).toList();
    if (student.hasStudentId && !student.schoolEnable) {
      displayList.removeWhere(
        (e) {
          final function = e.function;
          return function is Bottom &&
              (function.type == BottomType.time ||
                  function.type == BottomType.bosocial);
        },
      );
    }
    bottomEntrance.value = displayList;
  }

  Future<List<AppEntranceModel>> _fetchConfig(StudentModel student) async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    final result = _emptyList();
    _cancelToken = CancelToken();
    final schoolCode =
        (student.schoolCode?.isNotEmpty ?? false) ? student.schoolCode! : '-1';
    try {
      final r = await _repository.fetchBottomBarConfig(
        schoolCode,
        _cancelToken,
      );
      if (r.success) {
        final List<AppEntranceModel> list = r.data;
        final map = HashMap<BottomType, AppEntranceModel>();
        for (var e in list) {
          final function = e.function;
          if (function is! Bottom) continue;

          map[function.type] = e;
        }

        for (var e in result) {
          final function = e.function;
          if (function is! Bottom) continue;

          final source = map[function.type];
          if (source != null) e.copyWith(source);
        }
      }
    } catch (e, stackTrace) {
      logError('获取主页底栏配置数据失败: ${e.toString()}', e, stackTrace);
    }
    return result;
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _studentWorker?.dispose();
    _userWorker?.dispose();
    super.onClose();
  }
}
