import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:components/log/global_log.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/router/route_observer.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnMusicPressed = Function(AudioPlayer player, MusicModel? music);

class MusicItem extends StatefulWidget {
  const MusicItem({
    required this.music,
    required this.using,
    required this.playing,
    this.onPressed,
    this.onSwitchPressed,
    super.key,
  });

  final MusicModel music;
  final bool using;
  final bool playing;
  final OnMusicPressed? onPressed;
  final VoidCallback? onSwitchPressed;

  @override
  State<MusicItem> createState() => _MusicItemState();
}

class _MusicItemState extends State<MusicItem> with RouteAware {
  StreamSubscription? _durationSubscription;
  AudioPlayer? _player;

  /// 音频时长
  Duration? _duration;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  @override
  void didUpdateWidget(covariant MusicItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.music != widget.music) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
    }
  }

  void _init() async {
    _durationSubscription?.cancel();
    _player?.dispose();

    final player = AudioPlayer();
    _durationSubscription = player.onDurationChanged.listen(
      (Duration d) {
        if (!mounted) return;
        setState(() => _duration = d);
      },
    );
    final url = widget.music.url;
    if (url == null || url.isEmpty) return;
    await player.setSourceUrl(url);
    _player = player..setVolume(1);
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    final using = widget.using;
    final playing = widget.playing;
    return Container(
      color: playing ? diyTheme?.musicUsingBackground : Colors.transparent,
      child: TextButton(
        onPressed: () {
          final player = _player;
          if (player == null) return;
          widget.onPressed?.call(player, widget.music);
        },
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 6),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          widget.music.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: mainTheme?.titleColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        playing
                            ? Icons.pause_circle_outline_rounded
                            : Icons.play_circle_outline_rounded,
                        size: 11.r,
                        color: diyTheme?.musicControlIconColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    _duration?.mediaDuration() ?? '',
                    style: TextStyle(
                      color: mainTheme?.subTextColor,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            if (using || playing)
              TextButton(
                onPressed: using ? null : widget.onSwitchPressed,
                child: Container(
                  padding: REdgeInsets.only(
                    left: 12,
                    top: 2,
                    right: 12,
                    bottom: 4,
                  ),
                  decoration: ShapeDecoration(
                    color: using
                        ? diyTheme?.selectButtonBackground
                        : diyTheme?.unselectButtonBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.r),
                    ),
                  ),
                  child: Text(
                    using ? '使用' : '切换',
                    style: TextStyle(
                      color: using
                          ? diyTheme?.selectButtonTextColor
                          : diyTheme?.unselectButtonTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
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
  void dispose() {
    _durationSubscription?.cancel();
    _releasePlayer();
    super.dispose();
  }
}
