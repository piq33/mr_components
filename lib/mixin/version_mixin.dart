import 'dart:async';
import 'dart:io';

import 'package:bsl/event/version_event.dart';
import 'package:bsl/management/services/config_service.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/widget/me/update_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

mixin VersionMixin<T extends StatefulWidget> on State<T> {
  static final _dateFormat = DateFormat('yyMMdd', Intl.systemLocale);

  final _configService = Get.find<ConfigService>();
  StreamSubscription? _versionSubscription;

  void listenVersionUpdate() {
    _versionSubscription = eventBus.on<VersionEvent>().listen((event) {
      final version = event.version;
      if (!version.hasUpdate) {
        return;
      }

      final uploadTime = version.uploadTime;
      final forceUpdate = version.forceUpdate;
      final timeString =
          uploadTime != null ? '_${_dateFormat.format(uploadTime)}' : '';
      if (!mounted) return;

      showDialog(
        context: context,
        barrierDismissible: !forceUpdate,
        builder: (context) {
          final dialog = Dialog(
            backgroundColor: Colors.transparent,
            child: UpdateDialog(
              version: 'V${version.versionString}$timeString',
              content: version.versionDesc,
              forceUpdate: forceUpdate,
              onClose: () => Navigator.of(context).pop(),
              onPressed: () {
                if (Platform.isIOS) {
                  launchUrl(
                    Uri.parse(_configService.downloadConfig.value.iosDownload),
                    mode: LaunchMode.externalApplication,
                  );
                } else {
                  launchUrl(
                    Uri.parse(_configService.envConfig.value.downloadUrl),
                    mode: LaunchMode.externalApplication,
                  );
                }
              },
            ),
          );
          return forceUpdate
              ? WillPopScope(onWillPop: () async => false, child: dialog)
              : dialog;
        },
      );
    });
  }

  @override
  @mustCallSuper
  void dispose() {
    _versionSubscription?.cancel();
    super.dispose();
  }
}
