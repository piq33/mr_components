import 'package:components/model/common_model.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:components/widget/common/cache_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnImagePressed = void Function(List<ResourceWrapper> list, int index);

class PromotionGallery extends StatefulWidget {
  const PromotionGallery({
    required this.height,
    required this.list,
    this.onImagePressed,
    super.key,
  });

  final double height;
  final List<ResourceWrapper> list;
  final OnImagePressed? onImagePressed;

  @override
  State<PromotionGallery> createState() => _PromotionGalleryState();
}

class _PromotionGalleryState extends State<PromotionGallery> {
  final _controller = PageController();
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.addListener(_refreshIndex);
    });
  }

  void _refreshIndex() {
    if (!_controller.hasClients) return;
    final index = _controller.page ?? 0;
    if ((index - _currentIndex).abs() > 0.5) {
      setState(() => _currentIndex = index.round());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          CachePageView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              final picture = widget.list[index];
              return Hero(
                tag: picture.heroTag,
                child: GestureDetector(
                  onTap: () => widget.onImagePressed?.call(widget.list, index),
                  child: CacheImage(
                    imageUrl: picture.url,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: widget.list.length,
          ),
          Positioned(
            right: 5.w,
            bottom: 4.h,
            child: Container(
              padding: REdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Text(
                '${_currentIndex + 1}/${widget.list.length}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_refreshIndex);
    _controller.dispose();
    super.dispose();
  }
}
