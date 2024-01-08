import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class String2BoxFitJsonConverter implements JsonConverter<BoxFit, String> {
  const String2BoxFitJsonConverter();

  @override
  BoxFit fromJson(String json) {
    switch (json) {
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'cover':
        return BoxFit.cover;
      case 'fitWidth':
        return BoxFit.fitWidth;
      case 'fitHeight':
        return BoxFit.fitHeight;
      case 'scaleDown':
        return BoxFit.scaleDown;
      default:
        return BoxFit.contain;
    }
  }

  @override
  String toJson(BoxFit boxFit) {
    switch (boxFit) {
      case BoxFit.fill:
        return 'fill';
      case BoxFit.contain:
        return 'contain';
      case BoxFit.cover:
        return 'cover';
      case BoxFit.fitWidth:
        return 'fitWidth';
      case BoxFit.fitHeight:
        return 'fitHeight';
      case BoxFit.scaleDown:
        return 'scaleDown';
      default:
        return '';
    }
  }
}
