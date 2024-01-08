import 'package:components/component/time/moment_item.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/controller/time/timelist_controller.dart';
import 'package:components/mixin/diy_mixin.dart';
import 'package:components/model/time_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/router/gallery_route_utils.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/widget/common/custom_dialog.dart';
import 'package:components/widget/common/empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

class TimeList extends StatelessWidget with DiyShareMixin {
  const TimeList({
    required this.year,
    required this.catalog,
    required this.controller,
    super.key,
  });

  final int year;
  final CatalogType catalog;
  final TimeListController controller;

  @override
  Widget build(BuildContext context) {
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return Container(
      padding: REdgeInsets.only(top: 15.h),
      child: TimelineTheme(
        data: TimelineThemeData(color: timeTheme?.lineColor, nodePosition: 0),
        child: Obx(
          () {
            final loading = controller.loading.value;
            if (loading) return const SizedBox();

            final list = controller.list.value;
            if (list.isEmpty) {
              return Center(
                child: Padding(
                  padding: REdgeInsets.only(top: 80),
                  child: const EmptyWidget(),
                ),
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list.asMap().entries.map((item) {
                return TimelineTile(
                  nodeAlign: TimelineNodeAlign.start,
                  node: TimelineNode(
                    startConnector: SolidLineConnector(
                      indent: 0,
                      thickness: 1.w,
                    ),
                    endConnector: SolidLineConnector(
                      indent: 0,
                      thickness: 1.w,
                      color: item.key == list.length - 1
                          ? Colors.transparent
                          : null,
                    ),
                    indicator: DotIndicator(
                      position: 0,
                      size: 14.w,
                      color: Colors.transparent,
                      child: Container(
                        margin: REdgeInsets.all(3),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: timeTheme?.markerColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  contents: MomentItem(
                    catalog: catalog,
                    item: item.value,
                    onDiyPressed: (moment) {
                      final studentAlbumId = moment.diy?.studentAlbumId;
                      if (studentAlbumId == null || studentAlbumId.isEmpty) {
                        Fluttertoast.showToast(msg: '相册数据异常');
                        return;
                      }
                      Get.toNamed(
                        'diy/view',
                        parameters: {
                          'onlyEdit': 'false',
                          'studentAlbumId': studentAlbumId,
                        },
                      );
                    },
                    onEditPressed: (moment) {
                      // 若时光有diy数据，则跳转到diy相册编辑页面
                      final studentAlbumId = moment.diy?.studentAlbumId ?? '';
                      if (studentAlbumId.isNotEmpty) {
                        Get.toNamed(
                          'album/gallery',
                          parameters: {'studentAlbumId': studentAlbumId},
                        );
                        return;
                      }
                      Get.toNamed(
                        'album/record',
                        arguments: {'moment': moment},
                      );
                    },
                    onDeletePressed: (moment) async {
                      final confirm = await showDialog<bool?>(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          final mainTheme =
                              Theme.of(context).extension<MainTheme>();
                          return Dialog(
                            backgroundColor: mainTheme?.dialogBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r)),
                            ),
                            child: CustomDialog(
                              text: '是否删除${moment.timeMomentName}',
                              iconPath: Assets.common.trashIcon.path,
                              dismissible: false,
                              onConfirm: () => Navigator.of(context).pop(true),
                              onCancel: () => Navigator.of(context).pop(false),
                            ),
                          );
                        },
                      );
                      if (confirm == null || !confirm) return;

                      try {
                        SmartDialog.showLoading(msg: '正在删除...');
                        await controller.deleteMoment(moment);
                        Fluttertoast.showToast(msg: '时光删除成功');
                      } catch (e, stackTrace) {
                        logError('删除时光异常: ${e.toString()}', e, stackTrace);
                      } finally {
                        SmartDialog.dismiss();
                      }
                    },
                    onPreviewPressed: galleryRouteTo,
                    onSharePressed: (moment) {
                      final detail = moment.diy;
                      if (detail == null) {
                        Fluttertoast.showToast(msg: '相册数据异常');
                        return;
                      }
                      share(context, detail);
                    },
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
