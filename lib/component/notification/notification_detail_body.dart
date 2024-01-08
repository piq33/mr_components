import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:components/log/global_log.dart';
import 'package:components/management/services/notification_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/notification/notification_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/widget/common/no_more_content.dart';
import 'package:components/widget/notification/notification_detail.dart';
import 'package:components/widget/notification/signature_pad2.dart';
import 'package:components/widget/notification/signature_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class NotificationDetailBody extends StatefulWidget {
  const NotificationDetailBody({
    required this.messageId,
    required this.student,
    super.key,
  });

  /// 消息Id
  final int messageId;
  final StudentModel student;

  @override
  State createState() => _NotificationDetailBodyState();
}

class _NotificationDetailBodyState extends State<NotificationDetailBody> {
  final _notificationService = Get.find<NotificationService>();
  final _storageService = Get.find<StorageService>();
  final _notificationRepository =
      Get.find<RepositoryService>().notificationRepository;

  NotificationModel? _notification;
  NotificationOtherParam? _notificationOtherParam;
  NotificationConfirmModel? _confirmInfo;
  String? _signImg;

  UploadCancelToken? _uploadCancelToken;
  final _cancelTokens = List<CancelToken>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    final studentCode = widget.student.studentCode;
    if (studentCode.isEmpty) {
      Fluttertoast.showToast(msg: '当前学生信息异常');
      logWarning('学号为空: ${widget.student.toString()}');
      return;
    }
    try {
      SmartDialog.showLoading(msg: '查询通知...');
      final detail = await _fetchDetail();
      NotificationModel? notification = detail.data;
      final noticeId = notification?.bizId;
      if (!detail.success || notification == null || noticeId == null) {
        Fluttertoast.showToast(msg: '请求通知详情异常');
        return;
      }
      if (notification.otherParam.isNotEmpty) {
        try {
          _notificationOtherParam = NotificationOtherParam.fromJson(
            jsonDecode(notification.otherParam),
          );
        } catch (e, stackTrace) {
          logError('通知参数解析异常', e, stackTrace);
        }
      }
      // 若通知无须签名，则不需要请求签名详情
      if (_notificationOtherParam?.needConfirm ?? false) {
        final confirm = await _fetchConfirm(studentCode, noticeId.toString());
        if (!confirm.success) {
          Fluttertoast.showToast(msg: '无法获取通知是否已签名');
          return;
        }
        setState(() {
          _notification = notification;
          _confirmInfo = confirm.result;
          _signImg = _confirmInfo?.signImg;
        });
      } else {
        setState(() => _notification = notification);
      }
    } catch (e, stackTrace) {
      logError('请求通知详情及确认信息异常', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  Future<BslResponse<NotificationModel>> _fetchDetail() async {
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      return await _notificationRepository.fetchNotificationById(
        widget.messageId,
        cancelToken,
      );
    } catch (e, stackTrace) {
      logError('获取消息详情异常: ${e.toString()}', e, stackTrace);
      rethrow;
    }
  }

  Future<BslResponse<NotificationConfirmModel>> _fetchConfirm(
    String studentCode,
    String noticeId,
  ) async {
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      return await _notificationRepository.fetchNotificationConfirm(
        studentCode: studentCode,
        noticeId: noticeId,
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      logError('获取消息详情异常: ${e.toString()}', e, stackTrace);
      rethrow;
    }
  }

  // image输出为文件
  Future<File?> _imageToFile(ui.Image signature) async {
    final bytes = await signature.toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) return null;
    String tempPath = (await getTemporaryDirectory()).path;
    File file = File('$tempPath${Platform.pathSeparator}signature.png');
    await file.writeAsBytes(
      bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes),
    );
    return file;
  }

  Future<bool> _submitSignature(ui.Image signature) async {
    final studentCode = widget.student.studentCode;
    final sendCid = _notification?.sendCid;
    if (studentCode.isEmpty) {
      Fluttertoast.showToast(msg: '当前学生信息异常');
      logError('学号为空: $_notification');
      return false;
    }
    if (sendCid == null) {
      Fluttertoast.showToast(msg: '当前通知消息异常');
      logError('消息id为空: $_notification');
      return false;
    }

    SmartDialog.showLoading(msg: '正在提交...');
    // 输出签名到文件
    final file = await _imageToFile(signature);
    if (file == null) return false;
    final student = widget.student;
    final uniqueId = student.studentId?.toString() ??
        student.potentialId?.toString() ??
        student.studentCode;
    String url = '';
    try {
      // 先上传签名
      _uploadCancelToken = UploadCancelToken();
      url = await _storageService.upload(
        uniqueId: uniqueId,
        filepath: file.path,
        cancelToken: _uploadCancelToken,
      );
    } catch (e, stackTrace) {
      logError('上传通知签名异常: ${e.toString()}', e, stackTrace);
      SmartDialog.dismiss();
    } finally {
      try {
        file.deleteSync();
      } catch (e) {}
    }

    if (url.isEmpty) {
      Fluttertoast.showToast(msg: '签名上传异常');
      SmartDialog.dismiss();
      return false;
    }

    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _notificationRepository.signatureNotification(
        noticeId: sendCid,
        studentCode: studentCode,
        signatureUrl: url,
        cancelToken: cancelToken,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('提交通知签名异常: ${e.toString()}', e, stackTrace);
      try {
        file.deleteSync();
      } catch (e) {}
    } finally {
      SmartDialog.dismiss();
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final notification = _notification;
    final confirm = _confirmInfo;
    return AnimatedOpacity(
      opacity: notification == null ? 0 : 1,
      duration: const Duration(milliseconds: 500),
      child: notification == null
          ? const SizedBox()
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NotificationDetail(notification: notification),
                Padding(padding: REdgeInsets.only(top: 8)),
                // 未签名
                if (confirm != null && confirm.shouldSign && _signImg == null)
                  SignaturePad(
                    notification: notification,
                    submit: (signature) async {
                      if (signature == null) return;
                      final r = await _submitSignature(signature);
                      // 提交成功后更新签名详情
                      if (r) {
                        _fetchData();
                        _notificationService.refreshCategories();
                      }
                    },
                  ),
                // 重签
                if (confirm != null && confirm.shouldSign && _signImg != null)
                  SignatureView(
                    signUrl: _signImg!,
                    signedTime: confirm.readTime,
                    onResignPressed: () {
                      setState(() => _signImg = null);
                    },
                  ),
                // 已签名
                if (confirm != null && !confirm.shouldSign)
                  SignatureView(
                    signUrl: _signImg ?? '',
                    signedTime: confirm.readTime,
                  ),
                const NoMoreContent(),
              ],
            ),
    );
  }

  @override
  void dispose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();
    _uploadCancelToken?.cancel('dispose');
    super.dispose();
  }
}
