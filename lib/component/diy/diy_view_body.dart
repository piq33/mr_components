import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:components/log/global_log.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/widget/diy/page_card.dart';
import 'package:components/widget/diy/paper_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nil/nil.dart';
import 'package:paper_transition/paper_transition.dart';

class DiyViewBody extends StatefulWidget {
  const DiyViewBody({required this.product, super.key});

  final DiyProductModel? product;

  @override
  State<DiyViewBody> createState() => _DiyViewBodyState();
}

const _autoNextDuration = Duration(seconds: 5);

class _DiyViewBodyState extends State<DiyViewBody> {
  AudioPlayer? _player;

  var _pages = List<PageJsonModel>.empty();
  var _pagerController = PaperController(pageCount: 0);
  // 每隔一段时间自动翻页
  Timer? _autoNextTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  @override
  void didUpdateWidget(covariant DiyViewBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.product == widget.product) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  void _init() async {
    final product = widget.product;
    final music = product?.music;
    final musicUrl = music?.url ?? '';
    if (musicUrl.isEmpty) {
      _releasePlayer();
    } else {
      _player = AudioPlayer();
      _player?.setReleaseMode(ReleaseMode.loop);
      _player?.setSourceUrl(musicUrl).then((value) => _player?.resume());
    }
    _pages = product?.template?.pages ?? [];
    _pagerController = PaperController(pageCount: _pages.length);
    _restartAutoNext();
    setState(() {});
  }

  void _autoNext() {
    if (_pagerController.hasNext) {
      _pagerController.next();
    }
    _restartAutoNext();
  }

  void _cancelAutoNext() {
    _autoNextTimer?.cancel();
    _autoNextTimer = null;
  }

  void _restartAutoNext() {
    _autoNextTimer?.cancel();
    _autoNextTimer = Timer(_autoNextDuration, _autoNext);
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraint) {
            final size = Size(constraint.maxWidth, constraint.maxHeight);
            builder(context, index) {
              final page = _pages[index];
              return PageCard(
                key: ValueKey(page),
                readOnly: true,
                page: page,
              );
            }

            return switch (product?.template?.transition) {
              PageTransitionType.fade => FadeContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                  onTap: _restartAutoNext,
                  onPanDown: (d) => _cancelAutoNext(),
                  onPanEnd: (d) => _restartAutoNext(),
                ),
              PageTransitionType.translate => TranslateContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                  onTap: _restartAutoNext,
                  onPanDown: (d) => _cancelAutoNext(),
                  onPanEnd: (d) => _restartAutoNext(),
                ),
              PageTransitionType.flip => FlipContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                ),
              _ => FlipContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                  onTap: _restartAutoNext,
                  onPanDown: (d) => _cancelAutoNext(),
                  onPanEnd: (d) => _restartAutoNext(),
                ),
            };
          },
        ),
        if (product != null && _player != null)
          Positioned(
            right: 8.w,
            top: 8.h,
            child: TextButton(
              onPressed: () async {
                if (product.music?.empty ?? true) return;

                final player = _player;
                if (player == null) return;

                if (player.state == PlayerState.playing) {
                  player.pause();
                } else {
                  player.seek(Duration.zero);
                  player.resume();
                }
              },
              style: TextButton.styleFrom(padding: REdgeInsets.all(8)),
              child: StreamBuilder(
                stream: _player!.onPlayerStateChanged,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: state == null
                        ? nil
                        : state == PlayerState.playing
                            ? Assets.diy.musicEnableIcon
                                .image(width: 32.w, height: 32.h)
                            : Assets.diy.musicDisableIcon
                                .image(width: 32.w, height: 32.h),
                  );
                },
              ),
            ),
          ),
        SafeArea(
          top: false,
          child: PaperControl(
            paperController: _pagerController,
            onPreviousPressed: _restartAutoNext,
            onNextPressed: _restartAutoNext,
          ),
        ),
      ],
    );
  }

  /// 释放播放器
  void _releasePlayer() async {
    try {
      _player?.dispose();
      _player = null;
    } catch (e) {
      logError('音频释放异常', e);
    }
  }

  @override
  void dispose() {
    _releasePlayer();
    _pagerController.dispose();
    _autoNextTimer?.cancel();
    super.dispose();
  }
}
