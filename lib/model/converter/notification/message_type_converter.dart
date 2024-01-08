import 'package:components/model/notification_models.dart';
import 'package:json_annotation/json_annotation.dart';

class MessageTypeJsonConverter implements JsonConverter<MessageType, String> {
  const MessageTypeJsonConverter();

  @override
  MessageType fromJson(String? json) {
    switch (json) {
      case 'classMessage':
        return MessageType.classMessage;
      case 'systemMessage':
        return MessageType.systemMessage;
      case 'campusNotice':
        return MessageType.campusNotice;
      case 'otherMessage':
        return MessageType.otherMessage;
      default:
        return MessageType.all;
    }
  }

  @override
  String toJson(MessageType type) {
    switch (type) {
      case MessageType.classMessage:
        return 'classMessage';
      case MessageType.systemMessage:
        return 'systemMessage';
      case MessageType.campusNotice:
        return 'campusNotice';
      case MessageType.otherMessage:
        return 'otherMessage';
      default:
        return '';
    }
  }
}
