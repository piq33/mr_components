import 'package:components/component/me/potential/potential_quick_entrance.dart';
import 'package:components/management/controller/me/me_controller.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/gender_avatar.dart';
import 'package:components/widget/common/relationship/relationship_tag.dart';
import 'package:components/widget/me/editable_button.dart';
import 'package:components/widget/me/school_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MeBody extends GetView<MeController> {
  const MeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.me.meBackground.provider(),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: REdgeInsets.only(top: 60)),
          Obx(() {
            final user = controller.user.value;
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: REdgeInsets.only(left: 16)),
                GenderAvatar(
                  size: 58.r,
                  childSize: 16.r,
                  borderWidth: 3.r,
                  gender: user.gender,
                  avatar: user.avatar,
                  maleDefault: Assets.common.defaultImage.path,
                  femaleDefault: Assets.common.defaultImage.path,
                ),
                Padding(padding: REdgeInsets.only(left: 20)),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              user.userName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: mainTheme?.titleColor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(padding: REdgeInsets.only(left: 5)),
                          RelationshipTag(relationship: user.relationship),
                        ],
                      ),
                      Padding(padding: REdgeInsets.only(top: 8)),
                      Text(
                        '手机号: ${user.phoneNumber}',
                        style: TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: REdgeInsets.only(left: 8)),
                EditableButton(onPressed: () => Get.toNamed('personInfo')),
                Padding(padding: REdgeInsets.only(right: 20)),
              ],
            );
          }),
          Padding(padding: REdgeInsets.only(top: 68)),
          Obx(() {
            final toBePaidList = controller.toBePaidList.value;
            return SchoolAccount(
              count: toBePaidList.length,
              onPressed: () => Get.toNamed('bill'),
            );
          }),
          const PotentialQuickEntrance(),
        ],
      ),
    );
  }
}
