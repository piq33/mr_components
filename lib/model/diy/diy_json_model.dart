import 'dart:collection';
import 'dart:io';
import 'dart:math';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/diy/list_edgeinsets_converter.dart';
import 'package:bsl/model/converter/diy/string_align_converter.dart';
import 'package:bsl/model/converter/diy/string_boxfit_converter.dart';
import 'package:bsl/model/converter/diy/string_color_converter.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/util/diy_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diy_json_model.freezed.dart';
part 'diy_json_model.g.dart';

enum ResourceValueType {
  @JsonValue('')
  unknown,
  @JsonValue('color')
  // 颜色
  color,
  @JsonValue('url')
  // 网络
  url,
  @JsonValue('assets')
  // 本地
  asset,
  @JsonValue('file')
  // 本地文件
  file,
}

enum PositionType {
  @JsonValue('value')
  // 值类型
  value,
  @JsonValue('ratio')
  // 百分比
  ratio,
}

enum PageTransitionType {
  // 无
  @JsonValue(0)
  none,
  // 滑动
  @JsonValue(1)
  translate,
  // 翻页
  @JsonValue(2)
  flip,
  // 淡入淡出
  @JsonValue(3)
  fade,
}

enum BoxBorderType {
  // 虚线
  @JsonValue('dash')
  dash,
  // 直线
  @JsonValue('line')
  line,
}

@Freezed(
  equal: false,
  addImplicitFinal: false,
  makeCollectionsUnmodifiable: false,
  unionKey: 'resourceType',
  unionValueCase: FreezedUnionCase.pascal,
)
sealed class ResourceValue with _$ResourceValue {
  const ResourceValue._();
  factory ResourceValue() = ResourceValueData;

  @FreezedUnionValue('text')
  factory ResourceValue.text({
    String? value,
    String? hint,
    @String2ColorJsonConverter() Color? hintColor,
    @String2ColorJsonConverter() Color? color,
    double? fontSize,
    double? fontWeight,
  }) = ResourceTextValue;

  @FreezedUnionValue('image')
  factory ResourceValue.image({
    double? width,
    double? height,
    @JsonKey(unknownEnumValue: ResourceValueType.unknown)
    @Default(ResourceValueType.unknown)
    ResourceValueType type,
    @String2BoxFitJsonConverter() @Default(BoxFit.cover) BoxFit fit,
    String? value,
  }) = ResourceImageValue;

  factory ResourceValue.fromFile(File file) =>
      ResourceImageValue(type: ResourceValueType.file, value: file.path);

  factory ResourceValue.fromJson(Map<String, dynamic> json) =>
      _$ResourceValueFromJson(json);
}

@freezed
class PageBox with _$PageBox {
  const PageBox._();
  const factory PageBox({
    @String2ColorJsonConverter() Color? borderColor,
    @Default(0.0) double borderWidth,
    @Default(0.0) double borderRadius,
    @Default(BoxBorderType.line) BoxBorderType borderType,
  }) = _PageBox;

  factory PageBox.fromJson(Map<String, dynamic> json) =>
      _$PageBoxFromJson(json);
}

@unfreezed
class PageResource with _$PageResource {
  const PageResource._();
  factory PageResource({
    /// 元素顺序
    @Default(0) int index,

    /// 元素宽度
    double? width,

    /// 元素高度
    double? height,

    /// 元素对齐位置
    @String2AlignJsonConverter() @Default(Alignment.center) Alignment align,

    /// 元素外边距
    @List2EdgeInsetsJsonConverter() @Default(EdgeInsets.zero) EdgeInsets margin,

    /// 元素内边距
    @List2EdgeInsetsJsonConverter()
    @Default(EdgeInsets.zero)
    EdgeInsets padding,

    /// 元素背景色
    ResourceValue? background,

    /// 元素位置类型
    @JsonKey(unknownEnumValue: PositionType.value)
    @Default(PositionType.value)
    PositionType positionType,

    /// 元素位置x坐标
    @Default(0.0) double x,

    /// 元素位置y坐标
    @Default(0.0) double y,

    /// 元素旋转角度
    @Default(0.0) double rotate,

    /// 元素盒子
    PageBox? box,

    /// 元素值
    ResourceValue? data,
  }) = _PageResource;

  PageResource setup({BackendModuleModel? module, Color? mainColor}) {
    final data = switch (module?.moduleType) {
      ModuleType.image => ResourceImageValue(
          type: ResourceValueType.url,
          value: module?.pics.firstOrNull ?? '',
        ),
      ModuleType.text => ResourceTextValue(value: module?.text ?? ''),
      _ => null,
    };
    return copyWith(
      data: data,
      box: box?.copyWith(borderColor: mainColor),
    );
  }

  Future<void> fillInImage(UploadFile file) async {
    if (data is! ResourceImageValue) return;

    final asset = file.asset;
    if (asset != null) {
      final file = await asset.file;
      if (file == null) return;

      data = ResourceImageValue(
        type: ResourceValueType.file,
        value: file.path,
      );
      return;
    }

    if (file.uploaded) {
      data = ResourceImageValue(
        type: ResourceValueType.url,
        value: file.remote,
      );
      return;
    }
  }

