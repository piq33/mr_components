import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

class String2ListJsonConverter implements JsonConverter<List<String>, String> {
  const String2ListJsonConverter();

  @override
  List<String> fromJson(String json) {
    if (json.isEmpty) return [];
    final list = List<String>.empty(growable: true);
    final jsonList = jsonDecode(json) as List<dynamic>;
    for (var value in jsonList) {
      if (value is String) list.add(value);
    }
    return list;
  }

  @override
  String toJson(List<String> value) {
    return jsonEncode(value);
  }
}
