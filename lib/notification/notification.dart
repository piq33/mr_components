import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const channelId = 'bsl_channel_id';
const channelName = '博校声消息';
final ln = FlutterLocalNotificationsPlugin();

var _setup = false;
void setupNotification() async {
  if (_setup) return;
  const android = AndroidInitializationSettings('app_icon');
  const ios = DarwinInitializationSettings();
  const settings = InitializationSettings(
    android: android,
    iOS: ios,
  );
  _setup = await ln.initialize(settings) ?? false;
}
