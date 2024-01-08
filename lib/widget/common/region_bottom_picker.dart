import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/screen_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

const bool _kUseMagnifier = true;
const double _kMagnification = 2.35 / 2.1;
const double _kSqueeze = 1.18;

typedef OnValueSelected<T> = Function(T? value);
typedef OnValueToString<T> = String Function(T element);

class _CustomBottomPickerSelectionOverlay extends StatelessWidget {
  const _CustomBottomPickerSelectionOverlay();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: const Color(0xFFE4EEF5), width: 1.r),
        ),
      ),
    );
  }
}

class RegionBottomPicker extends StatefulWidget {
  const RegionBottomPicker({
    this.selected,
    required this.bodyHeight,
    required this.itemHeight,
    required this.title,
    this.cancelText = '取消',
    this.confirmText = '确认',
    this.onCancel,
    this.onConfirm,
    super.key,
  });

  final SelectedRegion? selected;
  final double bodyHeight;
  final double itemHeight;
  final String title;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final OnValueSelected<SelectedRegion>? onConfirm;

  @override
  State<RegionBottomPicker> createState() => _RegionBottomPickerState();
}

class _RegionBottomPickerState extends State<RegionBottomPicker> {
  final _repository = Get.find<RepositoryService>().commonRepository;

  final _provinceScrollController = FixedExtentScrollController();
  final _cityScrollController = FixedExtentScrollController();

  var _selected = SelectedRegion.empty();

  var _init = true;
  var _provinces = List<RegionModel>.empty();
  var _cities = List<RegionModel>.empty();

  CancelToken? _cancelToken;

  void _fetchData(SelectedRegion? selected) async {
    _selected = selected ?? SelectedRegion.empty();

    var provinces = List<RegionModel>.empty();
    var cities = List<RegionModel>.empty();
    var provinceName = _selected.province?.name ?? '';
    var provinceCode = _selected.province?.code ?? '';
    var cityName = _selected.city?.name ?? '';
    var cityCode = _selected.city?.code ?? '';
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchRegion(
        provinceName: provinceName,
        cancelToken: _cancelToken,
      );
      if (!r.success) return;

      provinces = r.data ?? List.empty();
      cities = provinces
              .firstWhereOrNull((element) =>
                  element.name == provinceName || element.code == provinceCode)
              ?.children ??
          List.empty();
    } catch (e, stackTrace) {
      logError('获取省份数据异常', e, stackTrace);
    }

    // 如此前没有初始化的省市数据，则请求市区数据
    if (provinces.isNotEmpty && provinceName.isEmpty) {
      provinceName = provinces.first.name ?? '';
      provinceCode = provinces.first.code ?? '';
      try {
        _cancelToken = CancelToken();
        final r = await _repository.fetchRegion(
          provinceName: provinceName,
          cancelToken: _cancelToken,
        );
        if (!r.success) return;

        provinces = r.data ?? List.empty();
        cities = provinces
                .firstWhereOrNull((element) =>
                    element.name == provinceName ||
                    element.code == provinceCode)
                ?.children ??
            List.empty();
      } catch (e, stackTrace) {
        logError('获取城市数据异常', e, stackTrace);
      }
    }

    final provinceIndex = provinces.indexWhere((element) =>
        element.name == provinceName || element.code == provinceCode);
    final cityIndex = cities.indexWhere(
        (element) => element.name == cityName || element.code == cityCode);

    if (_selected.isEmpty) {
      _selected = SelectedRegion(
        province: provinces.firstOrNull,
        city: cities.firstOrNull,
      );
    }

    setState(() {
      _provinces = provinces;
      _cities = cities;
    });
    await _provinceScrollController.animateToItem(
      provinceIndex != -1 ? provinceIndex : 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    _cityScrollController.animateToItem(
      cityIndex != -1 ? cityIndex : 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    _init = false;
  }

  void _fetchCities() async {
    final province = _selected.province;
    final provinceName = province?.name ?? '';
    final provinceCode = province?.code ?? '';
    if (provinceName.isEmpty || provinceCode.isEmpty) {
      setState(() => _cities = List.empty());
      return;
    }
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchRegion(
        provinceName: provinceName,
        cancelToken: _cancelToken,
      );
      if (!r.success) return;

      List<RegionModel> provinces = r.data ?? List.empty();
      final cities = provinces
              .firstWhereOrNull((element) =>
                  element.name == provinceName || element.code == provinceCode)
              ?.children ??
          List.empty();
      _selected = _selected.copyWith(city: cities.firstOrNull);

      setState(() {
        _provinces = provinces;
        _cities = cities;
      });
    } catch (e, stackTrace) {
      logError('获取城市数据异常', e, stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _fetchData(widget.selected));
  }

  @override
  void didUpdateWidget(covariant RegionBottomPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _fetchData(widget.selected));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: REdgeInsets.only(left: 16)),
              TextButton(
                onPressed: widget.onCancel,
                style: TextButton.styleFrom(padding: REdgeInsets.all(16)),
                child: Text(
                  widget.cancelText,
                  style: TextStyle(
                    color: theme?.bottomSheetCancelTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: theme?.titleColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => widget.onConfirm?.call(_selected),
                style: TextButton.styleFrom(padding: REdgeInsets.all(16)),
                child: Text(
                  widget.confirmText,
                  style: TextStyle(
                    color: theme?.bottomSheetConfirmTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(right: 16)),
            ],
          ),
          Container(height: 1.p, color: theme?.dividerColor),
          Container(
            height: widget.bodyHeight,
            padding: REdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: _provinces.isEmpty ? 0 : 1,
                    child: CupertinoPicker(
                      scrollController: _provinceScrollController,
                      useMagnifier: _kUseMagnifier,
                      magnification: _kMagnification,
                      squeeze: _kSqueeze,
                      onSelectedItemChanged: (index) {
                        if (_init) return;

                        final province = _provinces[index];
                        _selected = _selected.copyWith(province: province);
                        _fetchCities();
                        setState(() => _cities = List.empty());
                      },
                      selectionOverlay:
                          const _CustomBottomPickerSelectionOverlay(),
                      itemExtent: widget.itemHeight,
                      children: _provinces.map(
                        (e) {
                          return Container(
                            alignment: Alignment.center,
                            child: Text(
                              e.name ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: theme?.titleColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: _cities.isEmpty ? 0 : 1,
                    child: CupertinoPicker(
                      scrollController: _cityScrollController,
                      useMagnifier: _kUseMagnifier,
                      magnification: _kMagnification,
                      squeeze: _kSqueeze,
                      onSelectedItemChanged: (index) {
                        final city = _cities[index];
                        _selected = _selected.copyWith(city: city);
                      },
                      selectionOverlay:
                          const _CustomBottomPickerSelectionOverlay(),
                      itemExtent: widget.itemHeight,
                      children: _cities.map(
                        (e) {
                          return Container(
                            alignment: Alignment.center,
                            child: Text(
                              e.name ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: theme?.titleColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _provinceScrollController.dispose();
    _cityScrollController.dispose();
    super.dispose();
  }
}
