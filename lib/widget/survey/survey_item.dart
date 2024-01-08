import 'package:bsl/model/survey/survey_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SurveyItem extends StatelessWidget {
  const SurveyItem({required this.survey, this.onPressed, super.key});

  final SurveyModel survey;
  final VoidCallback? onPressed;

  static final _dateFormat = DateFormat('yyyy年MM月dd日 HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      decoration: BoxDecoration(
        color: mainTheme?.cardBoxBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    survey.name,
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(padding: REdgeInsets.only(top: 16)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      statusIcon,
                      Padding(padding: REdgeInsets.only(left: 13)),
                      SizedBox(
                        width: 60.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '发布人',
                              style: TextStyle(
                                color: mainTheme?.subTextColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            Padding(padding: REdgeInsets.only(top: 8)),
                            Text(
                              '创建时间',
                              style: TextStyle(
                                color: mainTheme?.subTextColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              survey.personName,
                              style: TextStyle(
                                color: mainTheme?.subTextColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            Padding(padding: REdgeInsets.only(top: 8)),
                            if (survey.publishTime != null)
                              Text(
                                _dateFormat.format(survey.publishTime!),
                                style: TextStyle(
                                  color: mainTheme?.subTextColor,
                                  fontSize: 12.sp,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Assets.survey.surveyItemMoreIcon.image(width: 22.w, height: 22.h),
          ],
        ),
      ),
    );
  }

  Widget get statusIcon {
    String path = '';
    if (survey.hasSubmit) {
      path = Assets.survey.surveySubmittedIcon.path;
    } else {
      switch (survey.status) {
        case SurveyStatus.published:
          path = Assets.survey.surveyPublishedIcon.path;
          break;
        case SurveyStatus.manualFinished:
        case SurveyStatus.systemFinished:
          path = Assets.survey.surveyFinishedIcon.path;
          break;
        default:
          break;
      }
    }
    return path.isEmpty
        ? SizedBox(width: 32.w, height: 40.h)
        : Image.asset(path, width: 32.w, height: 40.h);
  }
}
