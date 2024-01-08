import 'dart:math';

import 'package:components/log/global_log.dart';
import 'package:components/model/recipes_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/recipes_theme.dart';
import 'package:components/widget/media/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class _MenuItemTextPainter extends CustomPainter {
  const _MenuItemTextPainter({required this.painter});

  final TextPainter painter;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    painter.paint(canvas, Offset.zero);
  }

  @override
  bool shouldRepaint(covariant _MenuItemTextPainter oldDelegate) =>
      painter != oldDelegate.painter;
}

typedef OnRecipeImagePressed = Function(String url, String tag);

class _MenuItem extends StatefulWidget {
  const _MenuItem({required this.menu, this.onImagePressed, super.key});

  final MenuDetailModel menu;
  final OnRecipeImagePressed? onImagePressed;

  @override
  State createState() => _MenuItemState();
}

class _MenuItemState extends State<_MenuItem>
    with SingleTickerProviderStateMixin {
  static final _headerHeight = 26.h;
  static final _imageSpacing = 20.h;
  static final _imageHeight = 176.h;
  static final _textSpacing = 5.h;

  final _resources = List<MenuTagResource>.empty(growable: true);
  MenuTagResource? _resource;

  bool _collapse = true;

  late AnimationController _controller;
  Animation<double>? _animation;
  TextPainter? _textPainter;
  double _textHeight = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    // _controller.forward();
  }

  void _initResources(BuildContext context) {
    final theme = Theme.of(context).extension<RecipesTheme>();
    _resources.addAll([
      MenuTagResource(
        background: Assets.recipes.breakfastBackground,
        icon: Assets.recipes.breakfastIcon,
        color: theme?.breakfastColor,
      ),
      MenuTagResource(
        background: Assets.recipes.fruitBackground,
        icon: Assets.recipes.fruitIcon,
        color: theme?.fruitColor,
      ),
      MenuTagResource(
        background: Assets.recipes.lunchBackground,
        icon: Assets.recipes.lunchIcon,
        color: theme?.lunchColor,
      ),
      MenuTagResource(
        background: Assets.recipes.teaBackground,
        icon: Assets.recipes.teaIcon,
        color: theme?.teaColor,
      ),
      MenuTagResource(
        background: Assets.recipes.dinnerBackground,
        icon: Assets.recipes.dinnerIcon,
        color: theme?.dinnerColor,
      ),
    ]);
  }

  MenuTagResource _randomResource(BuildContext context) {
    if (_resources.isEmpty) {
      _initResources(context);
    }
    final r = Random();
    final resource = _resources[r.nextInt(_resources.length)];
    _resource = resource;
    return resource;
  }

  void _measureTextHeight(
    BuildContext context,
    BoxConstraints constraint,
  ) {
    final theme = Theme.of(context).extension<MainTheme>();
    final text = widget.menu.name;
    _textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: theme?.textColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
    _textPainter?.layout(
      minWidth: constraint.minWidth,
      maxWidth: constraint.maxWidth,
    );
    _textHeight = _textPainter?.size.height ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        logDebug('食谱列表项${widget.menu.toString()}首次布局');
        // 根据父布局约束来测量文字高度
        if (_textPainter == null || _textHeight == 0.0) {
          _measureTextHeight(context, constraint);
          final containerHeight = headerHeight + imageHeight + textHeight;
          _animation = Tween(begin: containerHeight, end: _headerHeight)
              .animate(_controller);
          logDebug(
            ''
            '食谱列表项文字${widget.menu.food}测量完毕\n'
            '头高度: $headerHeight\n'
            '图片高度: $imageHeight\n'
            '文字测量高度: $_textHeight\n'
            '文字高度: $textHeight\n'
            '总高度: $containerHeight\n'
            '动画: ${_animation.toString()}\n'
            '',
          );
        }
        if (_animation == null) {
          logDebug('动画初始化异常');
          return _child(context, constraint.maxWidth);
        }
        return AnimatedBuilder(
          animation: _animation!,
          builder: (context, child) {
            return _child(context, constraint.maxWidth);
          },
        );
      },
    );
  }

  Widget _child(BuildContext context, double maxWidth) {
    final theme = Theme.of(context).extension<MainTheme>();
    final childHeight = _animation?.value ?? 0.0;
    final imageDisplay = childHeight > headerHeight;
    final textDisplay = childHeight > (headerHeight + imageHeight);
    final text = widget.menu.name;
    final img = widget.menu.img;
    final tag = '${widget.menu.id}/$img';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: _title(context)),
            Container(
              margin: REdgeInsets.only(left: 20),
              child: TextButton(
                onPressed: () {
                  // TODO 展开有延迟
                  logDebug('列表toggle: $_collapse');
                  _collapse = !_collapse;
                  _collapse ? _controller.reverse() : _controller.forward();
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: REdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _collapse ? '折叠' : '展开',
                      style: TextStyle(
                        color: theme?.subTextColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(padding: REdgeInsets.only(left: 5)),
                    Image.asset(
                      _collapse
                          ? Assets.recipes.expandIcon.path
                          : Assets.recipes.collapseIcon.path,
                      fit: BoxFit.fitWidth,
                      height: 8.h,
                      width: 10.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        img.isNotEmpty
            ? _controller.isDismissed
                ? Container(
                    width: double.infinity,
                    height: imageDisplay ? childHeight - headerHeight : 0,
                    padding: REdgeInsets.only(top: _imageSpacing),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: theme?.dividerColor ?? Colors.transparent,
                          width: 1.r,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Hero(
                        tag: tag,
                        child: ImagePreview(
                          url: img,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: imageDisplay ? childHeight - headerHeight : 0,
                          borderRadius: BorderRadius.circular(12.r),
                          previewIconDisplay: false,
                          onPreviewPressed: (url, path) =>
                              widget.onImagePressed?.call(img, tag),
                        ),
                      ),
                    ),
                  )
                : SizedBox(
                    height:
                        _controller.isCompleted ? 0 : _animation?.value ?? 0,
                  )
            : const SizedBox.square(),
        if (text.isNotEmpty)
          Container(
            height:
                textDisplay ? childHeight - (headerHeight + imageHeight) : 0,
            padding: REdgeInsets.only(top: _textSpacing),
            child: _textPainter != null
                ? CustomPaint(
                    size: Size(maxWidth, _textHeight),
                    painter: _MenuItemTextPainter(painter: _textPainter!),
                  )
                : null,
          ),
      ],
    );
  }

  Widget _title(BuildContext context) {
    MenuTagResource? resource = _resource;
    resource ??= _randomResource(context);
    final text = widget.menu.menuType;
    return Container(
      height: _headerHeight,
      padding: REdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_headerHeight),
        image: DecorationImage(
          image: AssetImage(resource.background.path),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          resource.icon.image(
            width: 18.w,
            height: 18.h,
          ),
          Padding(padding: REdgeInsets.only(left: 6)),
          Flexible(
            child: Text(
              text.length > 10 ? '${text.substring(0, 10)}...' : text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: resource.color,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(padding: REdgeInsets.only(right: 8)),
        ],
      ),
    );
  }

  double get headerHeight => _headerHeight;
  double get imageHeight => _imageSpacing + _imageHeight;
  double get textHeight => _textSpacing + _textHeight;
}