  factory PageResource.fromJson(Map<String, dynamic> json) =>
      _$PageResourceFromJson(json);
}

@freezed
class PageJsonModel with _$PageJsonModel {
  const PageJsonModel._();
  const factory PageJsonModel({
    @Default('-1') String pageId,

    /// 页面类型, 与[defaultPages]中的索引对应
    /// 该值用于后端区分页面
    @Default(-1) int pageIndex,

    /// 页面背景
    ResourceValue? background,

    /// 页面元素
    @Default([]) List<PageResource> resources,

    /// 是否首页
    @Default(false) bool homePage,

    /// 首页主色调
    @String2ColorJsonConverter() Color? mainColor,
  }) = _PageJsonModel;

  List<PageResource> get sortResources =>
      List.of(resources)..sort((a, b) => a.index.compareTo(b.index));

  factory PageJsonModel.fromJson(Map<String, dynamic> json) =>
      _$PageJsonModelFromJson(json);
}

@freezed
class TemplateJsonModel with _$TemplateJsonModel {
  const TemplateJsonModel._();
  const factory TemplateJsonModel({
    String? templateId,

    /// 相册翻页样式
    @Default(PageTransitionType.flip) PageTransitionType transition,

    /// 相册页面
    @Default([]) List<PageJsonModel> pages,
  }) = _TemplateJsonModel;

  factory TemplateJsonModel.empty() => const TemplateJsonModel(templateId: '');

  /// 根据所选择图片数量生成对应页面
  factory TemplateJsonModel.blankTemplate(int count) {
    final pages = List.generate(count, (index) => index).map(
      (file) {
        return PageJsonModel(
          resources: [
            PageResource(
              margin: REdgeInsets.only(
                left: 10,
                top: 20,
                right: 10,
                bottom: 128,
              ),
              box: PageBox(borderRadius: 8.r),
              data: ResourceImageValue(),
            ),
          ],
        );
      },
    ).toList();
    return TemplateJsonModel(pages: pages);
  }

  /// 填充子页面的资源, 当所选图片数量大于子页面资源数量时, 会随机填充默认页面
  Future<TemplateJsonModel> fillIn(List<UploadFile> files) async {
    List<PageJsonModel> nPages = List.empty(growable: true)..addAll(pages);
    var i = 0;
    Color? borderColor;
    ResourceImageValue? pageBackground;

    for (var page in nPages) {
      final background = page.background;
      // 记录模板最后一个页面背景, 用于在后续生成新页面时的默认背景
      if (background is ResourceImageValue && background.value != null) {
        pageBackground = background;
      }

      for (var resource in page.sortResources) {
        // 选择图片不足以填充页面资源则跳过
        if (i >= files.length || resource.data is! ResourceImageValue) {
          continue;
        }

        borderColor ??= resource.box?.borderColor;
        resource.fillInImage(files[i++]);
      }
    }

    if (i >= files.length) {
      return TemplateJsonModel(
        templateId: templateId,
        transition: transition,
        pages: nPages,
      );
    }

    // 当模板页面不足以填充图片时, 随机填充默认页面
    final n = files.length - i;
    final dPages = defaultPages(
      background: pageBackground?.value,
      borderColor: borderColor,
    );

    final r = Random();
    // 这里算法如下:
    // 将页面按照可装载资源数量进行分组
    var maxCapacity = 0;
    final map = HashMap<int, List<PageJsonModel>>();
    for (PageJsonModel page in dPages) {
      final count = page.resources.length;
      if (count > maxCapacity) maxCapacity = count;

      final list = map[count] ?? List.empty(growable: true);
      list.add(page);
      map[count] = list;
    }

    for (var j = 0; j < n; j++) {
      if (i >= files.length) continue;

      final rest = files.length - i;
      // 从分组中取出容量大于且最接近剩余图片个数的页面列表
      final touchPages = map.entries
          .where((e) => e.key >= rest)
          .reduce((a, b) => a.key - rest < b.key - rest ? a : b)
          .value;

      final index = r.nextInt(touchPages.length);
      final rPage = touchPages[index].copyWith(pageIndex: index + 1);

      // 填充图片到新页面
      for (var resource in rPage.sortResources) {
        // 新页面资源为空则初始化为图片资源
        resource.data ??= ResourceImageValue();

        // 选择图片不足以填充页面资源则跳过
        if (i >= files.length) continue;
        if (resource.data is! ResourceImageValue) continue;

        resource.fillInImage(files[i++]);
      }
      nPages.add(rPage);
    }
    return TemplateJsonModel(
      templateId: templateId,
      transition: transition,
      pages: nPages,
    );
  }

  bool get blank => templateId == '';

  factory TemplateJsonModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateJsonModelFromJson(json);
}
