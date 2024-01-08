import 'package:components/model/album_models.dart';
import 'package:components/theme/album_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipTag extends StatelessWidget {
  const ClipTag({required this.searchType, super.key});

  final SearchType searchType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AlbumTheme>();
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 9, vertical: 2.5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background(theme),
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Text(
        '${searchType.display}剪影',
        style: TextStyle(
          color: textColor(theme),
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color? background(AlbumTheme? theme) {
    switch (searchType) {
      case SearchType.all:
        return Colors.transparent;
      case SearchType.school:
        return theme?.schoolTagBackground;
      case SearchType.clazz:
        return theme?.classTagBackground;
      case SearchType.individual:
        return theme?.individualTagBackground;
    }
  }

  Color? textColor(AlbumTheme? theme) {
    switch (searchType) {
      case SearchType.all:
        return Colors.transparent;
      case SearchType.school:
        return theme?.schoolTagTextColor;
      case SearchType.clazz:
        return theme?.classTagTextColor;
      case SearchType.individual:
        return theme?.individualTagTextColor;
    }
  }
}
