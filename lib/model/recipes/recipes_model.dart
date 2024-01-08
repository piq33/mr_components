import 'dart:ui';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/util/list_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_model.freezed.dart';
part 'recipes_model.g.dart';

enum MenuType {
  none(''),
  breakfast('早餐'),
  fruit('水果'),
  lunch('午餐'),
  tea('午点'),
  dinner('晚餐');

  final String display;
  const MenuType(this.display);
}

@freezed
class RecipesOtherParam with _$RecipesOtherParam {
  const RecipesOtherParam._();
  const factory RecipesOtherParam({
    /// 指定的食谱日期
    @Default('') String date,
  }) = _RecipesOtherParam;

  factory RecipesOtherParam.fromJson(Map<String, Object?> json) =>
      _$RecipesOtherParamFromJson(json);
}

class MenuTagResource {
  /// 背景
  final AssetGenImage background;

  /// icon
  final AssetGenImage icon;

  /// 文字颜色
  Color? color;

  MenuTagResource({required this.background, required this.icon, this.color});
}

@freezed
class MenuModel with _$MenuModel {
  const MenuModel._();
  const factory MenuModel({
    /// 当前日期
    @SimpleDateTimeJsonConverter() DateTime? currDate,

    /// 菜单详情列表
    @Default([]) List<MenuDetailModel> itemList,
  }) = _MenuModel;

  factory MenuModel.empty() => const MenuModel();

  factory MenuModel.fromJson(Map<String, Object?> json) =>
      _$MenuModelFromJson(json);
}

enum MenuDisplayType { none, img, text }

@freezed
class MenuDetailModel with _$MenuDetailModel {
  const MenuDetailModel._();
  const factory MenuDetailModel({
    required int id,

    /// 餐段
    @JsonKey(name: 'part') required String menuType,

    /// 名称
    @Default('') String name,

    /// 食材
    @Default('') String food,

    /// 编码
    String? bookCode,

    /// 日期
    @SimpleDateTimeJsonConverter() DateTime? dateTime,

    /// 日期类型
    int? dateType,

    /// 排序
    @Default(0) int orderNum,

    /// 备注
    @Default('') String remark,

    /// 营养
    @Default('') String nutrition,

    /// 资源列表
    @Default([]) List<ResourceModel> resourceList,
  }) = _MenuDetailModel;

  MenuDisplayType get displayType {
    if (menuType.isNotEmpty && name.isNotEmpty) return MenuDisplayType.text;
    if (menuType.isNotEmpty && img.isNotEmpty) return MenuDisplayType.img;
    return MenuDisplayType.none;
  }

  String get img =>
      resourceList
          .firstWhereOrNull((element) => element.type == FileType.image)
          ?.url ??
      '';

  factory MenuDetailModel.fromJson(Map<String, Object?> json) =>
      _$MenuDetailModelFromJson(json);
}
