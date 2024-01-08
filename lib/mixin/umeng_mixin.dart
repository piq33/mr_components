import 'package:components/log/global_log.dart';
import 'package:flutter/widgets.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';

mixin UmengHomePageMixin<T extends StatefulWidget> on State<T> {
  final _timeMap = <String, int>{};

  void onBottomNavChanged(String pre, String cur) {
    final enterTime = _timeMap[pre] ?? 0;
    final exitTime = DateTime.now().millisecondsSinceEpoch;
    if (exitTime > enterTime) {
      final duration = (exitTime - enterTime) / 1000;
      UmengCommonSdk.onEvent(
        '_pageUsedTime',
        {
          'start': enterTime.toString(),
          'page': pre,
          'end': exitTime.toString(),
          'duration': duration,
        },
      );
      _timeMap.remove(pre);
      logDebug('友盟底栏统计: $pre, duration: $duration秒');
    }

    _timeMap[cur] = DateTime.now().millisecondsSinceEpoch;
    UmengCommonSdk.onEvent(
      '_pages',
      {
        'prePage': pre,
        'page': cur,
        'path': 'home',
      },
    );
    logDebug('友盟底栏统计: $cur');
  }
}
