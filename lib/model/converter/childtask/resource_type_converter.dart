import 'package:bsl/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

// 亲子任务文件类型需要独立解析
class Int2ResourceTypeJsonConverter implements JsonConverter<FileType, int> {
  const Int2ResourceTypeJsonConverter();

  @override
  FileType fromJson(int json) {
    switch (json) {
      case 1:
        return FileType.image;
      case 2:
        return FileType.video;
      default:
        return FileType.none;
    }
  }

  @override
  int toJson(FileType fileType) {
    switch (fileType) {
      case FileType.image:
        return 1;
      case FileType.video:
        return 2;
      default:
        return 0;
    }
  }
}

// 时光的文件类型需要独立解析
class String2ResourceTypeJsonConverter
    implements JsonConverter<FileType, String> {
  const String2ResourceTypeJsonConverter();

  @override
  FileType fromJson(String json) {
    switch (json) {
      case 'image':
        return FileType.image;
      case 'video':
        return FileType.video;
      case 'voice':
        return FileType.audio;
      default:
        return FileType.none;
    }
  }

  @override
  String toJson(FileType fileType) {
    switch (fileType) {
      case FileType.image:
        return 'image';
      case FileType.video:
        return 'video';
      case FileType.audio:
        return 'voice';
      default:
        return '';
    }
  }
}
