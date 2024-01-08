import 'dart:async';

import 'package:components/widget/common/banner/banner_indicator.dart';
import 'package:components/widget/common/cache_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef ImageWidgetBuilder<T> = Widget Function(T item);

class Banners<T> extends StatefulWidget {
  const Banners({
    required this.list,
    required this.builder,
    required this.bannerHeight,
    this.bannerRadius = BorderRadius.zero,
    required this.margin,
    this.padding,
    this.decoration,
    this.indicatorSpacing,
    required this.indicatorHeight,
    required this.indicatorMinWidth,
    required this.indicatorMaxWidth,
    this.selectedGradient,
    this.selectedColor,
    this.unselectedColor,
    this.cacheExtent = 0,
    super.key,
  });

  final List<T> list;
  final ImageWidgetBuilder<T> builder;
  final double bannerHeight;
  final BorderRadiusGeometry bannerRadius;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final EdgeInsetsGeometry? indicatorSpacing;
  final double indicatorHeight;
  final double indicatorMinWidth;
  final double indicatorMaxWidth;
  final Gradient? selectedGradient;
  final Color? selectedColor;
  final Color? unselectedColor;
  final int cacheExtent;

  @override
  State<Banners<T>> createState() => _BannersState<T>();
}

/// 轮播间隔(单位：秒)
const _periodicInterval = 3;

/// 点击图片后延迟轮播间隔(单位：秒)
/// 手指触碰banner后，timer将暂停，同时在该间隔内若未收到新的事件将重新启动定时器
const _tabDelayInterval = 2;

class _BannersState<T> extends State<Banners<T>> {
  final _controller = PageController();
  late final _length = widget.list.length;

  /// 当前页面index
  int _pageIndex = 0;
  Timer? _periodic;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final bannerWidget = GestureDetector(
      onHorizontalDragDown: _onHorizontalDragDown,
      child: CachePageView.builder(
        controller: _controller,
        itemCount: _length,
        onPageChanged: (index) {
          _pageIndex = index;
          if (_pageIndex >= _length) _pageIndex = 0;
        },
        itemBuilder: (context, index) {
          T banner = widget.list[index % _length];
          return widget.builder(banner);
        },
        cacheExtent: widget.cacheExtent.toDouble(),
      ),
    );
    return Container(
      height:
          widget.bannerHeight + widget.margin.vertical + widget.indicatorHeight,
      margin: REdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: widget.bannerHeight,
            margin: widget.margin,
            padding: widget.padding,
            decoration: widget.decoration,
            child: widget.bannerRadius != BorderRadius.zero
                ? ClipRRect(
                    borderRadius: widget.bannerRadius,
                    child: bannerWidget,
                  )
                : bannerWidget,
          ),
          BannerIndicator(
            controller: _controller,
            length: widget.list.length,
            height: widget.indicatorHeight,
            minWidth: widget.indicatorMinWidth,
            maxWidth: widget.indicatorMaxWidth,
            indicatorPadding: widget.indicatorSpacing,
            selectedGradient: widget.selectedGradient,
            selectedColor: widget.selectedColor,
            unselectedColor: widget.unselectedColor,
          ),
        ],
      ),
    );
  }

  void _startTimer() {
    _periodic?.cancel();
    _periodic = Timer.periodic(
      const Duration(seconds: _periodicInterval),
      (timer) {
        _pageIndex++;
        if (_pageIndex >= _length) _pageIndex = 0;
        if (!_controller.hasClients) return;
        _controller.animateToPage(
          _pageIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      },
    );
  }

  void _releaseTimer() {
    if (_periodic?.isActive ?? true) return;
    _periodic?.cancel();
    _periodic = null;
  }

  void _onHorizontalDragDown(DragDownDetails details) {
    if (_periodic == null) return;
    _releaseTimer();
    Future.delayed(const Duration(seconds: _tabDelayInterval));
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _releaseTimer();
    _controller.dispose();
  }
}
