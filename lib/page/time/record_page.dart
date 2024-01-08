import 'package:bsl/component/time/record_body.dart';
import 'package:bsl/model/time_models.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:bsl/widget/time/floating_button_custom_location.dart';
import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({this.moment, super.key, this.catalog});

  final CatalogType? catalog;
  final TimeMomentsModel? moment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '保存记录'),
      floatingActionButtonLocation: FloatingButtonCustomLocation(
        FloatingActionButtonLocation.miniCenterFloat,
        offsetY: -30,
      ),
      body: SingleChildScrollView(
        child: RecordBody(
          moment: moment,
          catalog: catalog == CatalogType.all ? CatalogType.first : catalog,
        ),
      ),
    );
  }
}
