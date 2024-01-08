import 'dart:io';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/widget/common/custom_dialog.dart';
import 'package:bsl/widget/form/bsl_single_row_button_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class CacheBody extends StatefulWidget {
  const CacheBody({super.key});

  @override
  State<CacheBody> createState() => _CacheBodyState();
}

class _CacheBodyState extends State<CacheBody> {
  final _dirs = List<Directory>.empty(growable: true);
  String _cache = '正在计算...';

  @override
  void initState() {
    super.initState();
    _initCache();
  }

  void _initCache() async {
    final cache = await _loadApplicationCache();
    setState(() => _cache = _formatSize(cache));
  }

  /// 获取缓存
  Future<double> _loadApplicationCache() async {
    // 缓存文件夹
    try {
      final cacheDir = await getTemporaryDirectory();
      _dirs.add(cacheDir);
    } catch (e, stackTrace) {
      logError('当前系统不支持获取缓存文件夹', e, stackTrace);
    }

    try {
      final appCacheDir = await getApplicationCacheDirectory();
      _dirs.add(appCacheDir);
    } catch (e, stackTrace) {
      logError('当前系统不支持获取应用缓存文件夹', e, stackTrace);
    }

    // 外部缓存文件夹
    try {
      final externalCacheDir =
          await getExternalCacheDirectories().then((value) => value?.first);
      if (externalCacheDir != null) _dirs.add(externalCacheDir);
    } catch (e, stackTrace) {
      logError('当前系统不支持获取外部缓存文件夹', e, stackTrace);
    }

    // 获取缓存大小
    double total = 0;

    for (var dir in _dirs) {
      total += await _getTotalSizeOfFilesInDir(dir);
    }
    return total;
  }

  /// 计算文件大小
  Future<double> _getTotalSizeOfFilesInDir(final FileSystemEntity file) async {
    if (file is File) {
      int length = await file.length();
      return double.parse(length.toString());
    }
    if (file is Directory) {
      final List<FileSystemEntity> children = file.listSync();
      double total = 0;
      for (final FileSystemEntity child in children) {
        total += await _getTotalSizeOfFilesInDir(child);
      }
      return total;
    }
    return 0;
  }

  /// 缓存大小格式转换
  String _formatSize(double? value) {
    if (value == null) return '0';
    List<String> unitArr = List.empty(growable: true)
      ..add('B')
      ..add('K')
      ..add('M')
      ..add('G');
    var temp = value;
    int index = 0;
    while (temp > 1024) {
      index++;
      temp = temp / 1024;
    }
    String size = temp.toStringAsFixed(2);
    return size + unitArr[index];
  }

  /// 删除缓存
  Future<void> _clearApplicationCache() async {
    for (var dir in _dirs) {
      final List<FileSystemEntity> children = dir.listSync();
      for (final FileSystemEntity child in children) {
        await _deleteDirectory(child);
      }
    }
  }

  /// 删除目录
  Future<void> _deleteDirectory(FileSystemEntity file) async {
    if (file is Directory) {
      final List<FileSystemEntity> children = file.listSync();
      for (final FileSystemEntity child in children) {
        await _deleteDirectory(child);
      }
    }
    await file.delete();
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: BslSingleRowButtonFormField(
        title: '清理缓存',
        titleStyle: TextStyle(
          color: mainTheme?.titleColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        text: _cache,
        textStyle: TextStyle(
          color: meTheme?.cacheTextColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        onPressed: () async {
          final confirm = await showDialog<bool>(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child: CustomDialog(
                  text: '是否要清理缓存?',
                  dismissible: false,
                  onConfirm: () async {
                    await _clearApplicationCache();
                    Get.back();
                  },
                  onCancel: () => Navigator.of(context).pop(),
                ),
              );
            },
          );

          if (confirm != true) return;
          logDebug('重新计算缓存大小');
          _initCache();
        },
      ),
    );
  }
}
