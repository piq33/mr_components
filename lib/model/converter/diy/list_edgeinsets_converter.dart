import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:json_annotation/json_annotation.dart';

class List2EdgeInsetsJsonConverter
    implements JsonConverter<EdgeInsets, List<dynamic>> {
  const List2EdgeInsetsJsonConverter();

  @override
  EdgeInsets fromJson(List<dynamic> json) {
    double l = json.isNotEmpty ? _parse(json.first) : 0;
    double t = json.length >= 2 ? _parse(json[1]) : 0;
    double r = json.length >= 3 ? _parse(json[2]) : 0;
    double b = json.length >= 4 ? _parse(json[3]) : 0;
    return REdgeInsets.only(left: l, top: t, right: r, bottom: b);
  }

  double _parse(dynamic value) {
    return value is num ? value.toDouble() : 0;
  }

  @override
  List<dynamic> toJson(EdgeInsets edgeInsets) {
    return [
      edgeInsets.left,
      edgeInsets.top,
      edgeInsets.right,
      edgeInsets.bottom
    ];
  }
}
