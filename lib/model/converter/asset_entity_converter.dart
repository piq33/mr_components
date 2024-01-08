import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class AssetEntityJsonConverter implements JsonConverter<AssetEntity?, String> {
  const AssetEntityJsonConverter();

  @override
  AssetEntity? fromJson(String json) {
    if (json.isEmpty) return null;
    final jsonObj = jsonDecode(json);
    return AssetEntity(
      id: jsonObj['id'],
      typeInt: jsonObj['typeInt'],
      width: jsonObj['width'],
      height: jsonObj['height'],
      duration: jsonObj['duration'],
      orientation: jsonObj['orientation'],
      isFavorite: jsonObj['isFavorite'],
      title: jsonObj['title'],
      createDateSecond: jsonObj['createDateSecond'],
      modifiedDateSecond: jsonObj['modifiedDateSecond'],
      relativePath: jsonObj['relativePath'],
      latitude: jsonObj['latitude'],
      longitude: jsonObj['longitude'],
      mimeType: jsonObj['mimeType'],
      subtype: jsonObj['subtype'],
    );
  }

  @override
  String toJson(AssetEntity? asset) {
    return asset == null
        ? ''
        : jsonEncode(
            {
              'id': asset.id,
              'typeInt': asset.typeInt,
              'width': asset.width,
              'height': asset.height,
              'duration': asset.duration,
              'orientation': asset.orientation,
              'isFavorite': asset.isFavorite,
              'title': asset.title,
              'createDateSecond': asset.createDateSecond,
              'modifiedDateSecond': asset.modifiedDateSecond,
              'relativePath': asset.relativePath,
              'latitude': asset.latitude,
              'longitude': asset.longitude,
              'mimeType': asset.mimeType,
              'subtype': asset.subtype,
            },
          );
  }
}
