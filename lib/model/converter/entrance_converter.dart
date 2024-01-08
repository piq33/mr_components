import 'package:bsl/model/navigation_model.dart';
import 'package:json_annotation/json_annotation.dart';

class EntranceTypeJsonConverter implements JsonConverter<EntranceType, int> {
  const EntranceTypeJsonConverter();

  @override
  EntranceType fromJson(int json) {
    switch (json) {
      case 1:
        return EntranceType.quickLink;
      case 2:
        return EntranceType.schoolModule;
      case 3:
        return EntranceType.bottom;
      case 4:
        return EntranceType.quickEntrance;
      default:
        return EntranceType.unknown;
    }
  }

  @override
  int toJson(EntranceType value) {
    return switch (value) {
      EntranceType.quickLink => 1,
      EntranceType.schoolModule => 2,
      EntranceType.bottom => 3,
      EntranceType.quickEntrance => 4,
      _ => 0,
    };
  }
}

class QuickLinkJsonConverter implements JsonConverter<QuickLinkType, String> {
  const QuickLinkJsonConverter();

  @override
  QuickLinkType fromJson(String json) {
    return switch (json) {
      'notification' => QuickLinkType.notification,
      'baby attendance' => QuickLinkType.attendance,
      'instructional game' => QuickLinkType.weekPlan,
      'nutritional diet' => QuickLinkType.recipes,
      'exciting moments' => QuickLinkType.moment,
      'baby files' => QuickLinkType.document,
      'baby growth' => QuickLinkType.growUp,
      'baby album' => QuickLinkType.gallery,
      'student notice' => QuickLinkType.contract,
      'parent-child homework' => QuickLinkType.childTask,
      'shared classroom' => QuickLinkType.library,
      'baby custody' => QuickLinkType.latecare,
      'second classroom' => QuickLinkType.lesson,
      'delayed class schedule' => QuickLinkType.curriculum,
      'medication application' => QuickLinkType.medication,
      'baby pick-up and drop off' => QuickLinkType.pickUp,
      'baby ask for leave' => QuickLinkType.dayOff,
      'questionnaire investigation' => QuickLinkType.survey,
      'elective course schedule' => QuickLinkType.electiveSchedule,
      'electives 1' => QuickLinkType.electiveCourse,
      'lesson management' => QuickLinkType.lessonManagement,
      'day life' => QuickLinkType.dayLife,
      'find kindergardon' => QuickLinkType.findKindergarten,
      'kindergarten intro' => QuickLinkType.kindergartenIntro,
      'fun activities' => QuickLinkType.funActivity,
      'about us' => QuickLinkType.aboutUs,
      'contract us' => QuickLinkType.contactUs,
      _ => QuickLinkType.unknown
    };
  }

  @override
  String toJson(QuickLinkType value) {
    return switch (value) {
      QuickLinkType.notification => 'notification',
      QuickLinkType.attendance => 'baby attendance',
      QuickLinkType.weekPlan => 'instructional game',
      QuickLinkType.recipes => 'nutritional diet',
      QuickLinkType.moment => 'exciting moments',
      QuickLinkType.document => 'baby files',
      QuickLinkType.growUp => 'baby growth',
      QuickLinkType.gallery => 'baby album',
      QuickLinkType.contract => 'student notice',
      QuickLinkType.childTask => 'parent-child homework',
      QuickLinkType.library => 'shared classroom',
      QuickLinkType.latecare => 'baby custody',
      QuickLinkType.lesson => 'second classroom',
      QuickLinkType.curriculum => 'delayed class schedule',
      QuickLinkType.medication => 'medication application',
      QuickLinkType.pickUp => 'baby pick-up and drop off',
      QuickLinkType.dayOff => 'baby ask for leave',
      QuickLinkType.survey => 'questionnaire investigation	',
      QuickLinkType.electiveSchedule => 'elective course schedule',
      QuickLinkType.electiveCourse => 'electives 1',
      QuickLinkType.lessonManagement => 'lesson management',
      QuickLinkType.dayLife => 'day life',
      QuickLinkType.findKindergarten => 'find kindergardon',
      QuickLinkType.kindergartenIntro => 'kindergarten intro',
      QuickLinkType.funActivity => 'fun activities',
      QuickLinkType.aboutUs => 'about us',
      QuickLinkType.contactUs => 'contract us',
      _ => '',
    };
  }
}

class SchoolModuleJsonConverter implements JsonConverter<ModuleType, String> {
  const SchoolModuleJsonConverter();

  @override
  ModuleType fromJson(String json) {
    return switch (json) {
      'notice' => ModuleType.notice,
      'to-do list' => ModuleType.todo,
      'banner' => ModuleType.banner,
      'class silhouette' => ModuleType.clip,
      'school information' => ModuleType.info,
      'cookbook' => ModuleType.recipes,
      'electives 2' => ModuleType.electiveCourse,
      'day life' => ModuleType.dayLife,
      _ => ModuleType.unknown
    };
  }

  @override
  String toJson(ModuleType value) {
    return switch (value) {
      ModuleType.notice => 'notice',
      ModuleType.todo => 'to-do list',
      ModuleType.banner => 'banner',
      ModuleType.clip => 'class silhouette',
      ModuleType.info => 'school information',
      ModuleType.recipes => 'cookbook',
      ModuleType.electiveCourse => 'electives 2',
      ModuleType.dayLife => 'day life',
      _ => '',
    };
  }
}

class BottomJsonConverter implements JsonConverter<BottomType, String> {
  const BottomJsonConverter();

  @override
  BottomType fromJson(String json) {
    return switch (json) {
      'campus' => BottomType.school,
      'time' => BottomType.time,
      'bo community' => BottomType.bosocial,
      'my' => BottomType.me,
      _ => BottomType.unknown
    };
  }

  @override
  String toJson(BottomType value) {
    return switch (value) {
      BottomType.school => 'campus',
      BottomType.time => 'time',
      BottomType.bosocial => 'bo community',
      BottomType.me => 'my',
      _ => '',
    };
  }
}

class QuickEntranceJsonConverter
    implements JsonConverter<QuickEntranceType, String> {
  const QuickEntranceJsonConverter();

  @override
  QuickEntranceType fromJson(String json) {
    return switch (json) {
      'commission' => QuickEntranceType.todo,
      'setting' => QuickEntranceType.setting,
      'lesson management' => QuickEntranceType.lessonManagement,
      'my voucher bag' => QuickEntranceType.voucher,
      _ => QuickEntranceType.unknown
    };
  }

  @override
  String toJson(QuickEntranceType value) {
    return switch (value) {
      QuickEntranceType.todo => 'commission',
      QuickEntranceType.setting => 'setting',
      QuickEntranceType.lessonManagement => 'lesson management',
      QuickEntranceType.voucher => 'my voucher bag',
      _ => '',
    };
  }
}
