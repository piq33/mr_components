import 'package:bsl/model/school_models.dart';
import 'package:json_annotation/json_annotation.dart';

class StudentStatusJsonConverter implements JsonConverter<StudentStatus, int> {
  const StudentStatusJsonConverter();

  @override
  StudentStatus fromJson(int json) {
    switch (json) {
      case 0:
        return StudentStatus.registered;
      case 1:
        return StudentStatus.atSchool;
      case 2:
        return StudentStatus.graduated;
      case 3:
        return StudentStatus.suspension;
      case 4:
        return StudentStatus.transfered;
      case 5:
        return StudentStatus.quitSchool;
      case 6:
        return StudentStatus.transferOut;
      case 7:
        return StudentStatus.unSchool;
      case 8:
        return StudentStatus.cancel;
      case 9:
        return StudentStatus.cancelTheRead;
      default:
        return StudentStatus.unknown;
    }
  }

  @override
  int toJson(StudentStatus object) {
    return object.value;
  }
}
