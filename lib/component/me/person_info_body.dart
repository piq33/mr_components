import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/util/permission_utils.dart';
import 'package:bsl/util/reg_utils.dart';
import 'package:bsl/widget/common/button.dart';
import 'package:bsl/widget/common/custom_bottom_picker.dart';
import 'package:bsl/widget/common/date_bottom_picker.dart';
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

class PersonInfoBody extends StatefulWidget {
  const PersonInfoBody({required this.student, super.key});

  final StudentModel student;

  @override
  State<PersonInfoBody> createState() => _PersonInfoBodyState();
}

class _PersonInfoBodyState extends State<PersonInfoBody> {
  final _authService = Get.find<AuthService>();
  final _storageService = Get.find<StorageService>();
  final _authRepository = Get.find<RepositoryService>().authRepository;
  final _birthdayFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController(text: '');
  final _addressController = TextEditingController();

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;
  String? _avatar;
  Gender? _gender;
  DateTime? _birthday;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  void _refresh() {
    final selectedStudent = widget.student;
    final user = _authService.user.value;
    _nameController.text = selectedStudent.name != null
        ? '${selectedStudent.name}的${user.relationship.display}'
        : user.relationship.display;
    _phoneController.text = user.phoneNumber.phoneNumber()
        ? user.phoneNumber.replaceFirst(RegExp(r'\d{4}'), '****', 3)
        : user.phoneNumber;
    setState(() {
      _avatar = user.avatar;
      _gender = user.gender;
      _birthday = user.birthDate;
    });
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
                padding:
                    REdgeInsets.only(left: 15, top: 60, right: 15, bottom: 20),
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
                      title: '昵称',
                      hint: '请输入',
                      readOnly: true,
                      padding: EdgeInsets.zero,
                      controller: _nameController,
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      textInputAction: TextInputAction.next,
                    ),
                    Padding(padding: REdgeInsets.only(top: 30)),
                    BslSingleRowTextFieldFormField(
                      readOnly: true,
                      title: '手机号',
                      hint: '请输入',
                      padding: EdgeInsets.zero,
                      controller: _phoneController,
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                    ),
                    Padding(padding: REdgeInsets.only(top: 20)),
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
                      title: '生日',
                      text: _birthday != null
                          ? _birthdayFormat.format(_birthday!)
                          : null,
                      hint: '请选择',
                      padding: REdgeInsets.symmetric(vertical: 10),
                      titleStyle: _titleStyle(mainTheme),
                      textStyle: _textStyle(mainTheme),
                      onPressed: () => _chooseBirthday(context),
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

                  final student = widget.student;
                  var uniqueId = student.studentCode;
                  if (student.hasStudentId) {
                    uniqueId = student.studentId?.toString() ?? '';
                  } else if (student.hasPotentialId) {
                    uniqueId = student.potentialId?.toString() ?? '';
                  }
                  try {
                    SmartDialog.showLoading(msg: '用户头像上传中...');
                    _uploadCancelToken = UploadCancelToken();
                    final avatar = await _storageService.upload(
                      uniqueId: uniqueId,
                      filepath: path,
                      cancelToken: _uploadCancelToken,
                    );
                    if (avatar.isEmpty) {
                      Fluttertoast.showToast(msg: '头像上传异常');
                      return;
                    }
                    // 头像上传成功后更新用户信息
                    _cancelToken = CancelToken();
                    final update = await _authRepository.updateUserInfo(
                      avatar: avatar,
                      cancelToken: _cancelToken,
                    );
                    if (update.success) {
                      // 刷新用户数据
                      await _authService.fetchUserInfo();
                      setState(() => _avatar = avatar);
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
              final nickName = _nameController.text;
              if (nickName.isEmpty) {
                Fluttertoast.showToast(msg: '用户昵称不能为空');
                return;
              }
              try {
                SmartDialog.showLoading(msg: '用户信息更新中...');
                _cancelToken = CancelToken();
                final r = await _authRepository.updateUserInfo(
                  nickName: nickName,
                  gender: _gender,
                  birth: _birthday,
                );
                if (r.success) {
                  // 刷新用户数据
                  await _authService.fetchUserInfo();
                  Fluttertoast.showToast(msg: '用户信息更新成功');
                  _refresh();
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
          onCancel: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          onConfirm: (value) {
            Navigator.of(context, rootNavigator: true).pop(value);
          },
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
          onCancel: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          onConfirm: (dateTime) {
            Navigator.of(context, rootNavigator: true).pop(dateTime);
          },
        );
      },
    );
    if (selectedDate != null) setState(() => _birthday = selectedDate);
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _uploadCancelToken?.cancel('dispose');
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
