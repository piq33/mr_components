import 'package:components/model/navigation_model.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntranceButton extends StatelessWidget {
  const EntranceButton({required this.entrance, super.key});

  final AppEntranceModel entrance;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final local = entrance.local;
    final remote = entrance.remote;
    return TextButton(
      onPressed: () => entrance.onTap?.call(entrance),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (remote.isNotEmpty)
            CacheImage(
              imageUrl: remote,
              width: 37.w,
              height: 37.h,
              fit: BoxFit.contain,
              compressionRatio: 1,
              displayPlaceholder: false,
            ),
          if (remote.isEmpty && local.isNotEmpty)
            Image.asset(
              local,
              width: 37.w,
              height: 37.h,
            ),
          Padding(padding: REdgeInsets.only(top: 8)),
          Text(
            entrance.displayName,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
