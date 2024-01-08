import 'package:bsl/model/survey/survey_model.dart';
import 'package:json_annotation/json_annotation.dart';

class SurveyStatusJsonConverter implements JsonConverter<SurveyStatus, int> {
  const SurveyStatusJsonConverter();

  @override
  SurveyStatus fromJson(int? json) {
    switch (json) {
      case 1:
        return SurveyStatus.saved;
      case 5:
        return SurveyStatus.published;
      case 10:
        return SurveyStatus.manualFinished;
      case 15:
        return SurveyStatus.systemFinished;
      default:
        return SurveyStatus.unknown;
    }
  }

  @override
  int toJson(SurveyStatus type) {
    switch (type) {
      case SurveyStatus.saved:
        return 1;
      case SurveyStatus.published:
        return 5;
      case SurveyStatus.manualFinished:
        return 10;
      case SurveyStatus.systemFinished:
        return 15;
      default:
        return 0;
    }
  }
}
