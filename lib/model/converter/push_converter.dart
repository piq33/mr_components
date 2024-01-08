import 'package:components/model/common_model.dart';
import 'package:components/model/notification_models.dart';
import 'package:json_annotation/json_annotation.dart';

class PushTypeJsonConverter implements JsonConverter<PushType, String> {
  const PushTypeJsonConverter();

  @override
  PushType fromJson(String json) {
    switch (json) {
      case '1':
        return PushType.todo;
      case '2':
        return PushType.notification;
      case '3':
        return PushType.command;
      default:
        return PushType.unknown;
    }
  }

  @override
  String toJson(PushType value) {
    switch (value) {
      case PushType.unknown:
        return '';
      case PushType.todo:
        return '1';
      case PushType.notification:
        return '2';
      case PushType.command:
        return '3';
    }
  }
}

class PushRangeJsonConverter implements JsonConverter<PushRange, String> {
  const PushRangeJsonConverter();

  @override
  PushRange fromJson(String json) {
    switch (json) {
      case '1':
        return PushRange.school;
      case '2':
        return PushRange.grade;
      case '3':
        return PushRange.student;
      default:
        return PushRange.unknown;
    }
  }

  @override
  String toJson(PushRange value) {
    switch (value) {
      case PushRange.unknown:
        return '';
      case PushRange.school:
        return '1';
      case PushRange.grade:
        return '2';
      case PushRange.student:
        return '3';
    }
  }
}
