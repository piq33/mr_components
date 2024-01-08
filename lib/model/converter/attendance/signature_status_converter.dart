import 'package:components/model/attendance/attendance_model.dart';
import 'package:json_annotation/json_annotation.dart';

class SignatureStatusJsonConverter
    implements JsonConverter<SignatureStatus, String> {
  const SignatureStatusJsonConverter();

  @override
  SignatureStatus fromJson(String json) {
    switch (json) {
      case '0':
        return SignatureStatus.unsigned;
      case '1':
        return SignatureStatus.unsignedButFeedback;
      case '2':
        return SignatureStatus.feedback;
      case '3':
        return SignatureStatus.signed;
      case '4':
        return SignatureStatus.resigned;
      default:
        return SignatureStatus.unsigned;
    }
  }

  @override
  String toJson(SignatureStatus value) {
    switch (value) {
      case SignatureStatus.unsigned:
        return '0';
      case SignatureStatus.unsignedButFeedback:
        return '1';
      case SignatureStatus.feedback:
        return '2';
      case SignatureStatus.signed:
        return '3';
      case SignatureStatus.resigned:
        return '4';
      default:
        return '';
    }
  }
}
