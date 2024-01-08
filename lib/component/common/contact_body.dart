import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/button.dart';
import 'package:bsl/widget/common/date_bottom_picker.dart';
import 'package:bsl/widget/common/kindergarten/kindergarten_bottom_picker.dart';
import 'package:bsl/widget/common/region_bottom_picker.dart';
import 'package:bsl/widget/form/bsl_multi_row_button_formfield.dart';
import 'package:bsl/widget/form/bsl_multit_row_text_formfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ContactBody extends StatefulWidget {
  const ContactBody({super.key});

  @override
  State<ContactBody> createState() => _ContactBodyState();
}

class _ContactBodyState extends State<ContactBody> {
  static final _birthdayDateFormat =
      DateFormat('yyyy-MM-dd', Intl.systemLocale);

  final _repository = Get.find<RepositoryService>().commonRepository;
  final _babyNameTextController = TextEditingController();
  final _nameTextController = TextEditingController();
  final _phoneNumberTextController = TextEditingController();

  CancelToken? _cancelToken;
  DateTime? _birthday;
  SelectedRegion? _selectedRegion;
  KindergartenModel? _selectedKindergarten;

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
    setState(() {
      _selectedRegion = selected;
      _selectedKindergarten = null;
    });
  }

  void _submit() async {
    final babyName = _babyNameTextController.text;
    if (babyName.isEmpty) {
      Fluttertoast.showToast(msg: '请输入宝贝的姓名');
      return;
    }
    final name = _nameTextController.text;
    if (name.isEmpty) {
      Fluttertoast.showToast(msg: '请输入您的姓名');
      return;
    }
    final phoneNumber = _phoneNumberTextController.text;
    if (phoneNumber.isEmpty) {
      Fluttertoast.showToast(msg: '请输入您的联系方式');
      return;
    }
    final birthday = _birthday;
    if (birthday == null) {
      Fluttertoast.showToast(msg: '请选择宝贝的出生日期');
      return;
    }
    final kindergarten = _selectedKindergarten;
    if (kindergarten == null) {
      Fluttertoast.showToast(msg: '请选择希望了解的幼儿园');
      return;
    }
    try {
      SmartDialog.showLoading(msg: '正在提交');
      _cancelToken = CancelToken();
      final r = await _repository.addContact(
        studentName: babyName,
        parentName: name,
        contactNumber: phoneNumber,
        studentBirthDate: birthday,
        schoolCode: kindergarten.schoolCode,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        Fluttertoast.showToast(msg: '提交成功');
        Get.back();
      }
    } catch (e, stackTrace) {
      logError('添加联系方式异常', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    final birthday = _birthday;
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.h),
        Container(
          width: 76.w,
          alignment: Alignment.center,
          margin: REdgeInsets.symmetric(horizontal: 16),
          padding: REdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.activity.contactIcon.provider(),
            ),
          ),
          child: Text(
            '联系我们',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 28),
          child: Text(
            '尊敬的家长：',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 51),
          child: Text(
            '您好！请您填写下列表单，以便院所尽快与您取得联系。谢谢合作！',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 13.h),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 11),
          padding: REdgeInsets.symmetric(horizontal: 14, vertical: 16),
          decoration: BoxDecoration(
            color: mainTheme?.cardBoxBackground,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BslMultiRowTextFormField(
                required: true,
                title: '宝贝姓名',
                hint: '请输入姓名',
                controller: _babyNameTextController,
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              BslMultiRowTextFormField(
                required: true,
                title: '您姓名',
                hint: '请输入姓名',
                controller: _nameTextController,
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              BslMultiRowTextFormField(
                required: true,
                title: '您的电话',
                hint: '请输入您的联系电话',
                controller: _phoneNumberTextController,
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 20.h),
              BslMultiRowButtonFormField(
                required: true,
                title: '您宝贝的出生日期',
                text: birthday != null
                    ? _birthdayDateFormat.format(birthday)
                    : null,
                hint: '请选择日期',
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                icon: Assets.conservation.dateIcon.image(
                  width: 16.w,
                  height: 16.h,
                ),
                onPressed: () async {
                  final birthday = await showModalBottomSheet<DateTime?>(
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
                        title: '宝贝的出生日期',
                        initialDateTime: _birthday,
                        columns: const [
                          PickerType.year,
                          PickerType.month,
                          PickerType.day
                        ],
                        onCancel: () => Navigator.of(context).pop(),
                        onConfirm: (dateTime) =>
                            Navigator.of(context).pop(dateTime),
                      );
                    },
                  );

                  if (birthday == null) return;
                  setState(() => _birthday = birthday);
                },
              ),
              SizedBox(height: 20.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: BslMultiRowButtonFormField(
                      required: true,
                      title: '希望了解的幼儿园',
                      text: _selectedRegion?.province?.name,
                      hint: '选择省',
                      padding:
                          REdgeInsets.symmetric(horizontal: 15, vertical: 11),
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
                      required: true,
                      text: _selectedRegion?.city?.name,
                      hint: '选择市',
                      padding:
                          REdgeInsets.symmetric(horizontal: 15, vertical: 11),
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
              SizedBox(height: 10.h),
              BslMultiRowButtonFormField(
                required: true,
                text: _selectedKindergarten?.schoolName,
                hint: '请选择幼儿园',
                padding: REdgeInsets.symmetric(horizontal: 15, vertical: 11),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: mainTheme?.subTextColor,
                  size: 16.r,
                ),
                onPressed: () async {
                  final provinceName = _selectedRegion?.province?.name ?? '';
                  final cityName = _selectedRegion?.city?.name ?? '';

                  if (provinceName.isEmpty || cityName.isEmpty) {
                    Fluttertoast.showToast(msg: '请先选择地区');
                    return;
                  }

                  final mainTheme = Theme.of(context).extension<MainTheme>();
                  final selected =
                      await showModalBottomSheet<KindergartenModel?>(
                    context: context,
                    backgroundColor: mainTheme?.bottomSheetBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        topRight: Radius.circular(16.r),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return KindergartenBottomPicker(
                        key: ValueKey(_selectedRegion),
                        title: '请选择幼儿园',
                        bodyHeight: 260.h,
                        itemHeight: 50.h,
                        selected: _selectedKindergarten,
                        provinceName: provinceName,
                        cityName: cityName,
                        onCancel: () => Navigator.of(context).pop(),
                        onConfirm: (kindergarten) =>
                            Navigator.of(context).pop(kindergarten),
                      );
                    },
                  );
                  if (selected == null) return;
                  setState(() => _selectedKindergarten = selected);
                },
              ),
              SizedBox(height: 33.h),
              DefaultButton(
                height: 38.h,
                onTap: _submit,
                child: Center(
                  child: Text(
                    '马上提交',
                    style: TextStyle(
                      color: mainTheme?.mainButtonTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 27.h),
            ],
          ),
        ),
        SizedBox(height: 38.h),
      ],
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _babyNameTextController.dispose();
    _nameTextController.dispose();
    _phoneNumberTextController.dispose();
    super.dispose();
  }
}
