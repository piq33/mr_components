import 'package:badges/badges.dart' as badges;
import 'package:bsl/config.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersion extends StatefulWidget {
  const AppVersion({required this.hasUpdate, this.onPressed, super.key});

  final bool hasUpdate;
  final VoidCallback? onPressed;

  @override
  State<AppVersion> createState() => _AppVersionState();
}

class _AppVersionState extends State<AppVersion> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _initVersion();
  }

  void _initVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = '${packageInfo.version}_$releaseDate';
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: meTheme?.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: badges.Badge(
                ignorePointer: true,
                showBadge: widget.hasUpdate,
                badgeStyle: badgeStyle(context),
                position: badgePosition(),
                child: Text(
                  '关于校声APP',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Text(
              '当前版本：$_version${env == Env.PROD ? '' : env.name}',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: meTheme?.versionTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