class MenuList extends StatelessWidget {
  const MenuList({required this.list, this.onImagePressed, super.key});

  final List<MenuDetailModel> list;
  final OnRecipeImagePressed? onImagePressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final recipesTheme = Theme.of(context).extension<RecipesTheme>();
    final recipe = list.isNotEmpty ? list.first : null;
    final recipeImg = recipe?.img;
    final recipeMenuType = recipe?.menuType ?? '';
    return Container(
      padding: REdgeInsets.all(15),
      margin: REdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: recipesTheme?.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 7.h, right: 33.w, bottom: 4.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.recipes.sectionBackground.provider(),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              '每日食谱',
              style: TextStyle(
                color: recipesTheme?.sectionTitleColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ), // 若餐谱第一张为图片且无餐段，则只展示该餐谱图片
          if (recipeImg != null &&
              recipeImg.isNotEmpty &&
              recipeMenuType.isEmpty)
            Container(
              margin: REdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                border: Border.all(
                  color: mainTheme?.dividerColor ?? Colors.transparent,
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Hero(
                tag: recipeImg,
                child: ImagePreview(
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(12.r),
                  url: recipeImg,
                  fit: BoxFit.cover,
                  previewIconDisplay: false,
                  onPreviewPressed: (url, path) =>
                      onImagePressed?.call(recipeImg, recipeImg),
                ),
              ),
            ),
          if (recipeImg == null ||
              recipeImg.isEmpty ||
              recipeMenuType.isNotEmpty)
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: REdgeInsets.symmetric(vertical: 25),
              itemBuilder: (context, index) {
                final recipe = list[index];
                return _MenuItem(
                  key: ValueKey(recipe.id),
                  menu: recipe,
                  onImagePressed: onImagePressed,
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 30.h),
              itemCount: list.length,
            ),
        ],
      ),
    );
  }
}
