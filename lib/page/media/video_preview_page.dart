import 'dart:async';
import 'dart:io';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/mixin/media_mixin.dart';
import 'package:bsl/model/media_model.dart';
import 'package:bsl/theme/media_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewPage extends StatefulWidget {
  const VideoPreviewPage({required this.url, required this.path, super.key});

  final String url;
  final String path;

  @override
  State createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage>
    with SaveMediaMixin {
  _VideoPreviewPageState() {
    _videoListener = () {
      if (!mounted) return;
      Duration progress = Duration.zero,
          buffered = Duration.zero,
          total = Duration.zero;
      final videoValue = _controller.value;
      if (videoValue.isInitialized) {
        progress = videoValue.position;
        total = videoValue.duration;

        /// 获取最大缓存位置
        int maxBuffering = 0;
        for (final DurationRange range in videoValue.buffered) {
          final int end = range.end.inMilliseconds;
          if (end > maxBuffering) {
            maxBuffering = end;
            buffered = range.end;
          }
        }
      }
      final state = VideoDurationState(
        isPlaying: videoValue.isPlaying,
        progress: progress,
        buffered: buffered,
        total: total,
      );
      _videoStreamController.sink.add(state);
    };
  }

  late VideoPlayerController _controller;
  late StreamController<VideoDurationState> _videoStreamController;
  late VoidCallback _videoListener;

  @override
  void initState() {
    super.initState();

    /// 页面内允许横屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _init();
  }

  void _init() {
    _videoStreamController = StreamController();
    final url = widget.url;
    final path = widget.path;
    logDebug('正在加载视频\n网络地址: $url\n本地地址: $path');
    if (url.isEmpty && path.isEmpty) {
      _controller = VideoPlayerController.asset('');
      return;
    }
    if (url.isNotEmpty) {
      _controller = VideoPlayerController.networkUrl(Uri.parse(url))
        ..initialize().then((_) => setState(() {}));
    } else if (path.isNotEmpty) {
      _controller = VideoPlayerController.file(File(path))
        ..initialize().then((_) => setState(() {}));
    }
    _controller.play();
    _controller.addListener(_videoListener);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    final theme = Theme.of(context).extension<MediaTheme>();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              GestureDetector(
                onLongPress: () {
                  if (!_controller.value.isInitialized) return;
                  showSaverBottomSheet(widget.url);
                },
                child: Center(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),

              /// 底栏
              Container(
                alignment: Alignment.bottomCenter,
                margin: REdgeInsets.only(bottom: 15),
                child: StreamBuilder<VideoDurationState>(
                  stream: _videoStreamController.stream,
                  builder: (context, snapshot) {
                    final durationState = snapshot.data;
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: REdgeInsets.only(left: 2)),
                        _videoControlButton(theme, durationState),
                        _videoProgressBar(theme, durationState),
                        Padding(padding: REdgeInsets.only(right: 16)),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                top: orientation == Orientation.landscape ? 25.h : 25.h,
                left: orientation == Orientation.landscape ? 10.w : 22.w,
                child: IconButton(
                  onPressed: Get.back,
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: orientation == Orientation.landscape ? 36.r : 13.4.r,
                    color: theme?.backButtonColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _videoControlButton(
    MediaTheme? theme,
    VideoDurationState? durationState,
  ) {
    final isPlaying = durationState?.isPlaying ?? false;
    return SizedBox(
      width: 34.w,
      child: TextButton(
        onPressed: () {
          isPlaying ? _controller.pause() : _controller.play();
        },
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
        ),
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          color: theme?.mediaControlColor,
          size: 19.r,
        ),
      ),
    );
  }

  Widget _videoProgressBar(
    MediaTheme? theme,
    VideoDurationState? durationState,
  ) {
    final progress = durationState?.progress ?? Duration.zero;
    final buffered = durationState?.buffered ?? Duration.zero;
    final total = durationState?.total ?? Duration.zero;
    return Expanded(
      child: ProgressBar(
        barHeight: 2.h,
        thumbRadius: 4.r,
        thumbColor: theme?.mediaControlColor,
        timeLabelLocation: TimeLabelLocation.sides,
        baseBarColor: theme?.mediaControlColor?.withOpacity(0.6),
        progressBarColor: theme?.mediaControlColor,
        timeLabelTextStyle: TextStyle(
          color: theme?.mediaControlColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        timeLabelPadding: 4.w,
        buffered: buffered,
        progress: progress,
        total: total,
        onSeek: (duration) => _controller.seekTo(duration),
      ),
    );
  }

  @override
  void dispose() {
    _videoStreamController.close();
    _controller.removeListener(_videoListener);
    _controller.dispose();

    /// 恢复只允许竖屏模式
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
