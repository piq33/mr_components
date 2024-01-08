import 'package:components/model/common_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/router/gallery_route_utils.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/embed_browser.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/common/kindergarten/promotion_gallery.dart';
import 'package:components/widget/common/kindergarten/promotion_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionBody extends StatelessWidget {
  const PromotionBody({
    required this.name,
    this.data,
    required this.pictures,
    super.key,
  });

  final String name;
  final PromotionModel? data;
  final List<ResourceWrapper> pictures;

  @override
  Widget build(BuildContext context) {
    final promotion = data;
    if (promotion == null) return const SizedBox();

    final mainTheme = Theme.of(context).extension<MainTheme>();
    return switch (promotion.contentType) {
      ContentType.text => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (pictures.isNotEmpty)
                PromotionGallery(
                  height: 180.h,
                  list: pictures,
                  onImagePressed: galleryRouteTo,
                ),
              Container(
                color: mainTheme?.cardBoxBackground,
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: REdgeInsets.only(top: 3),
                          child: Assets.common.kindergarten.addressIcon
                              .image(width: 10.w, height: 10.h),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            promotion.location,
                            style: TextStyle(
                              color: mainTheme?.subTextColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              PromotionText(promotion: promotion),
            ],
          ),
        ),
      ContentType.link => promotion.url?.isNotEmpty ?? false
          ? EmbedBrowser(url: promotion.url!)
          : const Center(child: EmptyWidget(text: '园所暂无宣传资料')),
      ContentType.unknown => const Center(child: EmptyWidget(text: '园所暂无宣传资料')),
    };
  }
}
