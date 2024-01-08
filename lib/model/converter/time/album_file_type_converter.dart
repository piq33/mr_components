import 'package:bsl/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

// 时光的文件类型需要独立解析
class AlbumFileTypeJsonConverter implements JsonConverter<FileType, String> {
  const AlbumFileTypeJsonConverter();

  @override
  FileType fromJson(String json) {
    switch (json) {
      case 'pic':
        return FileType.image;
      case 'video':
        return FileType.video;
      case 'audio':
        return FileType.audio;
      default:
        return FileType.none;
    }
  }

  @override
  String toJson(FileType fileType) {
    switch (fileType) {
      case FileType.image:
        return 'pic';
      case FileType.video:
        return 'video';
      case FileType.audio:
        return 'audio';
      default:
        return '';
    }
  }
}
