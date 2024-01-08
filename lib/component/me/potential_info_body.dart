import 'package:bsl/event/student_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/util/permission_utils.dart';
import 'package:bsl/widget/common/button.dart';
import 'package:bsl/widget/common/custom_bottom_picker.dart';
import 'package:bsl/widget/common/date_bottom_picker.dart';
import 'package:bsl/widget/common/region_bottom_picker.dart';
import 'package:bsl/widget/form/bsl_multi_row_button_formfield.dart';
import 'package:bsl/widget/form/bsl_single_row_button_formfield.dart';
import 'package:bsl/widget/form/bsl_single_row_text_formfield.dart';
import 'package:bsl/widget/me/person_avatar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class PotentialInfoBody extends StatefulWidget {
  const PotentialInfoBody({required this.potentialId, super.key});

  final int potentialId;

  @override
  State<PotentialInfoBody> createState() => _PotentialInfoBodyState();
}

class _PotentialInfoBodyState extends State<PotentialInfoBody> {
  final _schoolRepository = Get.find<RepositoryService>().studentRepository;
  final _authService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _birthdayFormat = DateFormat('yyyy.MM.dd', Intl.systemLocale);

  final _nameController = TextEditingController();
  final _identityController = TextEditingController();

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;
  String? _avatar;
  Gender? _gender;
  DateTime? _birthday;
  SelectedRegion? _selectedRegion;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _fetchStudent());
  }

  void _fetchStudent() async {
    try {
      _cancelToken = CancelToken();
      final r = await _schoolRepository.fetchPotentialStudentById(
        widget.potentialId,
        _cancelToken,
      );
      if (r.success) {
        PotentialStudentModel student = r.data;
        _nameController.text = student.name;
        _identityController.text = student.identity;

        final province = student.province ?? '';
        final city = student.city ?? '';
        setState(() {
          _avatar = student.avatar;
          _gender = student.gender;
          _birthday = student.birth;
          _selectedRegion = province.isNotEmpty && city.isNotEmpty
              ? SelectedRegion(
                  province: RegionModel(name: province),
                  city: RegionModel(name: city),
                )
              : null;
        });
        final syncStudent = StudentModel.fromPotential(student);
        eventBus.fire(StudentSyncEvent(syncStudent));
      }
    } catch (e, stackTrace) {
      logError('获取潜在学生信息异常', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.me.personInfoBackground.provider(),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: REdgeInsets.only(top: 54)),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: REdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: Get.back,
                  style: TextButton.styleFrom(
                    padding: REdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: mainTheme?.titleColor,
                    size: 30.r,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '个人信息',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: REdgeInsets.only(top: 45)),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                margin: REdgeInsets.only(left: 16, top: 48, right: 16),
                padding: REdgeInsets.only(
                  left: 15,
                  top: 60,
                  right: 15,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: meTheme?.cardBackground,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1.r),
                      blurRadius: 12.r,
                      color: meTheme?.cardBoxShadow ?? Colors.transparent,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '基础信息',
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(padding: REdgeInsets.only(top: 30)),
                    BslSingleRowTextFieldFormField(
                      title: '姓名',
                      hint: '请输入',
                      readOnly: true,
                      padding: EdgeInsets.zero,
                      controller: _nameController,
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      textInputAction: TextInputAction.next,
                    ),
                    Padding(padding: REdgeInsets.only(top: 30)),
                    BslSingleRowButtonFormField(
                      title: '性别',
                      text: _gender?.display,
                      hint: '请选择',
                      padding: REdgeInsets.symmetric(vertical: 10),
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      onPressed: () => _chooseGender(context),
                    ),
                    Padding(padding: REdgeInsets.only(top: 20)),
                    BslSingleRowButtonFormField(
                      title: '出生日期',
                      text: _birthday != null
                          ? _birthdayFormat.format(_birthday!)
                          : null,
                      hint: '请选择',
                      padding: REdgeInsets.symmetric(vertical: 10),
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      onPressed: () => _chooseBirthday(context),
                    ),
                    Padding(padding: REdgeInsets.only(top: 30)),
                    BslSingleRowTextFieldFormField(
                      title: '身份证',
                      hint: '请输入',
                      padding: EdgeInsets.zero,
                      controller: _identityController,
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      textInputAction: TextInputAction.done,
                    ),
                    Padding(padding: REdgeInsets.only(top: 30)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: BslMultiRowButtonFormField(
                            required: false,
                            text: _selectedRegion?.province?.name,
                            hint: '选择省',
                            padding: REdgeInsets.symmetric(
                                horizontal: 15, vertical: 11),
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
                            padding: REdgeInsets.symmetric(
                                horizontal: 15, vertical: 11),
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
                  ],
                ),
              ),
              PersonAvatar(
                avatar: _avatar,
                onPressed: () async {
                  if (!await ensurePhotosPermission()) return;
                  final picker = ImagePicker();
                  final image =
                      await picker.pickImage(source: ImageSource.gallery);
                  final path = image?.path;
                  logDebug('选择头像: $path');
                  if (path == null) return;

                  try {
                    SmartDialog.showLoading(msg: '正在上传...');
                    _uploadCancelToken = UploadCancelToken();
                    final avatar = await _storageService.upload(
                      uniqueId: widget.potentialId.toString(),
                      filepath: path,
                      cancelToken: _uploadCancelToken,
                    );
                    if (avatar.isEmpty) {
                      Fluttertoast.showToast(msg: '头像上传异常');
                      return;
                    }
                    // 头像上传成功后更新用户信息
                    _cancelToken = CancelToken();
                    final r = await _schoolRepository.updatePotentialStudent(
                      potentialId: widget.potentialId,
                      avatar: avatar,
                      cancelToken: _cancelToken,
                    );
                    if (r.success) {
                      Fluttertoast.showToast(msg: '更新成功');
                      // 刷新用户数据
                      await _authService.fetchUserInfo();
                      _fetchStudent();
                    }
                  } catch (e, stackTrace) {
                    logError('用户头像更新异常, ${e.toString()}', e, stackTrace);
                  } finally {
                    SmartDialog.dismiss();
                  }
                },
              ),
            ],
          ),
          DefaultButton(
            height: 47.h,
            margin: REdgeInsets.only(left: 78, top: 50, right: 78),
            onTap: () async {
              final username = _nameController.text;
              if (username.isEmpty) {
                Fluttertoast.showToast(msg: '用户姓名不能为空');
                return;
              }
              final identity = _identityController.text;
              try {
                SmartDialog.showLoading(msg: '用户信息更新中...');
                _cancelToken = CancelToken();
                final r = await _schoolRepository.updatePotentialStudent(
                  potentialId: widget.potentialId,
                  name: username,
                  gender: _gender,
                  birth: _birthday,
                  identity: identity,
                  province: _selectedRegion?.province?.name,
                  city: _selectedRegion?.city?.name,
                  cancelToken: _cancelToken,
                );
                if (r.success) {
                  Fluttertoast.showToast(msg: '更新成功');
                  _fetchStudent();
                }
              } catch (e, stackTrace) {
                logError('用户信息更新异常, ${e.toString()}', e, stackTrace);
              } finally {
                SmartDialog.dismiss();
              }
            },
            child: Center(
              child: Text(
                '更新',
                style: TextStyle(
                  color: mainTheme?.mainButtonTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _titleStyle(MainTheme? mainTheme) {
    return TextStyle(
      color: mainTheme?.textColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle _textStyle(MainTheme? mainTheme) {
    return TextStyle(
      color: mainTheme?.titleColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  void _chooseGender(BuildContext context) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final selectedGender = await showModalBottomSheet<Gender?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (BuildContext context) {
        return CustomBottomPicker<Gender>(
          title: '选择性别',
          selected: _gender == Gender.unknown ? Gender.male : _gender,
          list: const [Gender.male, Gender.female],
          bodyHeight: 260.h,
          itemHeight: 50.h,
          onIndexWhere: (e1, e2) => e1 == e2,
          onValueToString: (e) => e.display,
          onCancel: () => Navigator.of(context, rootNavigator: true).pop(),
          onConfirm: (value) =>
              Navigator.of(context, rootNavigator: true).pop(value),
        );
      },
    );
    if (selectedGender != null) setState(() => _gender = selectedGender);
  }

  void _chooseBirthday(BuildContext context) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final selectedDate = await showModalBottomSheet<DateTime?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (BuildContext context) {
        return DateBottomPicker(
          title: '选择生日',
          initialDateTime: _birthday,
          onDateTimeChanged: (dateTime) {},
          onCancel: () => Navigator.of(context, rootNavigator: true).pop(),
          onConfirm: (dateTime) =>
              Navigator.of(context, rootNavigator: true).pop(dateTime),
        );
      },
    );
    if (selectedDate != null) setState(() => _birthday = selectedDate);
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
    _uploadCancelToken?.cancel('dispose');
    _nameController.dispose();
    _identityController.dispose();
    super.dispose();
  }
}
