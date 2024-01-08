import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class String2AlignJsonConverter implements JsonConverter<Alignment, String> {
  const String2AlignJsonConverter();

  @override
  Alignment fromJson(String json) {
    switch (json) {
      case 'topLeft':
        return Alignment.topLeft;
      case 'topCenter':
        return Alignment.topCenter;
      case 'topRight':
        return Alignment.topRight;
      case 'centerLeft':
        return Alignment.centerLeft;
      case 'center':
        return Alignment.center;
      case 'centerRight':
        return Alignment.centerRight;
      case 'bottomLeft':
        return Alignment.bottomLeft;
      case 'bottomCenter':
        return Alignment.bottomCenter;
      case 'bottomRight':
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }

  @override
  String toJson(Alignment align) {
    switch (align) {
      case Alignment.topLeft:
        return 'topLeft';
      case Alignment.topCenter:
        return 'topCenter';
      case Alignment.topRight:
        return 'topRight';
      case Alignment.centerLeft:
        return 'centerLeft';
      case Alignment.center:
        return 'center';
      case Alignment.centerRight:
        return 'centerRight';
      case Alignment.bottomLeft:
        return 'bottomLeft';
      case Alignment.bottomCenter:
        return 'bottomCenter';
      case Alignment.bottomRight:
        return 'bottomRight';
      default:
        return '';
    }
  }
}
