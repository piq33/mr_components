import 'package:bsl/model/conservation/daylife_model.dart';
import 'package:bsl/util/list_utils.dart';
import 'package:bsl/widget/conservation/questionnaire/content_box.dart';
import 'package:bsl/widget/conservation/questionnaire/evaluate_box.dart';
import 'package:bsl/widget/conservation/questionnaire/upload_box.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QuestionnaireItem extends StatelessWidget {
  const QuestionnaireItem({required this.item, super.key});

  final ConservationInputModel item;

  static final _dateFormat = DateFormat('HH:mm:ss', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    switch (item.type) {
      case InputType.radio:
        final result = item.radioResult;
        final original = item.choice
            .firstWhereOrNull((element) => element.content == result?.content);
        return result == null
            ? const SizedBox()
            : ContentBox(
                title: item.name,
                content: (original?.showBlank ?? true)
                    ? result.display
                    : original?.display ?? '',
              );
      case InputType.select:
        final map = {for (var item in item.choice) item.content: item};
        final results = item.selectResults
            .where((element) => element.content.isNotEmpty)
            .toList();
        var content = StringBuffer();
        for (var i = 0; i < results.length; i++) {
          final result = results[i];
          final original = map[result.content];
          if (original == null) continue;
          if (content.isNotEmpty) content.write('\n');
          content.write(
            original.showBlank ? result.display : original.display,
          );
        }
        return ContentBox(title: item.name, content: content.toString());
      case InputType.fillIn:
        return ContentBox(
          title: item.name,
          content: item.fillinResult?.content ?? '',
        );
      case InputType.evaluate:
        return EvaluateBox(
          title: item.name,
          score: item.evaluateResult?.score ?? 0.0,
        );
      case InputType.calculate:
        final values = item.calculateResults;
        return ContentBox(title: item.name, content: '共${values.length}次');
      case InputType.metering:
        final metering = item.metering;
        final unit = metering?.unit ?? '';
        final values = item.meteringResults;
        final content = StringBuffer();
        content.write('共${values.length}次\n');
        content.write(
          '${metering?.name ?? ''}${values.fold(0.0, (previousValue, element) => previousValue + (element.value ?? 0))}$unit\n',
        );
        for (var i = 0; i < values.length; i++) {
          if (i > 0) content.write('\n');
          final value = values[i];
          content.write('第${i + 1}次  ');
          content.write('${value.value ?? 0}$unit  ');
        }
        return ContentBox(title: item.name, content: content.toString());
      case InputType.record:
        final values = item.recordResults;
        final content = StringBuffer();
        content.write('共${values.length}次\n');
        for (var i = 0; i < values.length; i++) {
          if (i > 0) content.write('\n');
          final value = values[i];
          content.write('第${i + 1}次  ');
          content.write('${value.content}  ');
        }
        return ContentBox(title: item.name, content: content.toString());
      case InputType.upload:
        return UploadBox(
          title: item.name,
          pictures: item.uploadResult?.pictures ?? List.empty(),
        );
      case InputType.unknown:
        return const SizedBox();
    }
  }
}
