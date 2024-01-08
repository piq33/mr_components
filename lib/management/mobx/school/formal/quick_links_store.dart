import 'dart:collection';

import 'package:components/log/global_log.dart';
import 'package:components/model/navigation_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/repository/common_repository.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/util/exception_utils.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

part 'quick_links_store.g.dart';

class QuickLinksStore = QuickLinksBase with _$QuickLinksStore;

abstract class QuickLinksBase with Store {
  QuickLinksBase(this.repository, this.student);

  final CommonRepository repository;
  final StudentModel student;

  var _dispose = false;
  CancelToken? _cancelToken;

  @observable
  ObservableList<AppEntranceModel> data = ObservableList.of([]);

  List<AppEntranceModel> _emptyList() {
    return [
      AppEntranceModel(
        local: Assets.navigation.surveyIcon.path,
        functionName: '问卷调查',
        function: QuickLink(QuickLinkType.survey),
        onTap: (entrance) => Get.toNamed('survey'),
      ),
      AppEntranceModel(
        local: Assets.navigation.announcementIcon.path,
        functionName: '通知通告',
        function: QuickLink(QuickLinkType.notification),
        onTap: (entrance) => Get.toNamed('notification'),
      ),
      AppEntranceModel(
        local: Assets.navigation.attendanceIcon.path,
        functionName: '宝贝考勤',
        function: QuickLink(QuickLinkType.attendance),
        onTap: (entrance) => Get.toNamed('attendance'),
      ),
      AppEntranceModel(
        local: Assets.navigation.dayoffIcon.path,
        functionName: '宝贝请假',
        function: QuickLink(QuickLinkType.dayOff),
        onTap: (entrance) => Get.toNamed('dayOff'),
      ),
      AppEntranceModel(
        local: Assets.navigation.gameIcon.path,
        functionName: '教学游戏',
        function: QuickLink(QuickLinkType.weekPlan),
        onTap: (entrance) => Get.toNamed('weekPlan'),
      ),
      AppEntranceModel(
        local: Assets.navigation.recipesIcon.path,
        functionName: '营养食谱',
        function: QuickLink(QuickLinkType.recipes),
        onTap: (entrance) => Get.toNamed('recipes'),
      ),
      AppEntranceModel(
        local: Assets.navigation.clipIcon.path,
        functionName: '精彩瞬间',
        function: QuickLink(QuickLinkType.moment),
        onTap: (entrance) => Get.toNamed('album/moment'),
      ),
      AppEntranceModel(
        local: Assets.navigation.daylifeIcon.path,
        functionName: '一日生活',
        function: QuickLink(QuickLinkType.dayLife),
        onTap: (entrance) => Get.toNamed('conservation/dayLife'),
      ),
      AppEntranceModel(
        local: Assets.navigation.documentIcon.path,
        functionName: '宝贝档案',
        function: QuickLink(QuickLinkType.document),
        onTap: (entrance) {
          const url = 'student/archive/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.growUpIcon.path,
        functionName: '宝贝成长',
        function: QuickLink(QuickLinkType.growUp),
        onTap: (entrance) {
          const url = 'student/evaluate/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.galleryIcon.path,
        functionName: '宝贝相册',
        function: QuickLink(QuickLinkType.gallery),
        onTap: (entrance) {
          const url = 'student/album/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.contractIcon.path,
        functionName: '新生须知',
        function: QuickLink(QuickLinkType.contract),
        onTap: (entrance) {
          const url = 'student/nsn/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.childtaskIcon.path,
        functionName: '亲子作业',
        function: QuickLink(QuickLinkType.childTask),
        onTap: (entrance) => Get.toNamed('childtask'),
      ),
      AppEntranceModel(
        local: Assets.navigation.libraryIcon.path,
        functionName: '共享课堂',
        function: QuickLink(QuickLinkType.library),
        onTap: (entrance) {
          const url = 'student/resource/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.latecareIcon.path,
        functionName: '宝贝托管',
        function: QuickLink(QuickLinkType.latecare),
        onTap: (entrance) {
          const url = 'student/latecare/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.lessonIcon.path,
        functionName: '第二课堂',
        function: QuickLink(QuickLinkType.lesson),
        onTap: (entrance) {
          const url = 'student/courseCenter';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.curriculumIcon.path,
        functionName: '延时课表',
        function: QuickLink(QuickLinkType.curriculum),
        onTap: (entrance) {
          const url = 'student/courseSchedule';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.medicineIcon.path,
        functionName: '喂药申请',
        function: QuickLink(QuickLinkType.medication),
        onTap: (entrance) {
          const url = 'student/medicine/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.pickUpIcon.path,
        functionName: '宝贝接送',
        function: QuickLink(QuickLinkType.pickUp),
        onTap: (entrance) {
          const url = 'student/pickup/index';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.electiveScheduleIcon.path,
        functionName: '选修课表',
        function: QuickLink(QuickLinkType.electiveSchedule),
        onTap: (entrance) {
          const url = 'student/chcare/elective/courseSchedule';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.electiveCourseIcon.path,
        functionName: '选修课程',
        function: QuickLink(QuickLinkType.electiveCourse),
        onTap: (entrance) {
          const url = 'student/chcare/elective/courseList';
          final parameters = {'url': url};
          Get.toNamed('browser', parameters: parameters);
        },
      ),
      AppEntranceModel(
        local: Assets.navigation.kindergartenIntroIcon.path,
        functionName: '园所简介',
        function: QuickLink(QuickLinkType.kindergartenIntro),
        onTap: (entrance) {
          final schoolCode = student.schoolCode ?? '';
          if (schoolCode.isEmpty) {
            Fluttertoast.showToast(msg: '当前学生无绑定学校');
            return;
          }
          final parameters = {'schoolCode': schoolCode};
          Get.toNamed('home/kindergarten/promotion', parameters: parameters);
        },
      ),
    ];
  }

  @action
  Future<void> fetchData() async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    data = ObservableList.of([]);

    final schoolCode = student.schoolCode ?? '';
    if (schoolCode.isEmpty) {
      logWarning('该学生无绑定学校: $student');
      return;
    }

    final modules = _emptyList();
    try {
      _cancelToken = CancelToken();
      final r = await repository.fetchQuickLinkConfig(schoolCode, _cancelToken);
      if (r.success) {
        // 替换原有的嵌入式页面在线图片资源
        final List<AppEntranceModel> list = r.data;
        final map = HashMap<QuickLinkType, AppEntranceModel>();
        for (var e in list) {
          final function = e.function;
          if (function is! QuickLink) continue;

          map[function.type] = e;
        }

        for (var e in modules) {
          final function = e.function;
          if (function is! QuickLink) continue;

          final source = map[function.type];
          if (source != null) e.copyWith(source);
        }
        modules.sort((a, b) => a.seq.compareTo(b.seq));
        data = ObservableList.of(modules);
      }
    } catch (e, stackTrace) {
      logError('获取金刚区数据失败: ${e.toString()}', e, stackTrace);
      if (_dispose || e.isCancel) return;
      // 重试直到成功
      Future.delayed(const Duration(seconds: 3), () => fetchData());
    }
  }

  void dispose() {
    _dispose = true;
    _cancelToken?.cancel('dispose');
  }
}
