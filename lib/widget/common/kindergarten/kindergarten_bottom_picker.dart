import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/custom_bottom_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KindergartenBottomPicker extends StatefulWidget {
  const KindergartenBottomPicker({
    required this.title,
    required this.bodyHeight,
    required this.itemHeight,
    required this.provinceName,
    required this.cityName,
    this.selected,
    this.onCancel,
    this.onConfirm,
    super.key,
  });

  final String title;
  final double bodyHeight;
  final double itemHeight;
  final String provinceName;
  final String cityName;
  final KindergartenModel? selected;
  final VoidCallback? onCancel;
  final OnValueSelected<KindergartenModel>? onConfirm;

  @override
  State<KindergartenBottomPicker> createState() =>
      _KindergartenBottomPickerState();
}

class _KindergartenBottomPickerState extends State<KindergartenBottomPicker> {
  final _repository = Get.find<RepositoryService>().commonRepository;
  CancelToken? _cancelToken;

  List<KindergartenModel>? _list;

  void _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchKindergartenList(
        province: widget.provinceName,
        city: widget.cityName,
        cancelToken: _cancelToken,
      );
      if (r.success) setState(() => _list = r.data);
    } catch (e, stackTrace) {
      logError('获取幼儿园数据异常', e, stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  void didUpdateWidget(covariant KindergartenBottomPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final list = _list;
    return AnimatedOpacity(
      opacity: list == null ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: CustomBottomPicker(
        title: widget.title,
        list: list ?? List.empty(),
        selected: widget.selected,
        bodyHeight: widget.bodyHeight,
        itemHeight: widget.itemHeight,
        onIndexWhere: (e1, e2) => e1 == e2,
        onValueToString: (e) => e.schoolName ?? '',
        onCancel: () => widget.onCancel?.call(),
        onConfirm: (value) => widget.onConfirm?.call(value),
        emptyWidget: Center(
          child: Text(
            '暂无幼儿园',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
