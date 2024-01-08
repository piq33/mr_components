import 'dart:io';

import 'package:components/log/global_log.dart';
import 'package:components/management/controller/school/student_controller.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/mixin/media_mixin.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/login_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/common/custom_dialog.dart';
import 'package:components/widget/common/gender_selector.dart';
import 'package:components/widget/common/region_bottom_picker.dart';
import 'package:components/widget/form/bsl_multi_row_button_formfield.dart';
import 'package:components/widget/login/relationship_selector.dart';
import 'package:components/widget/new_baby/birthday_selector.dart';
import 'package:components/widget/new_baby/child_name_textfield.dart';
import 'package:components/widget/new_baby/image_selector.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NewChildForm extends StatefulWidget {
  const NewChildForm({required this.displaySkip, super.key});

  final bool displaySkip;

  @override
  State<NewChildForm> createState() => _NewChildFormState();
}

enum _PotentialStatus {
  // 存在
  exist,
  // 不存在
  nonExist,
  // 请求异常
  error,
}

class _NewChildFormState extends State<NewChildForm> with AddMediaMixin {
  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);
  final _userService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _studentController = Get.find<StudentController>();
  final _schoolRepository = Get.find<RepositoryService>().studentRepository;
  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;

  // 可选的亲属关系列表
  var _relationships = <RelationshipModel>[];
  final _childNameController = TextEditingController();
  final _childBirthdayController = TextEditingController();
  File? _avatar;
  Gender? _selectedGender;
  RelationshipModel? _selectedRelationship;
  DateTime? _childBirthday;
  SelectedRegion? _selectedRegion;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _fetchRelationship());
  }

  /// 获取亲属关系列表
  void _fetchRelationship() async {
    try {
      _cancelToken = CancelToken();
      final r = await _schoolRepository.fetchRelationship(_cancelToken);
      if (r.success) {
        setState(() {
          List<RelationshipModel> list = r.data;
          if (list.isNotEmpty) _selectedRelationship = list.first;
          _relationships = list;
        });
      }
    } catch (e, stackTrace) {
      logError('获取学生家庭关系字典异常', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.login.newChildBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  margin: REdgeInsets.only(top: 82),
                  child: widget.displaySkip
                      ? OutlinedButton(
                          onPressed: () => Get.back(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 6,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            side: BorderSide(
                              width: 1,
                              color: mainTheme?.subButtonBorderColor ??
                                  Colors.transparent,
                            ),
                          ),
                          child: Text(
                            '跳过',
                            style: TextStyle(
                              color: mainTheme?.titleColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
                Container(
                  margin: REdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: ImageSelector(
                    width: 80.w,
                    height: 80.h,
                    file: _avatar,
                    onPressed: () async {
                      var file = await addImage();
                      if (file == null || !mounted) return;

                      setState(() => _avatar = File(file.local));
                    },
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 12)),
                Center(
                  child: Text(
                    '上传孩子真实头像',
                    style: TextStyle(
                      color: mainTheme?.textColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 16)),
                GenderSelector(
                  width: 70.w,
                  height: 30.h,
                  onGenderSelected: (gender) {
                    setState(() => _selectedGender = gender);
                  },
                ),
                Padding(padding: REdgeInsets.only(top: 56)),
                ChildNameTextField(controller: _childNameController),
                Container(
                  margin: REdgeInsets.only(top: 16, bottom: 8),
                  height: 1.p,
                  color: mainTheme?.dividerColor,
                ),
                BirthdaySelector(
                  controller: _childBirthdayController,
                  initialDateTime: _childBirthday,
                  onDateSelected: (selectedDate) {
                    _childBirthday = selectedDate;
                    _childBirthdayController.text =
                        _dateFormat.format(selectedDate);
                  },
                ),
                Container(
                  margin: REdgeInsets.only(top: 8, bottom: 16),
                  height: 1.p,
                  color: mainTheme?.dividerColor,
                ),
                Padding(padding: REdgeInsets.only(top: 8)),
                Text(
                  '我是孩子的',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 12)),
                RelationshipSelector(
                  key: ValueKey(_relationships.length),
                  width: 84.w,
                  height: 30.h,
                  list: _relationships,
                  selected: _selectedRelationship,
                  onRelationshipSelected: (relationship) {
                    setState(() => _selectedRelationship = relationship);
                  },
                ),
                Container(
                  margin: REdgeInsets.only(top: 16, bottom: 16),
                  height: 1.p,
                  color: mainTheme?.dividerColor,
                ),
                Text(
                  '您所在的城市',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 10)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: BslMultiRowButtonFormField(
                        required: false,
                        text: _selectedRegion?.province?.name,
                        hint: '选择省',
                        padding:
                            REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                        borderRadius: BorderRadius.circular(60.r),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: mainTheme?.subTextColor,
                          size: 16.r,
                        ),
                        onPressed: () => _selectRegion(context),
                      ),
                    ),
                    SizedBox(width: 26.w),
                    Expanded(
                      child: BslMultiRowButtonFormField(
                        required: false,
                        text: _selectedRegion?.city?.name,
                        hint: '选择市',
                        padding:
                            REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                        borderRadius: BorderRadius.circular(60.r),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: mainTheme?.subTextColor,
                          size: 16.r,
                        ),
                        onPressed: () => _selectRegion(context),
                      ),
                    ),
                  ],
                ),
                Padding(padding: REdgeInsets.only(top: 60)),
                Container(
                  height: 46.h,
                  decoration: BoxDecoration(
                    color: mainTheme?.mainButtonBackground,
                    borderRadius: BorderRadius.all(Radius.circular(46.r)),
                    border: Border.all(
                      color: mainTheme?.mainButtonBorderColor ??
                          Colors.transparent,
                      width: 1.r,
                    ),
                  ),
                  child: TextButton(
                    onPressed: _submit,
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(46.r)),
                      ),
                    ),
                    child: Text(
                      '确定',
                      style: TextStyle(
                        color: mainTheme?.mainButtonTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 12)),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: const TextStyle(height: 1.5),
                    children: [
                      TextSpan(
                        text: '如您的孩子在碧桂园学校旗下的幼儿园或学校就读，请',
                        style: TextStyle(
                          color: mainTheme?.subTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '直接跳过，并联系您的班主任进行学生绑定',
                        style: TextStyle(
                          color: loginTheme?.warningColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submit() async {
    final avatar = _avatar;
    final gender = _selectedGender;
    if (gender == null) {
      Fluttertoast.showToast(msg: '请选择孩子性别');
      return;
    }
    final childName = _childNameController.text;
    if (childName.isEmpty) {
      Fluttertoast.showToast(msg: '请填写孩子姓名');
      return;
    }
    final birth = _childBirthday;
    if (birth == null) {
      Fluttertoast.showToast(msg: '请选择孩子生日');
      return;
    }
    final relationship = _selectedRelationship;
    if (relationship == null) {
      Fluttertoast.showToast(msg: '请选择孩子亲属关系');
      return;
    }
    final province = _selectedRegion?.province?.name;
    final city = _selectedRegion?.city?.name;

    // 检查学生名称是否填写准确
    final confirm = await _checkNameDialog(
      context: context,
      avatar: avatar,
      gender: gender,
      name: childName,
      birth: birth,
      relationship: relationship,
    );
    if (!mounted || !confirm) return;

    SmartDialog.showLoading(msg: '正在提交...');
    // 检查潜生是否存在
    final status = await _checkPotentialExist(
      context: context,
      avatar: avatar,
      gender: gender,
      name: childName,
      birth: birth,
      relationship: relationship,
    );
    if (!mounted || status == _PotentialStatus.error) {
      SmartDialog.dismiss();
      return;
    }

    bool add = true;
    if (status == _PotentialStatus.exist) {
      SmartDialog.dismiss();
      // 潜生存在，提示是否需要继续添加
      add = await _potentialExistDialog(
        context: context,
        avatar: avatar,
        gender: gender,
        name: childName,
        birth: birth,
        relationship: relationship,
      );
    }

    if (!mounted || !add) {
      SmartDialog.dismiss();
      return;
    }

    // 重新显示loading弹框
    if (status == _PotentialStatus.exist) {
      SmartDialog.showLoading(msg: '正在提交...');
    }

    // 添加潜生
    final userId = _userService.user.value.userId;
    final r = await _uploadAndAdd(
      userId: userId ?? 0,
      avatar: avatar,
      gender: gender,
      name: childName,
      birth: birth,
      relationship: relationship,
      province: province,
      city: city,
    );

    SmartDialog.dismiss();
    if (!mounted || !r) return;

    // 刷新学生信息
    _studentController.refreshStudent();
    Get.back();
  }

  Future<bool> _checkNameDialog({
    required BuildContext context,
    File? avatar,
    required Gender gender,
    required String name,
    required DateTime birth,
    required RelationshipModel relationship,
  }) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final r = await showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: mainTheme?.dialogBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: CustomDialog(
            text: '请核实"$name"是孩子的真实姓名吗?',
            iconPath: Assets.common.warningIcon.path,
            dismissible: false,
            onConfirm: () => Navigator.of(context).pop(true),
            onCancel: () => Navigator.of(context).pop(false),
          ),
        );
      },
    );
    return r ?? false;
  }

  // 检查是否存在相同的潜在学生
  Future<_PotentialStatus> _checkPotentialExist({
    required BuildContext context,
    File? avatar,
    required Gender gender,
    required String name,
    required DateTime birth,
    required RelationshipModel relationship,
  }) async {
    // 检查是否存在相同的潜在学生
    try {
      _cancelToken = CancelToken();
      final r = await _schoolRepository.isPotentialExist(
        birth: birth,
        name: name,
        gender: gender,
        cancelToken: _cancelToken,
      );
      return r.success ? _PotentialStatus.nonExist : _PotentialStatus.exist;
    } catch (e, stackTrace) {
      logError('检查潜在学生存在情况异常', e, stackTrace);
    }
    return _PotentialStatus.error;
  }

  Future<bool> _potentialExistDialog({
    required BuildContext context,
    File? avatar,
    required Gender gender,
    required String name,
    required DateTime birth,
    required RelationshipModel relationship,
  }) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final r = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: mainTheme?.dialogBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: CustomDialog(
            text:
                '你已有一个孩子"$name"性别${gender.display}生日${_dateFormat.format(birth)}.是否继续添加?',
            iconPath: Assets.common.warningIcon.path,
            dismissible: false,
            onConfirm: () => Navigator.of(context).pop(true),
            onCancel: () => Navigator.of(context).pop(false),
          ),
        );
      },
    );
    return r ?? false;
  }

  Future<bool> _uploadAndAdd({
    required int userId,
    File? avatar,
    required Gender gender,
    required String name,
    required DateTime birth,
    required RelationshipModel relationship,
    String? province,
    String? city,
  }) async {
    String? uploadAvatar;
    // 上传头像
    if (avatar != null && avatar.path.isNotEmpty) {
      try {
        _uploadCancelToken = UploadCancelToken();
        uploadAvatar = await _storageService.upload(
          uniqueId: '${DateTime.now().millisecondsSinceEpoch + userId}',
          filepath: avatar.path,
          cancelToken: _uploadCancelToken,
        );
      } catch (e) {
        logError('上传孩子头像异常', e);
      } finally {
        _cancelToken = null;
      }
    }
    // 提交学生资料
    try {
      _cancelToken = CancelToken();
      final r = await _schoolRepository.insertPotentialStudent(
        avatar: uploadAvatar,
        birth: birth,
        name: name,
        gender: gender,
        relationship: relationship.code,
        province: province,
        city: city,
      );
      return r.success;
    } catch (e, stackTrace) {
      logError('潜在学生资料提交异常', e, stackTrace);
    } finally {
      _cancelToken = null;
    }
    return false;
  }

  void _selectRegion(BuildContext context) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final selected = await showModalBottomSheet<SelectedRegion?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (BuildContext context) {
        return RegionBottomPicker(
          title: '请选择地区',
          bodyHeight: 260.h,
          itemHeight: 50.h,
          selected: _selectedRegion,
          onCancel: () => Navigator.of(context).pop(),
          onConfirm: (region) => Navigator.of(context).pop(region),
        );
      },
    );
    if (selected == null) return;
    setState(() => _selectedRegion = selected);
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _cancelToken = null;
    _uploadCancelToken?.cancel('dispose');
    _childNameController.dispose();
    _childBirthdayController.dispose();
    super.dispose();
  }
}
