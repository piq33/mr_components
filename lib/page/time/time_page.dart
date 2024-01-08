import 'package:components/component/time/time_body.dart';
import 'package:components/management/mobx/time/time_store.dart';
import 'package:components/model/time_models.dart';
import 'package:components/widget/time/floating_button_custom_location.dart';
import 'package:components/widget/time/record_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimePage extends StatefulWidget {
  const TimePage({required this.index, super.key});

  final int index;

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  final _store = TimeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeBody(store: _store),
      floatingActionButton: RecordButton(
        // TimeController
        onTap: () {
          var tab = timeTags[_store.tabIndex];
          Get.toNamed('album/record', arguments: {'catalog': tab});
        },
      ),
      floatingActionButtonLocation: FloatingButtonCustomLocation(
        FloatingActionButtonLocation.endFloat,
        offsetY: -45.h,
        offsetX: -16.w,
      ),
    );
  }
}
