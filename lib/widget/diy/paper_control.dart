import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/custom_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paper_transition/paper_transition.dart';

class PaperControl extends StatelessWidget {
  const PaperControl({
    required this.paperController,
    this.onPreviousPressed,
    this.onNextPressed,
    super.key,
  });

  final PaperController paperController;
  final VoidCallback? onPreviousPressed;
  final VoidCallback? onNextPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Container(
      alignment: Alignment.bottomCenter,
      margin: REdgeInsets.symmetric(horizontal: 15),
      child: ValueListenableBuilder(
        valueListenable: paperController.pageNotifier,
        builder: (context, value, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 10),
                child: ProgressBar(
                  barHeight: 6.h,
                  progress: Duration(seconds: value),
                  total: Duration(seconds: paperController.pageCount - 1),
                  thumbRadius: 7,
                  thumbGlowRadius: 14,
                  timeLabelLocation: TimeLabelLocation.none,
                  thumbColor: diyTheme?.templatePageThumbColor,
                  thumbBorderColor: diyTheme?.templatePageThumbBorderColor,
                  thumbBorderWidth: 1.r,
                  baseBarColor:
                      diyTheme?.templatePageBarBackground?.withOpacity(0.9),
                  baseBarBorderColor: diyTheme?.templatePageBarBackground,
                  baseBarBorderWidth: 1.r,
                  progressBarColor:
                      diyTheme?.templatePageBarBackground?.withOpacity(0.9),
                  onDragUpdate: (details) {
                    final page =
                        (details.timeStamp.inMilliseconds / 1000).round();
                    if (page == paperController.current) return;
                    paperController.goto(page);
                  },
                  onDragEnd: () {
                    // 复位进度条值
                    final pageNotifier = paperController.pageNotifier;
                    pageNotifier.value = paperController.current;
                    pageNotifier.notifyListeners();
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: paperController.hasPrevious ? 1 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: TextButton(
                      onPressed: () {
                        paperController.previous();
                        onPreviousPressed?.call();
                      },
                      style: TextButton.styleFrom(
                        padding:
                            REdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                      child: Text(
                        '上一页',
                        style: TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: paperController.hasNext ? 1 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: TextButton(
                      onPressed: () {
                        paperController.next();
                        onNextPressed?.call();
                      },
                      style: TextButton.styleFrom(
                        padding:
                            REdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                      child: Text(
                        '下一页',
                        style: TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          );
        },
      ),
    );
  }
}
