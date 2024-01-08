import 'package:components/model/common_model.dart';
import 'package:components/model/time_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/router/gallery_route_utils.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/util/grid_view_height.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/media/image_preview.dart';
import 'package:components/widget/media/video_preview.dart';
import 'package:components/widget/media/voice_player.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

typedef OnMomentPressed = void Function(TimeMomentsModel timeInfo);

class MomentItem extends StatelessWidget {
  const MomentItem({
    required this.catalog,
    required this.item,
    this.onDiyPressed,
    this.onEditPressed,
    this.onDeletePressed,
    this.onSharePressed,
    this.onPreviewPressed,
    super.key,
  });

  final CatalogType catalog;
  final TimeYearListModel item;
  final OnMomentPressed? onDiyPressed;
  final OnMomentPressed? onEditPressed;
  final OnMomentPressed? onDeletePressed;
  final OnMomentPressed? onSharePressed;
  final OnResourcePressed? onPreviewPressed;

  static final _dateFormat = DateFormat('MM-dd', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      padding: REdgeInsets.only(left: 2.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: REdgeInsets.only(bottom: 15),
            child: Text(
              _dateFormat.format(item.dateTime),
              style: TextStyle(
                color: theme?.subTextColor,
                height: 1.1,
                fontSize: 13.sp,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: item.moments.map((moment) {
              return _MomentCard(
                catalog: catalog,
                timeInfo: moment,
                onDiyPressed: () => onDiyPressed?.call(moment),
                onEditPressed: () => onEditPressed?.call(moment),
                onDeletePressed: () => onDeletePressed?.call(moment),
                onSharePressed: () => onSharePressed?.call(moment),
                onPreviewPressed: onPreviewPressed,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class _MomentCardTitle extends StatelessWidget {
  const _MomentCardTitle({
    required this.timeInfo,
    this.onEditPressed,
    this.onDeletePressed,
    this.onSharePressed,
  });

  final TimeMomentsModel timeInfo;
  final VoidCallback? onEditPressed;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onSharePressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 15.w),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  timeInfo.timeMomentName ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: REdgeInsets.only(left: 5),
                padding: REdgeInsets.symmetric(vertical: 5, horizontal: 14),
                decoration: BoxDecoration(
                  color: tagBackground(timeTheme),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  timeInfo.catalog.display,
                  style: TextStyle(
                    height: 1,
                    color: tagTextColor(timeTheme),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<DropdownType>(
            buttonStyleData: ButtonStyleData(
              width: 140.w,
              height: 10.h,
              padding: EdgeInsets.zero,
            ),
            dropdownStyleData: DropdownStyleData(
              width: 140.w,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: timeTheme?.dropdownBackground,
                borderRadius: BorderRadius.circular(16.r),
              ),
              offset: Offset(-90.w, 0),
            ),
            menuItemStyleData: MenuItemStyleData(height: 46.h),
            customButton: Container(
              alignment: Alignment.center,
              padding: REdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.more_horiz,
                color: timeTheme?.editableIconColor,
              ),
            ),
            items: [
              DropdownItem(
                icon: Assets.time.edit.path,
                type: DropdownType.edit,
              ),
              DropdownItem(
                icon: Assets.time.delete.path,
                type: DropdownType.delete,
              ),
              // TODO 暂时屏蔽diy分享
              if ((timeInfo.diy?.validate ?? false) && false)
                DropdownItem(
                  icon: Assets.time.share.path,
                  type: DropdownType.share,
                ),
            ].map(
              (item) {
                return DropdownMenuItem<DropdownType>(
                  value: item.type,
                  child: Container(
                    height: 46.h,
                    decoration: item.type == DropdownType.edit
                        ? BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: mainTheme?.dividerColor ??
                                    Colors.transparent,
                                width: 1.p,
                              ),
                            ),
                          )
                        : null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset(item.icon),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          item.type.display,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: mainTheme?.titleColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
            onChanged: (type) {
              if (type == null) return;
              switch (type) {
                case DropdownType.edit:
                  onEditPressed?.call();
                  break;
                case DropdownType.delete:
                  onDeletePressed?.call();
                  break;
                case DropdownType.share:
                  onSharePressed?.call();
                  break;
              }
            },
          ),
        ),
      ],
    );
  }

  Color? tagTextColor(TimeTheme? timeTheme) {
    switch (timeInfo.catalog) {
      case CatalogType.first:
        return timeTheme?.firstTagTextColor;
      case CatalogType.wonderful:
        return timeTheme?.wonderfulTagTextColor;
      case CatalogType.achievement:
        return timeTheme?.achievementTagTextColor;
      case CatalogType.journal:
        return timeTheme?.journalTagTextColor;
      case CatalogType.other:
        return timeTheme?.otherTagTextColor;
      default:
        return timeTheme?.defaultTagColor;
    }
  }

  Color? tagBackground(TimeTheme? timeTheme) {
    switch (timeInfo.catalog) {
      case CatalogType.first:
        return timeTheme?.firstTagBackground;
      case CatalogType.wonderful:
        return timeTheme?.wonderfulTagBackground;
      case CatalogType.achievement:
        return timeTheme?.achievementTagBackground;
      case CatalogType.journal:
        return timeTheme?.journalTagBackground;
      case CatalogType.other:
        return timeTheme?.otherTagBackground;
      default:
        return timeTheme?.defaultTagBackground;
    }
  }
}

class _MomentCard extends StatelessWidget {
  const _MomentCard({
    required this.catalog,
    required this.timeInfo,
    this.onDiyPressed,
    this.onEditPressed,
    this.onDeletePressed,
    this.onSharePressed,
    this.onPreviewPressed,
  });

  final CatalogType catalog;
  final TimeMomentsModel timeInfo;
  final VoidCallback? onDiyPressed;
  final VoidCallback? onEditPressed;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onSharePressed;
  final OnResourcePressed? onPreviewPressed;

  static final _dateFormat = DateFormat('HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    final videoList = timeInfo.videoUrls
        .map((e) => ResourceWrapper.fromVideo(url: e))
        .toList();
    final imageList =
        timeInfo.picUrls.map((e) => ResourceWrapper.fromImage(e)).toList();
    const crossAxisCount = 3;
    final diyCover = timeInfo.diy?.cover ?? '';
    return Container(
      padding: REdgeInsets.symmetric(vertical: 15),
      margin: REdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: timeTheme?.momentBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _MomentCardTitle(
            timeInfo: timeInfo,
            onEditPressed: onEditPressed,
            onDeletePressed: onDeletePressed,
            onSharePressed: onSharePressed,
          ),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 15.h),
                Text(
                  timeInfo.timeMomentContent ?? '',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: mainTheme?.subTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                ...videoList.asMap().entries.map(
                  (item) {
                    final index = item.key;
                    final video = item.value;
                    return Padding(
                      padding: REdgeInsets.only(bottom: 10),
                      child: VideoPreview(
                        url: video.url,
                        height: 176.h,
                        width: double.infinity,
                        borderRadius: BorderRadius.circular(8.r),
                        onPreviewPressed: (url, path) =>
                            onPreviewPressed?.call(videoList, index),
                      ),
                    );
                  },
                ),
                ...timeInfo.audioUrls.map((i) {
                  return Padding(
                    padding: REdgeInsets.only(bottom: 10),
                    child: VoicePlayerOutline(
                      url: i,
                      decoration: BoxDecoration(
                        color: timeTheme?.mediaOuterBackground,
                        borderRadius: BorderRadius.circular(59.r),
                      ),
                    ),
                  );
                }),
                imageList.isNotEmpty
                    ? SizedBox(
                        height: getGridViewHeight(
                          crossAxisCount,
                          imageList.length,
                          95.h,
                          5.h,
                        ),
                        child: GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 5.w,
                          mainAxisSpacing: 5.h,
                          children: imageList.asMap().entries.map(
                            (item) {
                              final index = item.key;
                              final img = item.value;
                              return Hero(
                                tag: img.heroTag,
                                child: ImagePreview(
                                  width: 95.w,
                                  height: 95.h,
                                  url: img.url,
                                  borderRadius: BorderRadius.circular(12.r),
                                  fit: BoxFit.cover,
                                  onPreviewPressed: (url, path) =>
                                      onPreviewPressed?.call(imageList, index),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      )
                    : const SizedBox(),
                // diy相册的预览图
                if (diyCover.isNotEmpty)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ImagePreview(
                      width: 95.w,
                      height: 95.h,
                      url: diyCover,
                      borderRadius: BorderRadius.circular(12.r),
                      fit: BoxFit.cover,
                      onPreviewPressed: (url, path) => onDiyPressed?.call(),
                    ),
                  ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: 16.w,
                      height: 16.h,
                      padding: REdgeInsets.only(right: 5),
                      child: Image.asset(Assets.time.time.path),
                    ),
                    Text(
                      _dateFormat.format(timeInfo.updateTime),
                      style: TextStyle(
                        color: mainTheme?.subTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
