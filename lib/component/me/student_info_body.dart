import 'dart:math';

import 'package:bsl/event/student_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/management/services/storage_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/school_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/util/global.dart';
import 'package:bsl/util/permission_utils.dart';
import 'package:bsl/util/reg_utils.dart';
import 'package:bsl/widget/common/card_box.dart';
import 'package:bsl/widget/common/gender_avatar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class _FamilyMemberCard extends StatelessWidget {
  const _FamilyMemberCard({required this.member});

  final FamilyMemberModel member;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return CardBox(
      margin: REdgeInsets.symmetric(horizontal: 16),
      padding: REdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '家庭成员',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(padding: REdgeInsets.only(top: 24)),
          _StudentInfo(title: '关系', text: member.relationship.display),
          Padding(padding: REdgeInsets.only(top: 24)),
          _StudentInfo(title: '姓名', text: member.name),
          Padding(padding: REdgeInsets.only(top: 24)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '联系方式',
                style: TextStyle(
                  color: mainTheme?.textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: REdgeInsets.only(left: 20)),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: member.phone,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final phone = 'tel:${member.phone}';
                        if (phone.phoneNumber() &&
                            await canLaunchUrlString(phone)) {
                          launchUrlString(phone);
                        }
                      },
                    style: TextStyle(
                      color: mainTheme?.hyperlinkColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StudentInfo extends StatelessWidget {
  const _StudentInfo({required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: theme?.textColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(left: 20)),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: theme?.titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class StudentInfoBody extends StatefulWidget {
  const StudentInfoBody({required this.studentCode, super.key});

  final String studentCode;

  @override
  State<StudentInfoBody> createState() => _StudentInfoBodyState();
}

class _StudentInfoBodyState extends State<StudentInfoBody> {
  final _storageService = Get.find<StorageService>();
  final _commonRepository = Get.find<RepositoryService>().commonRepository;
  final _studentRepository = Get.find<RepositoryService>().studentRepository;
  final _birthDateFormat = DateFormat('M月d日', Intl.systemLocale);

  var _credentialsType = List<DictModel>.empty();
  var _student = StudentModel.empty();
  var _members = List.empty();

  UploadCancelToken? _uploadCancelToken;
  CancelToken? _cancelToken;

  Future<void> _fetchDict() async {
    try {
      _cancelToken = CancelToken();
      final r = await _commonRepository.fetchDictData(
        'credentialsType',
        _cancelToken,
      );
      if (r.success) _credentialsType = r.data;
    } catch (e, stackTrace) {
      logError('获取证件字典异常: ${e.toString()}', e, stackTrace);
    }
  }

  Future<void> _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _studentRepository.fetchStudentInfoByCode(
        widget.studentCode,
        _cancelToken,
      );
      if (r.success) {
        final student = r.data;
        final members = student.members
            .where((element) => element.relationship != Relationship.other)
            .toList();
        eventBus.fire(StudentSyncEvent(student));
        setState(() {
          _student = student;
          _members = members;
        });
      }
    } catch (e, stackTrace) {
      logError('获取学生详细信息异常: ${e.toString()}', e, stackTrace);
      setState(() {
        _student = StudentModel.empty();
      });
    }
  }

  void _updateAvatar(StudentModel student) async {
    if (!await ensurePhotosPermission()) return;
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    final path = image?.path;
    logDebug('选择头像: $path');
    if (path == null) return;

    final uniqueId = student.studentCode;
    try {
      SmartDialog.showLoading(msg: '学生头像上传中...');
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
      final update = await _studentRepository.updateStudentInfo(
        studentCode: student.studentCode,
        avatarUrl: avatar,
        cancelToken: _cancelToken,
      );
      if (update.success) {
        Fluttertoast.showToast(msg: '更新成功');
        _fetchData();
      }
    } catch (e, stackTrace) {
      logError('学生头像更新异常, ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchDict().then((value) => _fetchData());
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    final type = _credentialsType.firstWhereOrNull(
      (element) => element.code == _student.credentialsType.toString(),
    );
    final credentialsNumber = _student.credentialsNumber ?? '';
    final start = max(0, credentialsNumber.length - 9);
    final end = max(0, credentialsNumber.length - 4);
    final cred = credentialsNumber.isNotEmpty
        ? credentialsNumber.replaceRange(start, end, '***')
        : credentialsNumber;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: REdgeInsets.only(top: 20)),
        _info(mainTheme, meTheme),
        Padding(padding: REdgeInsets.only(top: 10)),
        CardBox(
          margin: REdgeInsets.symmetric(horizontal: 16),
          padding: REdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: _StudentInfo(title: '${type?.value ?? ''}号', text: cred),
        ),
        Padding(padding: REdgeInsets.only(top: 10)),
        CardBox(
          margin: REdgeInsets.symmetric(horizontal: 16),
          padding: REdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: _StudentInfo(title: '家庭住址', text: _student.address),
        ),
        Padding(padding: REdgeInsets.only(top: 10)),
        CardBox(
          margin: REdgeInsets.symmetric(horizontal: 16),
          padding: REdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '校园信息',
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '学校', text: _student.schoolName),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '学段', text: _student.phaseName),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '课程', text: _student.courseName),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '年级', text: _student.gradeName),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '班级', text: _student.className),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '学籍号', text: _student.studentCode),
              Padding(padding: REdgeInsets.only(top: 30)),
              _StudentInfo(title: '学年学期', text: _student.termName ?? ''),
            ],
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: REdgeInsets.only(top: 10, bottom: 50),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final member = _members[index];
            return _FamilyMemberCard(member: member);
          },
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemCount: _members.length,
        ),
      ],
    );
  }

  Widget _info(MainTheme? mainTheme, MeTheme? meTheme) {
    return Stack(
      children: [
        CardBox(
          margin: REdgeInsets.only(left: 16, top: 57, right: 16),
          padding: REdgeInsets.only(left: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(padding: REdgeInsets.only(top: 10)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      _student.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(padding: REdgeInsets.only(left: 8)),
                  Container(
                    width: 72.w,
                    height: 25.h,
                    padding: REdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Assets.school.formal.studentAgeBackground
                            .provider(),
                        fit: BoxFit.fill,
                      ),
                    ),
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${_student.age ?? ''}岁',
                      style: TextStyle(
                        color: meTheme?.studentInfoTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (_student.status != StudentStatus.unknown)
                    Container(
                      height: 22.r,
                      margin: REdgeInsets.only(left: 5),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 17.h,
                            padding: EdgeInsets.only(
                              left: 25.w,
                              right: 20.w,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: statusBackground(_student.status),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: Text(
                              _student.status.display,
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: meTheme?.studentInfoTextColor,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          statusIcon(
                            status: _student.status,
                            width: 22.w,
                            height: 22.h,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              Padding(padding: REdgeInsets.only(top: 10)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.me.birthIcon.image(
                    width: 12.w,
                    height: 12.h,
                  ),
                  Padding(padding: REdgeInsets.only(left: 5)),
                  Text(
                    '生日：${_student.birthday != null ? _birthDateFormat.format(_student.birthday!) : ''}',
                    style: TextStyle(
                      color: mainTheme?.subTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Padding(padding: REdgeInsets.only(top: 10)),
              Text(
                '学号: ${_student.studentCode}',
                style: TextStyle(
                  color: mainTheme?.subTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: REdgeInsets.only(bottom: 15)),
            ],
          ),
        ),
        Container(
          width: 135.r,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 5.w, top: 12.h),
          margin: EdgeInsets.only(left: 7.w),
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.common.avatarDecoration.provider(),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: GenderAvatar(
            size: 93.r,
            childSize: 24.r,
            borderWidth: 5.r,
            gender: _student.sex,
            avatar: _student.avatar,
            onPressed: _student.validate ? () => _updateAvatar(_student) : null,
          ),
        ),
        Positioned(
          top: 25.h,
          right: 16.w,
          child: Assets.me.infoDecoration.image(width: 89.w, height: 41.h),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }

  Image statusIcon({
    required StudentStatus status,
    required double width,
    required double height,
  }) {
    switch (status) {
      case StudentStatus.atSchool:
        return Assets.school.atSchoolIcon.image(
          width: width,
          height: height,
          fit: BoxFit.contain,
        );
      default:
        return Assets.school.leftSchoolIcon.image(
          width: width,
          height: height,
          fit: BoxFit.contain,
        );
    }
  }

  ImageProvider statusBackground(StudentStatus status) {
    switch (status) {
      case StudentStatus.atSchool:
        return Assets.school.atSchoolBackground.provider();
      default:
        return Assets.school.leftSchoolBackground.provider();
    }
  }
}
