import 'package:components/component/diy/music_picker_body.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicPickerPage extends StatefulWidget {
  const MusicPickerPage({required this.music, super.key});

  final MusicModel? music;

  @override
  State<MusicPickerPage> createState() => _MusicPickerPageState();
}

class _MusicPickerPageState extends State<MusicPickerPage> {
  late var _music = widget.music;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '选择音乐',
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(_music),
            style: TextButton.styleFrom(
              padding: REdgeInsets.symmetric(horizontal: 15, vertical: 5),
            ),
            child: Text(
              '确定',
              style: TextStyle(
                fontSize: 14.sp,
                color: mainTheme?.titleColor,
              ),
            ),
          ),
        ],
      ),
      body: MusicPickerBody(
        music: _music,
        onChanged: (music) => setState(() => _music = music),
      ),
    );
  }
}
