import 'dart:convert';

import 'package:badges/badges.dart' as badges;
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/mixin/router_mixin.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/todo/todo_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/todo_theme.dart';
import 'package:components/util/ui_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({
    this.messageId,
    required this.title,
    required this.text,
    this.date,
    this.unread = false,
    required this.scene,
    required this.param,
    super.key,
  });

  final int? messageId;
  final String title;
  final String text;
  final DateTime? date;
  final bool unread;
  final PushCode scene;
  final String param;

  @override
  State createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> with SceneMixin {
  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);
  final _repository = Get.find<RepositoryService>().todoRepository;

  CancelToken? _cancelToken;

  // 是否需要确认
  var _param = const TodoOtherParam();
  late bool _unread = widget.unread;

  @override
  void initState() {
    super.initState();
    _parseOtherParam();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.messageId != widget.messageId) {
      setState(() {
        _param = const TodoOtherParam();
        _unread = widget.unread;
      });
    }
    _parseOtherParam();
  }

  void _parseOtherParam() {
    if (widget.scene != PushCode.notification) return;
    try {
      final param = TodoOtherParam.fromJson(jsonDecode(widget.param));
      setState(() => _param = param);
    } catch (e, stackTrace) {
      logError('解析消息参数异常: ${widget.param}', e, stackTrace);
    }
  }

  void _readTodo() async {
    if (!_unread) return;
    final messageId = widget.messageId;
    if (messageId == null) {
      logWarning('当前待办id为空, 无法调整阅读状态');
      return;
    }
    try {
      _cancelToken = CancelToken();
      final r = await _repository.readTodo(messageId, _cancelToken);
      if (r.success) {
        setState(() => _unread = false);
      } else {
        logDebug('待办设置阅读状态异常: $r');
      }
    } catch (e, stackTrace) {
      logError('待办项阅读异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final todoTheme = Theme.of(context).extension<TodoTheme>();
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        color: todoTheme?.todoNotificationBackground,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4.r),
            blurRadius: 12.r,
            color: todoTheme?.todoNotificationBoxShadow ?? Colors.transparent,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          _readTodo();
          toScene(
            scene: widget.scene,
            messageId: widget.messageId?.toString(),
            param: widget.param,
          );
        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: icon.image(
                width: 65.w,
                height: 65.h,
                fit: BoxFit.cover,
              ),
            ),
            Padding(padding: REdgeInsets.only(left: 8)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(context, widget.date),
                  Padding(padding: REdgeInsets.only(top: 7)),
                  Text(
                    widget.text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: mainTheme?.subTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: REdgeInsets.only(left: 8)),
            Assets.school.formal.scheduleItemMoreIcon.image(
              width: 22.w,
              height: 22.h,
            ),
            Padding(padding: REdgeInsets.only(right: 15)),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context, DateTime? date) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: badges.Badge(
            badgeStyle: badgeStyle(context),
            position: badgePosition(),
            showBadge: _unread,
            child: Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(padding: REdgeInsets.only(left: 10)),
        if (date != null)
          Flexible(
            child: Baseline(
              baseline: 14.h,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                _dateFormat.format(date),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: theme?.cornerTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
      ],
    );
  }

  AssetGenImage get icon {
    switch (widget.scene) {
      case PushCode.bill:
        return Assets.todo.todoIcon;
      default:
        return Assets.todo.defaultIcon;
    }
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
