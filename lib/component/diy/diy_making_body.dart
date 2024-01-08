import 'package:components/log/global_log.dart';
import 'package:components/mixin/diy_mixin.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/widget/diy/page_card.dart';
import 'package:components/widget/diy/paper_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paper_transition/paper_transition.dart';

class DiyMakingBody extends StatefulWidget {
  const DiyMakingBody({required this.product, super.key});

  final DiyProductModel product;

  @override
  State<DiyMakingBody> createState() => _DiyMakingBodyState();
}

class _DiyMakingBodyState extends State<DiyMakingBody> with DiyPickerMixin {
  late var _product = widget.product;
  late var _pages = _product.template?.pages ?? [];
  late var _pagerController = PaperController(pageCount: _pages.length);

  @override
  void didUpdateWidget(DiyMakingBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.product != widget.product) {
      setState(() {
        _product = widget.product;
        _pages = _product.template?.pages ?? [];
        _pagerController = PaperController(pageCount: _pages.length);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraint) {
            final size = Size(constraint.maxWidth, constraint.maxHeight);
            builder(context, index) {
              final page = _pages[index];
              return PageCard(key: ValueKey(page), page: page);
            }

            final child = switch (_product.template?.transition) {
              PageTransitionType.fade => FadeContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                ),
              PageTransitionType.translate => TranslateContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                ),
              PageTransitionType.flip => FlipContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                ),
              _ => FlipContainer(
                  controller: _pagerController,
                  size: size,
                  pageBuilder: builder,
                ),
            };
            return child;
          },
        ),
        Positioned(
          right: 8.w,
          top: 8.h,
          child: TextButton(
            onPressed: () async {
              await pickMusic(context, _product);
              logDebug('选择新的背景音乐: $_product');
              setState(() {});
            },
            style: TextButton.styleFrom(padding: REdgeInsets.all(8)),
            child: _product.music?.empty ?? true
                ? Assets.diy.musicDisableIcon.image(width: 32.w, height: 32.h)
                : Assets.diy.musicEnableIcon.image(width: 32.w, height: 32.h),
          ),
        ),
        SafeArea(
          top: false,
          child: PaperControl(paperController: _pagerController),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pagerController.dispose();
    super.dispose();
  }
}
