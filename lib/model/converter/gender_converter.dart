import 'package:bsl/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

class GenderIntJsonConverter implements JsonConverter<Gender, int> {
  const GenderIntJsonConverter();

  @override
  Gender fromJson(int? json) {
    switch (json) {
      case 1:
        return Gender.male;
      case 2:
        return Gender.female;
      default:
        return Gender.unknown;
    }
  }

  @override
  int toJson(Gender gender) {
    switch (gender) {
      case Gender.male:
        return 1;
      case Gender.female:
        return 2;
      default:
        return 0;
    }
  }
}

class GenderStringJsonConverter implements JsonConverter<Gender, String> {
  const GenderStringJsonConverter();

  @override
  Gender fromJson(String? json) {
    switch (json) {
      case '1':
        return Gender.male;
      case '2':
        return Gender.female;
      default:
        return Gender.unknown;
    }
  }

  @override
  String toJson(Gender gender) {
    switch (gender) {
      case Gender.male:
        return '男';
      case Gender.female:
        return '女';
      default:
        return '';
    }
  }
}
