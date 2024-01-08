import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:components/log/global_log.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/router/route_observer.dart';
import 'package:components/theme/media_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

typedef OnVoicePressed = Function(String? url, String? path);

/// 支持网络及本地音频预览，当有[url]参数时将忽略[path]参数
class VoicePlayerOutline extends StatelessWidget {
  const VoicePlayerOutline({
    /// 远程地址
    this.url,

    /// 本地地址
    this.path,
    this.decoration,
    this.onDeletePressed,
    super.key,
  });

  final String? url;
  final String? path;
  final Decoration? decoration;
  final OnVoicePressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(5),
      decoration: decoration,
      child: VoicePlayer(
        url: url,
        path: path,
        height: 49.h,
        onDeletePressed: onDeletePressed,
      ),
    );
  }
}

/// 支持网络及本地音频预览，当有[url]参数时将忽略[path]参数
class VoicePlayer extends StatefulWidget {
  const VoicePlayer({
    this.width,
    required this.height,

    /// 远程地址
    this.url,

    /// 本地地址
    this.path,
    this.onDeletePressed,
    super.key,
  }) : assert(url != null || path != null);

  final double? width;
  final double height;
  final String? url;
  final String? path;
  final OnVoicePressed? onDeletePressed;

  @override
  State<VoicePlayer> createState() => _VoicePlayerState();
}

class _VoicePlayerState extends State<VoicePlayer>
    with SingleTickerProviderStateMixin, RouteAware {
  late final AnimationController _controller;

  StreamSubscription? _stateSubscription;
  StreamSubscription? _durationSubscription;
  AudioPlayer? _player;

  /// 音频时长
  Duration? _duration;

  /// 防抖标记
  bool _debounce = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _init();
  }

  void _init() async {
    final player = AudioPlayer();
    _stateSubscription = player.onPlayerStateChanged.listen((event) {
      if (!mounted) return;
      switch (event) {
        case PlayerState.playing:
          // 最末帧会闪动，so max < 1
          _controller.repeat(max: 0.98, reverse: true);
          break;
        case PlayerState.paused:
        case PlayerState.stopped:
        case PlayerState.completed:
        case PlayerState.disposed:
          _controller.reset();
          break;
      }
      setState(() {});
    });
    _durationSubscription = player.onDurationChanged.listen(
      (Duration d) {
        if (!mounted) return;
        setState(() => _duration = d);
      },
    );
    if (widget.path?.isNotEmpty ?? false) {
      await player.setSourceDeviceFile(widget.path!);
    } else if (widget.url?.isNotEmpty ?? false) {
      await player.setSourceUrl(widget.url!);
    }
    _player = player..setVolume(1);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MediaTheme>();
    // 当有删除按钮时，音频组件需要设置margin
    double? actualWidth = widget.width;
    double actualHeight = widget.height;
    if (widget.onDeletePressed != null) {
      if (actualWidth != null) actualWidth -= 5.w;
      actualHeight -= 5.h;
    }
    final audioBar = Container(
      width: actualWidth,
      height: actualHeight,
      padding: REdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            theme?.recordBackground1 ?? Colors.transparent,
            theme?.recordBackground2 ?? Colors.transparent,
          ],
        ),
        borderRadius: BorderRadius.circular(actualHeight),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29.r),
              ),
            ),
            onPressed: () {
              final playerState = _player?.state;
              logInfo('player status: $playerState');
              if (_debounce) return;
              _debounce = true;
              final player = _player;
              if (player == null) {
                _debounce = false;
                logWarning('音频状态异常');
                return;
              }
              if (playerState == null) {
                _startPlayer();
              } else {
                switch (playerState) {
                  case PlayerState.stopped:
                  case PlayerState.completed:
                    player.seek(Duration.zero);
                    _startPlayer();
                    break;
                  case PlayerState.playing:
                    _pausePlayer();
                    break;
                  case PlayerState.paused:
                    _startPlayer();
                    break;
                  default:
                    break;
                }
              }
              _debounce = false;
            },
            child: _playingState(),
          ),
          const Spacer(),
          Lottie.asset(
            Assets.media.audioAni.path,
            controller: _controller,
            width: 118.r,
            height: 18.r,
          ),
          const Spacer(),
          Text(
            '${_duration?.inSeconds.toStringAsFixed(0) ?? ''}’’',
            style: TextStyle(
              color: theme?.recordDurationColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
    if (widget.onDeletePressed == null) return audioBar;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        audioBar,
        Positioned(
          top: -10.h,
          right: -4.w,
          child: TextButton(
            onPressed: () =>
                widget.onDeletePressed?.call(widget.url, widget.path),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r),
              ),
            ),
            child: Assets.media.mediaDeleteIcon.image(
              width: 24.w,
              height: 24.h,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }

  Widget _playingState() {
    final playerState = _player?.state ?? PlayerState.stopped;
    switch (playerState) {
      case PlayerState.playing:
        return Assets.media.audioPauseIcon.image(
          width: 29.w,
          height: 29.h,
        );
      default:
        return Assets.media.audioPlayIcon.image(
          width: 29.w,
          height: 29.h,
        );
    }
  }

  void _startPlayer() async {
    final player = _player;
    if (player == null) {
      logDebug('播放器启动异常');
      _debounce = false;
      return;
    }
    try {
      await player.resume();
    } catch (e) {
      logError('音频播放异常', e);
    }
  }

  void _pausePlayer() async {
    try {
      await _player?.pause();
    } catch (e) {
      logError('音频暂停播放异常', e);
    }
  }

  /// 结束播放
  void _stopPlayer() async {
    try {
      await _player?.stop();
      await _player?.seek(Duration.zero);
    } catch (e) {
      logError('音频中止播放异常', e);
    }
  }

  /// 释放播放器
  void _releasePlayer() async {
    try {
      _player?.dispose();
    } catch (e) {
      logError('音频释放异常', e);
    }
  }

  @override
  void didPushNext() {
    super.didPushNext();
    _pausePlayer();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _controller.dispose();
    _stateSubscription?.cancel();
    _durationSubscription?.cancel();
    _releasePlayer();
    super.dispose();
  }
}
