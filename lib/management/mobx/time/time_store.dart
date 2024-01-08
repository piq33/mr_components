import 'package:mobx/mobx.dart';

part 'time_store.g.dart';

class TimeStore = TimeBase with _$TimeStore;

abstract class TimeBase with Store {
  @observable
  int tabIndex = 0;

  @action
  void selectTab(int index) {
    tabIndex = index;
  }
}
