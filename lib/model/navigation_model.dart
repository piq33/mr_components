import 'package:bsl/model/converter/entrance_converter.dart';
import 'package:bsl/model/converter/int2bool_converter.dart';

typedef OnEntranceModel = Function(AppEntranceModel entrance);

enum EntranceType {
  // 未知
  unknown,
  // 金刚区
  quickLink,
  // 正式生首页模块
  schoolModule,
  // 底栏
  bottom,
  // 快捷入口
  quickEntrance,
}

sealed class Entrance {}

class UnknownEntrance extends Entrance {}

enum QuickLinkType {
  // 未知
  unknown,
  // 通知通告
  notification,
  // 宝贝考勤
  attendance,
  // 教学游戏
  weekPlan,
  // 营养食谱
  recipes,
  // 精彩瞬间
  moment,
  // 宝贝档案
  document,
  // 宝贝成长
  growUp,
  // 宝贝相册
  gallery,
  // 新生须知
  contract,
  // 亲子作业
  childTask,
  // 共享课堂
  library,
  // 宝贝托管
  latecare,
  // 第二课堂
  lesson,
  // 延时课表
  curriculum,
  // 喂药申请
  medication,
  // 宝贝接送
  pickUp,
  // 宝贝请假
  dayOff,
  // 问卷调查
  survey,
  // 选修课表
  electiveSchedule,
  // 选修课程
  electiveCourse,
  // 课时管理
  lessonManagement,
  // 一日生活
  dayLife,
  // 找园所
  findKindergarten,
  // 园所简介
  kindergartenIntro,
  // 趣活动
  funActivity,
  // 关于我们
  aboutUs,
  // 联系我们
  contactUs,
}

class QuickLink extends Entrance {
  final QuickLinkType type;
  QuickLink(this.type);
}

enum ModuleType {
  // 未知
  unknown,
  // 公告
  notice,
  // 待办事项
  todo,
  // banner
  banner,
  // 剪影
  clip,
  // 资讯
  info,
  // 食谱
  recipes,
  // 选修课程
  electiveCourse,
  // 一日生活
  dayLife,
}

class SchoolModule extends Entrance {
  final ModuleType type;
  SchoolModule(this.type);
}

enum BottomType {
  // 未知
  unknown,
  // 校园
  school,
  // 时光
  time,
  // 博设圈
  bosocial,
  // 我的
  me,
}

class Bottom extends Entrance {
  final BottomType type;
  Bottom(this.type);
}

enum QuickEntranceType {
  // 未知
  unknown,
  // 待办
  todo,
  // 设置
  setting,
  // 课时管理
  lessonManagement,
  // 我的券包
  voucher,
}

class QuickEntrance extends Entrance {
  final QuickEntranceType type;
  QuickEntrance(this.type);
}

class AppEntranceModel {
  AppEntranceModel({
    this.id,
    required this.functionName,
    required this.function,
    String? displayName,
    this.remote = '',
    this.local = '',
    this.schoolCode = '',
    this.type = EntranceType.unknown,
    this.display = false,
    this.seq = 0,
    this.onTap,
  }) : displayName = displayName ?? functionName;

  /// id
  int? id;

  /// 名称
  String functionName;

  /// 功能
  Entrance function;

  /// 显示名称
  String displayName;

  /// 网络图标
  String remote;

  /// 本地图标
  final String local;

  /// 学校编码
  String schoolCode;

  /// 内容类型
  EntranceType type;

  /// 是否展示
  bool display;

  /// 排序
  int seq;

  final OnEntranceModel? onTap;

  bool get nativeEntrance => local.isNotEmpty;

  void copyWith(AppEntranceModel model) {
    id = model.id;
    displayName = model.displayName;
    function = model.function;
    remote = model.remote;
    schoolCode = model.schoolCode;
    type = model.type;
    display = model.display;
    seq = model.seq;
  }

  factory AppEntranceModel.fromJson(Map<String, dynamic> json) {
    final type = const EntranceTypeJsonConverter()
        .fromJson(json['itemType'] as int? ?? 0);
    final code = json['functionCode'] as String? ?? '';
    Entrance entrance = switch (type) {
      EntranceType.quickLink =>
        QuickLink(const QuickLinkJsonConverter().fromJson(code)),
      EntranceType.schoolModule =>
        SchoolModule(const SchoolModuleJsonConverter().fromJson(code)),
      EntranceType.bottom => Bottom(const BottomJsonConverter().fromJson(code)),
      EntranceType.quickEntrance =>
        QuickEntrance(const QuickEntranceJsonConverter().fromJson(code)),
      _ => UnknownEntrance(),
    };
    return AppEntranceModel(
      id: json['id'] as int?,
      functionName: json['functionName'] as String,
      function: entrance,
      displayName: json['displayName'] as String,
      remote: json['imgUrl'] as String? ?? '',
      local: json['local'] as String? ?? '',
      schoolCode: json['schoolCode'] as String? ?? '',
      type: type,
      display: json['displayFlag'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['displayFlag'] as int),
      seq: json['seq'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'functionName': functionName,
        'displayName': displayName,
        'imgUrl': remote,
        'local': local,
        'schoolCode': schoolCode,
        'itemType': const EntranceTypeJsonConverter().toJson(type),
        'displayFlag': display,
        'seq': seq,
      };
}
