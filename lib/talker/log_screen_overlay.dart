import 'package:bsl/config.dart';
import 'package:bsl/log/global_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';

OverlayEntry? _logScreenOverlay;

void showLogScreenOverlay(BuildContext context) {
  if (_logScreenOverlay != null) return;
  final overlayState = Overlay.of(context);
  final overlayEntry = OverlayEntry(builder: (context) {
    return LogScreenButton(initX: 20.w, initY: 100.h);
  });
  overlayState.insert(overlayEntry);
  _logScreenOverlay = overlayEntry;
}

void hideLogScreenOverlay(BuildContext context) {
  final overlay = _logScreenOverlay;
  _logScreenOverlay = null;

  if (overlay == null) return;
  overlay.remove();
}

class LogScreenButton extends StatefulWidget {
  const LogScreenButton({this.initX, this.initY, super.key});
  final double? initX;
  final double? initY;

  @override
  State<LogScreenButton> createState() => _LogScreenButtonState();
}

class _LogScreenButtonState extends State<LogScreenButton> {
  double right = 0;
  double top = 0;

  @override
  void initState() {
    super.initState();
    right = widget.initX ?? 0;
    top = widget.initY ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: GestureDetector(
        onPanUpdate: (detail) {
          setState(() {
            right -= detail.delta.dx;
            top += detail.delta.dy;
          });
        },
        child: LogScreenWrapper(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            ),
          ),
          child: Container(
            width: 50.r,
            height: 50.r,
            decoration: const BoxDecoration(
              color: Colors.black38,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.adb, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class LogScreenWrapper extends StatefulWidget {
  const LogScreenWrapper({
    this.style,
    this.duration = const Duration(seconds: 5),
    required this.child,
    super.key,
  });

  final ButtonStyle? style;
  final Duration duration;
  final Widget child;

  @override
  State<LogScreenWrapper> createState() => _LogScreenWrapperState();
}

class _LogScreenWrapperState extends State<LogScreenWrapper> {
  var _logScreenDisplay = false;
  final _clickTimes = List<DateTime>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        switch (env) {
          case Env.PROD:
            _checkClickTimes();
            break;
          default:
            _toLogScreen();
            break;
        }
      },
      style: widget.style,
      child: widget.child,
    );
  }

  void _toLogScreen() async {
    if (_logScreenDisplay) return;

    _logScreenDisplay = true;
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return TalkerScreen(appBarTitle: '日志面板', talker: logger);
        },
      ),
    );
    _logScreenDisplay = false;
  }

  void _checkClickTimes() {
    final currentTime = DateTime.now();
    _clickTimes.add(currentTime);

    if (_clickTimes.length >= 5) {
      final firstClickTime = _clickTimes.first;
      final lastClickTime = _clickTimes.last;

      if (lastClickTime.difference(firstClickTime) <= widget.duration) {
        _clickTimes.clear();
        _toLogScreen();
      } else {
        _clickTimes.removeAt(0);
      }
    }
  }
}
