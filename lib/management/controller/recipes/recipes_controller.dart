import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/student_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/recipes_models.dart';
import 'package:bsl/util/date_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class RecipesController extends GetxController {
  final _studentService = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().recipesRepository;

  // 当前选中日期
  final selectedDate = DateTime.now().obs;

  // 当前选中的周
  final selectedWeekRange = WeekdayRange.empty().obs;

  // 当前选中日期
  final selectedDay = DateTime.now().obs;

  // 数据请求标记
  final loading = true.obs;

  // 食谱
  final recipes = List<MenuModel>.empty().obs;

  // 当前选中的菜单
  final selectedRecipes = MenuModel.empty().obs;

  CancelToken? _cancelToken;
  Worker? _studentWorker;
  Worker? _monthWorker;
  Worker? _dayWorker;

  @override
  void onInit() {
    super.onInit();
    _studentWorker = ever(
      _studentService.selectedStudent,
      (student) => _fetchRecipes(selectedDate.value),
    );
    // 监听选中日期范围的变化，获取对应的食谱
    _monthWorker = ever(selectedDate, _fetchRecipes);
    _dayWorker = ever(selectedDay, (dateTime) {
      _selectRecipes(recipes.value, dateTime);
    });
  }

  @override
  void onReady() {
    super.onReady();
    _fetchRecipes(selectedDate.value);
  }

  void _selectRecipes(List<MenuModel> list, DateTime dateTime) {
    selectedRecipes.value = list.firstWhereOrNull(
          (element) => element.currDate?.sameMonthDay(dateTime) ?? false,
        ) ??
        MenuModel.empty();
  }

  void _fetchRecipes(DateTime date) async {
    final student = _studentService.selectedStudent.value;
    final schoolCode = student.schoolCode;
    if (schoolCode == null || schoolCode.isEmpty) {
      logWarning('当前选择学生学校编码为空: $student');
      return;
    }
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    logDebug('获取$date的食谱');
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    final lastDayOfMonth = DateTime(date.year, date.month + 1, 0);
    try {
      loading.value = true;
      _cancelToken = CancelToken();
      final r = await _repository.fetchRecipesByDateRange(
        schoolCode: schoolCode,
        range: WeekdayRange(
          startDate: firstDayOfMonth,
          endDate: lastDayOfMonth,
        ),
        // range,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        final list = r.data;
        recipes.value = list;
        _selectRecipes(list, selectedDay.value);
      }
    } catch (e, stackTrace) {
      logError('获取食谱异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  void selectTargetDate(DateTime dateTime) {
    selectedDate.value = dateTime;
    selectedDay.value = dateTime;
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _studentWorker?.dispose();
    _monthWorker?.dispose();
    _dayWorker?.dispose();
    super.onClose();
  }
}
