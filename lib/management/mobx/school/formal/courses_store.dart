import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/course_models.dart';
import 'package:bsl/repository/course_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'courses_store.g.dart';

class CoursesStore = CoursesBase with _$CoursesStore;

abstract class CoursesBase with Store {
  CoursesBase(this.count, this.repository);

  final int count;
  final CourseRepository repository;

  CancelToken? _cancelToken;
  List<ElectiveCourseModel> data = [];

  @observable
  ObservableFuture<BslResponse<List<ElectiveCourseModel>>?> fetchDataFuture =
      ObservableFuture.value(null);

  @action
  Future<List<ElectiveCourseModel>> fetchData({
    required String studentCode,
    required String schoolCode,
  }) async {
    data = [];
    _cancelToken = CancelToken();
    final future = repository.fetchElectiveCourses(
      studentCode: studentCode,
      schoolCode: schoolCode,
      cancelToken: _cancelToken,
    );
    fetchDataFuture = ObservableFuture(future);

    try {
      final r = await future;
      List<ElectiveCourseModel> list = r.data ?? List.empty();
      return data = r.success
          ? list.sublist(0, min(count, list.length)).toList()
          : List.empty();
    } catch (e, stackTrace) {
      logError('获取选修课程数据异常', e, stackTrace);
    }
    return List.empty();
  }

  void dispose() {
    _cancelToken?.cancel('dispose');
  }
}
