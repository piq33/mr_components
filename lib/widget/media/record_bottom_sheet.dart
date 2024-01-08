import 'dart:async';
import 'dart:io';

import 'package:components/log/global_log.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/media_theme.dart';
import 'package:components/util/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

const _encoder = AudioEncoder.aacEld;

class _RecordStart extends StatelessWidget {
  const _RecordStart({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '点击录音',
          style: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 30)),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.r),
            ),
          ),
          child: Container(
            width: 120.w,
            height: 120.h,
            padding: REdgeInsets.only(bottom: 31),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.media.recordStartIcon.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              '点击录音',
              style: TextStyle(
                color: mediaTheme?.recordButtonTextColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Recording extends StatelessWidget {
  const _Recording({required this.duration, this.onPressed});

  final Duration duration;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '再次点击停止录音',
          style: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 30)),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.r),
            ),
          ),
          child: Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.media.recordingBackground.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    duration.mediaDuration(),
                    style: TextStyle(
                      color: mediaTheme?.recordButtonTextColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: REdgeInsets.only(bottom: 31),
                  child: Text(
                    '录音中',
                    style: TextStyle(
                      color: mediaTheme?.recordButtonTextColor,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _RecordButton extends StatelessWidget {
  const _RecordButton({
    required this.iconPath,
    required this.text,
    this.gradient,
    this.onPressed,
  });

  final String iconPath;
  final String text;
  final Gradient? gradient;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    return Container(
      height: 39.h,
      decoration: BoxDecoration(
        gradient: gradient,
        color: gradient == null ? mediaTheme?.recordButtonBackground : null,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(iconPath, width: 10.w, height: 10.h),
            Padding(padding: REdgeInsets.only(left: 11)),
            Text(
              text,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecordPause extends StatelessWidget {
  const _RecordPause({
    required this.duration,
    this.onResume,
    this.onDelete,
    this.onFinish,
  });

  final Duration duration;
  final VoidCallback? onResume;
  final VoidCallback? onDelete;
  final VoidCallback? onFinish;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '点击继续录音',
          style: TextStyle(
            color: mainTheme?.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 30)),
        TextButton(
          onPressed: onResume,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.r),
            ),
          ),
          child: Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.media.recordingBackground.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    duration.mediaDuration(),
                    style: TextStyle(
                      color: mediaTheme?.recordButtonTextColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: REdgeInsets.only(bottom: 31),
                  child: Text(
                    '录音暂停',
                    style: TextStyle(
                      color: mediaTheme?.recordButtonTextColor,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _RecordButton(
              iconPath: Assets.media.recordDeleteIcon.path,
              text: '删除',
              onPressed: onDelete,
            ),
            _RecordButton(
              iconPath: Assets.media.recordFinishIcon.path,
              text: '完成',
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  mediaTheme?.recordBackground1 ?? Colors.transparent,
                  mediaTheme?.recordBackground2 ?? Colors.transparent,
                ],
              ),
              onPressed: onFinish,
            ),
          ],
        ),
      ],
    );
  }
}

typedef OnRecordFinish = Function(String? path);

class RecordBottomSheet extends StatefulWidget {
  const RecordBottomSheet({this.onRecordFinish, super.key});

  final OnRecordFinish? onRecordFinish;

  @override
  State<RecordBottomSheet> createState() => _RecordBottomSheetState();
}

class _RecordBottomSheetState extends State<RecordBottomSheet> {
  final _audioRecorder = Record();
  Timer? _timer;
  int _recordDuration = 0;
  String _path = '';
  StreamSubscription<RecordState>? _recordSub;
  StreamSubscription<Amplitude>? _amplitudeSub;
  RecordState _recordState = RecordState.stop;

  @override
  void initState() {
    _recordSub = _audioRecorder.onStateChanged().listen(
      (recordState) {
        logDebug('录音状态: $recordState');
        setState(() => _recordState = recordState);
      },
    );
    _amplitudeSub =
        _audioRecorder.onAmplitudeChanged(const Duration(seconds: 1)).listen(
      (event) {
        logDebug('振幅变化: ${event.current}');
      },
    );
    super.initState();
  }

  Future<void> _start() async {
    try {
      final hasPermission = await _audioRecorder.hasPermission();
      if (!hasPermission) {
        logWarning('当前没有录音权限');
        Fluttertoast.showToast(msg: '当前没有录音权限，请到系统设置赋予权限');
      }
      final isSupported = await _audioRecorder.isEncoderSupported(_encoder);
      logDebug('当前设备对${{_encoder.name}}兼容状态: $isSupported');
      logDebug('开始录音');

      /// 生成录音文件位置
      final dir = await getTemporaryDirectory();
      final time = DateTime.now().millisecondsSinceEpoch;
      final path = '${dir.path}${Platform.pathSeparator}$time.m4a';
      _path = path;
      _audioRecorder.start(encoder: _encoder, path: path);
      _recordDuration = 0;
      _startTimer();
    } catch (e, stackTrace) {
      logError('录音异常: ${e.toString()}', e, stackTrace);
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    _recordDuration = 0;
    final path = await _audioRecorder.stop();
    logDebug('录音结束: $path, 源地址: $_path');
  }

  Future<void> _pause() async {
    _timer?.cancel();
    await _audioRecorder.pause();
  }

  Future<void> _resume() async {
    _startTimer();
    await _audioRecorder.resume();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 284.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: REdgeInsets.only(top: 20)),
          if (_recordState == RecordState.stop) _RecordStart(onPressed: _start),
          if (_recordState == RecordState.record)
            _Recording(
              duration: Duration(seconds: _recordDuration),
              onPressed: _pause,
            ),
          if (_recordState == RecordState.pause)
            _RecordPause(
              duration: Duration(seconds: _recordDuration),
              onResume: _resume,
              onDelete: () async {
                await _stop();
                final path = _path;
                if (path.isEmpty) return;
                // 删除录音文件
                final file = File(path);
                try {
                  await file.delete();
                  logDebug('删除音频文件');
                } catch (e, stackTrace) {
                  logError('删除音频文件异常', e, stackTrace);
                } finally {
                  _path = '';
                }
              },
              onFinish: () async {
                await _stop();
                widget.onRecordFinish?.call(_path.isNotEmpty ? _path : null);
              },
            ),
        ],
      ),
    );
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }
}
