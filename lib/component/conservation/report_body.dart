import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/conservation/daylife_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/conservation_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/conservation/report_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class _DateContainer extends StatelessWidget {
  const _DateContainer({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 6),
      decoration: ShapeDecoration(
        color: conservationTheme?.detailDateBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: conservationTheme?.detailDateTextColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ReportBody extends StatefulWidget {
  const ReportBody({this.date, required this.student, super.key});

  final DateTime? date;
  final StudentModel student;

  @override
  State<ReportBody> createState() => _ReportBodyState();
}

class _ReportBodyState extends State<ReportBody> {
  final _repository = Get.find<RepositoryService>().conservationRepository;
  CancelToken? _cancelToken;

  var _loading = true;
  var _healthLife = List<ReportModel>.empty();
  var _schoolDays = 0;

  Future<void> _fetchSchoolDays(String studentCode) async {
    final date = widget.date;
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchSchoolDays(studentCode, _cancelToken);
      if (r.success) {
        int schoolDays = r.data;
        final now = DateTime.now();
        final nowWithoutTime = DateTime(now.year, now.month, now.day);
        final enterDate = nowWithoutTime.add(Duration(days: -schoolDays));
        final dateWithoutTime = date != null
            ? DateTime(date.year, date.month, date.day)
            : nowWithoutTime;
        _schoolDays = dateWithoutTime.difference(enterDate).inDays;
      }
    } catch (e, stackTrace) {
      logError('获取学生入园天数', e, stackTrace);
    }
  }

  Future<void> _fetchHealthLife(String studentCode) async {
    final date = widget.date;
    try {
      _cancelToken = CancelToken();
      final r = date != null
          ? await _repository.fetchDayLifeByDate(
              studentCode: studentCode,
              date: date,
              cancelToken: _cancelToken,
            )
          : await _repository.fetchDayLifeToday(
              studentCode: studentCode,
              cancelToken: _cancelToken,
            );
      if (r.success) _healthLife = r.data;
    } catch (e, stackTrace) {
      logError('获取保育列表异常', e, stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    final studentCode = widget.student.studentCode;
    if (studentCode.isEmpty) {
      logWarning('学生无学号');
      return;
    }
    setState(() => _loading = true);
    _fetchSchoolDays(studentCode)
        .then((value) => _fetchHealthLife(studentCode))
        .whenComplete(() => setState(() => _loading = false))
        .catchError((e, stackTrace) => logError('获取日报详情异常'));
  }

  @override
  void didUpdateWidget(covariant ReportBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    final studentCode = widget.student.studentCode;
    if (studentCode.isEmpty) {
      logWarning('学生无学号');
      return;
    }
    setState(() => _loading = true);
    _fetchSchoolDays(studentCode)
        .then((value) => _fetchHealthLife(studentCode))
        .whenComplete(() => setState(() => _loading = false))
        .catchError((e, stackTrace) => logError('获取日报详情异常'));
  }

  @override
  Widget build(BuildContext context) {
    final date = widget.date != null ? widget.date! : DateTime.now();
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.conservation.detailBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 12.5)),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _DateContainer(label: date.year.toString()),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    '年',
                    style: TextStyle(
                      color: conservationTheme?.textColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _DateContainer(label: date.month.toString()),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    '月',
                    style: TextStyle(
                      color: conservationTheme?.textColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _DateContainer(label: date.day.toString()),
                SizedBox(width: 4.w),
                Text(
                  '日',
                  style: TextStyle(
                    color: conservationTheme?.textColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 10.5)),
          SliverToBoxAdapter(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: conservationTheme?.textColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(text: '今天是'),
                  TextSpan(
                    text: widget.student.name,
                    style: TextStyle(
                      color: conservationTheme?.highlightTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(text: '宝贝入园的第'),
                  TextSpan(
                    text: _schoolDays.toString(),
                    style: TextStyle(
                      color: conservationTheme?.highlightTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(text: '天'),
                ],
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 12)),
          SliverToBoxAdapter(
            child: Text(
              '今日入园情况',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: conservationTheme?.textColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 7)),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.conservation.sectionLeftDecoration
                    .image(width: 25.w, height: 3.h),
                SizedBox(width: 8.w),
                Text(
                  '健康与生活',
                  style: TextStyle(
                    color: conservationTheme?.sectionTitleColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 8.w),
                Assets.conservation.sectionDecorationRight
                    .image(width: 25.w, height: 3.h),
              ],
            ),
          ),
          if (_loading)
            SliverFillRemaining(
              child: Center(
                child: LoadingAnimationWidget.hexagonDots(
                  color: mainTheme?.loadingColor ?? Colors.transparent,
                  size: 40.r,
                ),
              ),
            ),
          SliverAnimatedOpacity(
            opacity: _loading ? 0 : 1,
            duration: const Duration(milliseconds: 300),
            sliver: SliverPadding(
              padding: REdgeInsets.symmetric(vertical: 9),
              sliver: SliverList.separated(
                itemBuilder: (context, index) {
                  final report = _healthLife[index];
                  return ReportItem(report: report);
                },
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: _healthLife.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
