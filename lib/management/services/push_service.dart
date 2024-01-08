import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:components/config.dart';
import 'package:components/event/push_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/school_models.dart';
import 'package:components/push/push.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getuiflut/getuiflut.dart';

// 绑定失败重试间隔(单位：秒)
const _bindDelay = 5;

/// 推送管理服务
class PushService extends GetxService {
  final _service = Get.find<StudentService>();

  var _bindingAlias = '';
  var _bindingSn = '';
  StreamSubscription? _initSubscription;
  StreamSubscription? _aliasSubscription;
  CancelToken? _cancelToken;
  Worker? _worker;

  @override
  void onReady() {
    super.onReady();
    _initSubscription = eventBus.on<PushInitEvent>().listen((event) async {
      String? cid;
      try {
        cid = await Getuiflut.getClientId;
      } catch (e, stackTrace) {
        logError('获取个推cid异常', e, stackTrace);
      }
      if (cid == null || cid.isEmpty) {
        logWarning('个推cid为空');
        return;
      }
      logDebug('推送服务初始化: $cid');
      _init();
      _initSubscription?.cancel();
      _initSubscription = null;
    });
  }

  void _init() {
    _worker?.dispose();
    _worker = null;

    _aliasSubscription?.cancel();
    _aliasSubscription = null;

    // 当学生发生切换时，重新绑定学生别名
    _worker = ever(_service.selectedStudent, (student) {
      push.resetBadge();
      _unbindAlias();
      _refreshSn();
      if (student.validate) _bindAlias(student);
    });
    _aliasSubscription = eventBus.on<AliasEvent>().listen((event) {
      logDebug('alias绑定结果: $event');
      if (event.result.result) {
        logDebug('别名绑定成功');
      } else {
        _refreshSn();
        // 增加延时后重试绑定
        Future.delayed(
          const Duration(seconds: _bindDelay),
          () => _bindAlias(_service.selectedStudent.value),
        );
      }
    });
    logDebug('推送服务启动');
    _refreshSn();
    final student = _service.selectedStudent.value;
    if (student.validate) {
      logDebug('主动绑定学生别名');
      _bindAlias(student);
    }
  }

  void _refreshSn() {
    _bindingSn = Random().nextInt(10000000).toString();
  }

  void _bindAlias(StudentModel student) async {
    if (_bindingSn.isEmpty) _refreshSn();
    _bindingAlias = '${appConfig.aliasPrefix}s${student.studentCode}';
    push.bindAlias(_bindingAlias, _bindingSn);
    logDebug('绑定学生$_bindingAlias, sn: $_bindingSn');
  }

  void _unbindAlias() async {
    if (_bindingAlias.isEmpty || Platform.isAndroid) return;
    push.unbindAlias(_bindingAlias, _bindingSn, true);
    logDebug('解绑$_bindingAlias, sn: $_bindingSn');
    _bindingAlias = '';
    _bindingSn = '';
  }

  @override
  void onClose() {
    _worker?.dispose();
    _cancelToken?.cancel('dispose');
    _aliasSubscription?.cancel();
    _initSubscription?.cancel();
    _unbindAlias();
    super.onClose();
  }
}
