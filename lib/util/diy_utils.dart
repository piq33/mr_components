import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/util/diy/default_homepage.dart';
import 'package:bsl/util/diy/default_page.dart';
import 'package:flutter/material.dart';

List<PageJsonModel> defaultHomePages() {
  return [
    provideHomepage1(),
    provideHomepage2(),
    provideHomepage3(),
    provideHomepage4(),
  ];
}

List<PageJsonModel> defaultPages({String? background, Color? borderColor}) {
  return [
    providePage1(background: background, borderColor: borderColor),
    providePage2(background: background, borderColor: borderColor),
    providePage3(background: background, borderColor: borderColor),
    providePage4(background: background, borderColor: borderColor),
    providePage5(background: background, borderColor: borderColor),
    providePage6(background: background, borderColor: borderColor),
    providePage7(background: background, borderColor: borderColor),
  ];
}
