import 'package:components/resource/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/widgets.dart';

const _reloadTimes = 1;

class CacheImage extends StatefulWidget {
  const CacheImage({
    this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.compressionRatio = 0.2,
    this.displayPlaceholder = true,
    this.retryEnable = false,
    this.imageCacheName,
    this.placeholder,
    this.errorWidget,
    super.key,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final double compressionRatio;
  final bool displayPlaceholder;
  final bool retryEnable;
  final String? imageCacheName;
  final PlaceholderWidgetBuilder? placeholder;
  final Widget? errorWidget;

  @override
  State<StatefulWidget> createState() => _CacheImageState();
}

class _CacheImageState extends State<CacheImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  var _reloadTime = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.width;
    final height = widget.height;
    final url = widget.imageUrl ?? '';
    final fit = widget.fit;
    if (url.isEmpty) {
      return widget.placeholder?.call(context, '') ?? _defaultPlaceHolder;
    }

    return ExtendedImage.network(
      url,
      width: width,
      height: height,
      fit: fit,
      compressionRatio: widget.compressionRatio,
      imageCacheName: widget.imageCacheName,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            _controller.reset();
            return widget.displayPlaceholder
                ? widget.placeholder?.call(context, url) ?? _defaultPlaceHolder
                : const SizedBox();
          case LoadState.completed:
            if (state.wasSynchronouslyLoaded) {
              return state.completedWidget;
            }
            _controller.forward();
            return FadeTransition(
              opacity: _controller,
              child: state.completedWidget,
            );
          case LoadState.failed:
            _controller.reset();
            state.imageProvider.evict();
            final shouldReload = url.isNotEmpty &&
                _reloadTime < _reloadTimes &&
                widget.retryEnable;
            return shouldReload
                ? _reloadWidget(state)
                : widget.errorWidget ?? _defaultPlaceHolder;
        }
      },
    );
  }

  Widget _reloadWidget(ExtendedImageState state) {
    return GestureDetector(
      onTap: () {
        _reloadTime++;
        state.reLoadImage();
      },
      child: widget.errorWidget ?? _defaultPlaceHolder,
    );
  }

  Widget get _defaultPlaceHolder => Assets.common.defaultImage.image(
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AssetEntityCacheImage extends StatefulWidget {
  const AssetEntityCacheImage({
    required this.provider,
    this.width,
    this.height,
    this.fit,
    this.displayPlaceholder = true,
    this.retryEnable = false,
    this.placeholder,
    this.errorWidget,
    super.key,
  });

  final ImageProvider provider;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final bool displayPlaceholder;
  final bool retryEnable;
  final Widget Function(BuildContext context)? placeholder;
  final Widget? errorWidget;

  @override
  State<StatefulWidget> createState() => _AssetImageState();
}

class _AssetImageState extends State<AssetEntityCacheImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ExtendedImage(
      image: widget.provider,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            _controller.reset();
            return widget.displayPlaceholder
                ? widget.placeholder?.call(context) ?? _defaultPlaceHolder
                : const SizedBox();
          case LoadState.completed:
            if (state.wasSynchronouslyLoaded) {
              return state.completedWidget;
            }
            _controller.forward();
            return FadeTransition(
              opacity: _controller,
              child: state.completedWidget,
            );
          case LoadState.failed:
            _controller.reset();
            return widget.errorWidget ?? _defaultPlaceHolder;
        }
      },
    );
  }

  Widget get _defaultPlaceHolder => Assets.common.defaultImage.image(
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
