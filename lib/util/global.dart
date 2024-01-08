import 'package:bsl/config.dart';
import 'package:event_bus/event_bus.dart';
import 'package:fluwx/fluwx.dart';

final fluwx = Fluwx();
final eventBus = EventBus();
const double cursorHeight = 16;
const double statusBarHeight = 44;
const firstContractConfirmKey = 'firstContractConfirmKey';

void setupFluwx() {
  fluwx.registerApi(
    appId: wxAppid,
    universalLink: 'https://xs.brightscholar.com/xiaosheng/',
  );
}
