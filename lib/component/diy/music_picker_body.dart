import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/resource/colors.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/list_utils.dart';
import 'package:bsl/widget/diy/music_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart' hide FirstWhereExt;

typedef MusicPickerCallback = void Function(MusicModel? music);

class MusicPickerBody extends StatefulWidget {
  const MusicPickerBody({this.music, this.onChanged, super.key});

  final MusicModel? music;
  final MusicPickerCallback? onChanged;

  @override
  State<MusicPickerBody> createState() => _MusicPickerBodyState();
}

class _MusicPickerBodyState extends State<MusicPickerBody> {
  final _repository = Get.find<RepositoryService>().diyRepository;
  AudioPlayer? _player;

  CancelToken? _cancelToken;
  StreamSubscription? _subscription;
  MusicModel? _using;
  MusicModel? _playing;
  var _list = List<MusicModel>.empty();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchData());
  }

  @override
  void didUpdateWidget(covariant MusicPickerBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchData());
  }

  void _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchMusicList(_cancelToken);
      if (r.success) {
        List<MusicModel> list = r.data ?? [];
        _using = list.firstWhereOrNull(
            (music) => music.musicId == widget.music?.musicId);
        _list = list;
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取音乐列表失败', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 12,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () async {
              await _player?.stop();
              await _player?.release();
              _player = null;
              widget.onChanged?.call(MusicModel.empty());
              if (mounted) {
                setState(() {
                  _playing = null;
                  _using = null;
                });
              }
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
            ),
            child: Container(
              height: 47.h,
              padding: REdgeInsets.symmetric(horizontal: 23),
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '无背景音乐',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  if (_using == null)
                    const Icon(
                      Icons.check,
                      color: ColorName.mainColor,
                      size: 16,
                    ),
                ],
              ),
            ),
          ),
          Container(height: 4.h, color: ColorName.scaffoldBackground),
          Expanded(
            child: ListView.separated(
              padding: REdgeInsets.symmetric(horizontal: 14, vertical: 4),
              itemBuilder: (context, index) {
                final music = _list[index];
                final playing = _playing == music;
                final using = _using == music;
                return MusicItem(
                  music: music,
                  using: using,
                  playing: playing && _player?.state == PlayerState.playing,
                  onPressed: (player, music) async {
                    logDebug('点击音乐: $music\n当前在播放音乐: $_playing');
                    if (_playing == music) {
                      switch (_player?.state) {
                        case PlayerState.playing:
                          logDebug('暂停$_playing音乐播放');
                          await _player?.pause();
                          break;
                        case PlayerState.paused:
                          logDebug('恢复$_playing音乐播放');
                          await _player?.resume();
                          break;
                        case PlayerState.completed:
                          logDebug('重新播放$_playing播放');
                          await _player?.seek(Duration.zero);
                          await _player?.resume();
                          break;
                        default:
                          break;
                      }
                      if (mounted) setState(() {});
                      return;
                    }

                    if (_playing != null) {
                      await _player?.pause();
                    }

                    _player = player;
                    try {
                      await _player?.seek(const Duration(seconds: 0));
                      await _player?.resume();
                      setState(() => _playing = music);
                      logDebug('开始播放$_playing');
                    } catch (e, stackTrace) {
                      logError('无法播放音频: $music', e, stackTrace);
                      Fluttertoast.showToast(msg: '音乐播放异常');
                      if (mounted) setState(() => _playing = null);
                    }
                  },
                  onSwitchPressed: () {
                    widget.onChanged?.call(music);
                    if (mounted) setState(() => _using = music);
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemCount: _list.length,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
