import 'package:components/component/conservation/daylife_body.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/mobx/conservation/daylife_store.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/date_bottom_picker.dart';
import 'package:components/widget/common/date_dropdown.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DayLifePage extends StatefulWidget {
  const DayLifePage({super.key});

  @override
  State<DayLifePage> createState() => _DayLifePageState();
}

class _DayLifePageState extends State<DayLifePage> {
  static final _monthDisplayFormat = DateFormat('yyyy年M月', Intl.systemLocale);
  static final _dateFormat = DateFormat('yyyy-MM', Intl.systemLocale);

  CancelToken? _cancelToken;
  Worker? _worker;

  final _service = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().conservationRepository;
  DayLifeStore? _store;

  DateTime _min = DateTime.now();
  DateTime _max = DateTime(1970);
  final _list = List<DateTime>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _worker = ever(_service.selectedStudent, (callback) {
      setState(() {
        _store = DayLifeStore(
          _service.selectedStudent.value.studentCode,
          _repository,
        );
      });
    });
    _fetchMonths();

    final student = _service.selectedStudent.value;
    if (student.validate) {
      _store = DayLifeStore(
        _service.selectedStudent.value.studentCode,
        _repository,
      );
    }
  }

  @override
  void didUpdateWidget(covariant DayLifePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _fetchMonths();
  }

  void _fetchMonths() async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    final student = _service.selectedStudent.value;
    final schoolCode = student.schoolCode;
    if (schoolCode == null || schoolCode.isEmpty) {
      logWarning('学生无绑定学校');
      return;
    }
    _list.clear();
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchMonths(schoolCode, _cancelToken);
      if (r.success) {
        for (final str in r.data) {
          try {
            final date = _dateFormat.parse(str);
            if (_min.isAfter(date)) {
              _min = date;
            }
            if (_max.isBefore(date)) {
              _max = date;
            }
            _list.add(date);
          } catch (e, stackTrace) {
            logError('异常日期格式: $str', e, stackTrace);
          }
        }
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取保育月份数据异常', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final store = _store;
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '一日生活',
        actions: [
          if (store != null)
            Observer(
              key: ObjectKey(store),
              builder: (context) {
                return DateDropdown(
                  initial: store.selectedDate,
                  onDateConverter: (date) => _monthDisplayFormat.format(date),
                  onDateSelectCallback: (selected) async {
                    return await showModalBottomSheet<DateTime?>(
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
                          title: '选择时间',
                          initialDateTime: selected,
                          columns: const [PickerType.year, PickerType.month],
                          minimumDate: _min,
                          maximumDate: _max,
                          minimumYear: _min.year,
                          maximumYear: _max.year,
                          onCancel: () => Navigator.of(context).pop(),
                          onConfirm: (dateTime) =>
                              Navigator.of(context).pop(dateTime),
                        );
                      },
                    );
                  },
                  onDateSelected: (date) {
                    logDebug('一日生活页当前选中日期: $date');
                    store.selectDate(date);
                  },
                );
              },
            ),
        ],
      ),
      body: store == null
          ? const SizedBox()
          : DayLifeBody(key: ObjectKey(store), store: store),
    );
  }

  @override
  void dispose() {
    _worker?.dispose();
    _cancelToken?.cancel('dispose');
    _store?.dispose();
    super.dispose();
  }
}
