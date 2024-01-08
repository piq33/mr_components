import 'package:bsl/model/conservation/daylife_model.dart';
import 'package:bsl/theme/conservation_theme.dart';
import 'package:bsl/widget/conservation/questionnaire_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportItem extends StatelessWidget {
  const ReportItem({required this.report, super.key});

  final ReportModel report;

  @override
  Widget build(BuildContext context) {
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            report.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: conservationTheme?.sectionTitleColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 18.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final questionnaire = report.questionnaires[index];
              return QuestionnaireItem(item: questionnaire);
            },
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: report.questionnaires.length,
          ),
        ],
      ),
    );
  }
}
