import 'package:bsl/model/common_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/time_theme.dart';
import 'package:bsl/util/grid_view_height.dart';
import 'package:bsl/util/screen_utils.dart';
import 'package:bsl/widget/media/image_preview.dart';
import 'package:bsl/widget/media/video_preview.dart';
import 'package:bsl/widget/media/voice_player.dart';
import 'package:bsl/widget/time/warpper_box.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnAddPressed = Function(FileType fileType);
typedef OnMediaPressed = Function(UploadFile file);

const _imageMaxCount = 9;
const _audioMaxCount = 3;
const _videoMaxCount = 3;

class _FileBtn extends StatelessWidget {
  const _FileBtn({
    required this.imgPath,
    required this.tips,
    required this.fileType,
    this.onPressed,
  });

  final String imgPath;
  final String tips;
  final FileType fileType;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(12.r),
        color: timeTheme?.fileBorderColor ?? Colors.transparent,
        dashPattern: [4.r, 2.r],
        strokeWidth: 1.p,
        padding: EdgeInsets.zero,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.h),
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: Image.asset(imgPath),
              ),
              SizedBox(height: 8.h),
              Text(
                tips,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainTheme?.subTextColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageFileBox extends StatelessWidget {
  const _ImageFileBox({
    required this.list,
    this.onAddPressed,
    this.onPreviewPressed,
    this.onDeletePressed,
  });

  final List<UploadFile> list;
  final OnAddPressed? onAddPressed;
  final OnMediaPressed? onPreviewPressed;
  final OnMediaPressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    const crossAxisCount = 3;
    var len = list.length;
    var maxCount = len >= _imageMaxCount ? len : len + 1;
    return ContentWrapper(
      title: "添加图片",
      child: SizedBox(
        height: getGridViewHeight(crossAxisCount, maxCount, 106.w, 4.w),
        child: GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: maxCount,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 6.w,
            mainAxisSpacing: 6.h,
          ),
          itemBuilder: (context, index) {
            if (index == len) {
              return _FileBtn(
                fileType: FileType.image,
                imgPath: Assets.time.recordImage.path,
                tips: '可添加${_imageMaxCount - len}张图片',
                onPressed: () => onAddPressed?.call(FileType.image),
              ); // 最后一个
            } else if (list.isNotEmpty) {
              var item = list[index];
              return Hero(
                tag: item.availableUrl,
                child: ImagePreview(
                  url: item.remote,
                  path: item.local,
                  fit: BoxFit.cover,
                  width: 95.w,
                  height: 95.h,
                  borderRadius: BorderRadius.circular(12.r),
                  onPreviewPressed: (url, path) => onPreviewPressed?.call(item),
                  onDeletePressed: (url, path) => onDeletePressed?.call(item),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

class _AudioFileBox extends StatelessWidget {
  const _AudioFileBox({
    required this.list,
    this.onAddPressed,
    this.onDeletePressed,
  });

  final List<UploadFile> list;
  final OnAddPressed? onAddPressed;
  final OnMediaPressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    final children = list
        .map(
          (i) => Padding(
            padding: REdgeInsets.only(bottom: 10),
            child: VoicePlayerOutline(
              url: i.remote,
              path: i.local,
              decoration: BoxDecoration(
                color: timeTheme?.mediaOuterBackground,
                borderRadius: BorderRadius.circular(59.r),
              ),
              onDeletePressed: (_, __) => onDeletePressed?.call(i),
            ),
          ),
        )
        .toList();
    final btn = children.length < _audioMaxCount
        ? _FileBtn(
            fileType: FileType.audio,
            imgPath: Assets.time.recordAudio.path,
            tips: '可添加${_audioMaxCount - list.length}个录音',
            onPressed: () => onAddPressed?.call(FileType.audio),
          )
        : const SizedBox();
    return ContentWrapper(
      title: "添加录音",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [...children, btn],
      ),
    );
  }
}

class _VideoFileBox extends StatelessWidget {
  const _VideoFileBox({
    required this.list,
    this.onAddPressed,
    this.onPreviewPressed,
    this.onDeletePressed,
  });

  final List<UploadFile> list;
  final OnAddPressed? onAddPressed;
  final OnMediaPressed? onPreviewPressed;
  final OnMediaPressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final children = list
        .map(
          (i) => Padding(
            padding: REdgeInsets.only(bottom: 10),
            child: VideoPreview(
              width: double.infinity,
              height: 176.h,
              url: i.remote,
              asset: i.asset,
              borderRadius: BorderRadius.circular(8.r),
              onPreviewPressed: (url, path) => onPreviewPressed?.call(i),
              onDeletePressed: (url, path) => onDeletePressed?.call(i),
            ),
          ),
        )
        .toList();
    var btn = children.length < _videoMaxCount
        ? _FileBtn(
            fileType: FileType.video,
            imgPath: Assets.time.recordVodeo.path,
            tips: '可添加${_videoMaxCount - list.length}个视频',
            onPressed: () => onAddPressed?.call(FileType.video),
          )
        : const SizedBox();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [...children, btn],
    );
  }
}

class ContentBox extends StatelessWidget {
  const ContentBox({
    required this.imgList,
    required this.audioList,
    required this.videoList,
    required this.controller,
    this.onAddPressed,
    this.onPreviewPressed,
    this.onDeletePressed,
    super.key,
  });

  final List<UploadFile> imgList;
  final List<UploadFile> audioList;
  final List<UploadFile> videoList;
  final TextEditingController controller;
  final OnAddPressed? onAddPressed;
  final OnMediaPressed? onPreviewPressed;
  final OnMediaPressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return WrapperBox(
      marginBottom: 25.h,
      title: '爸爸妈妈说一说',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContentWrapper(
            title: '这一刻我想说',
            child: Container(
              padding: REdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: timeTheme?.contentHintBackground,
                border: Border.all(
                  color:
                      timeTheme?.contentHintBorderColor ?? Colors.transparent,
                  width: 1.p,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: TextField(
                minLines: 3,
                maxLines: 4,
                controller: controller,
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "请输入",
                  hintStyle: TextStyle(
                    color: mainTheme?.hintTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          _ImageFileBox(
            list: imgList,
            onAddPressed: onAddPressed,
            onPreviewPressed: onPreviewPressed,
            onDeletePressed: onDeletePressed,
          ),
          SizedBox(height: 20.h),
          _AudioFileBox(
            list: audioList,
            onAddPressed: onAddPressed,
            onDeletePressed: onDeletePressed,
          ),
          SizedBox(height: 20.h),
          _VideoFileBox(
            list: videoList,
            onAddPressed: onAddPressed,
            onPreviewPressed: onPreviewPressed,
            onDeletePressed: onDeletePressed,
          ),
        ],
      ),
    );
  }
}
