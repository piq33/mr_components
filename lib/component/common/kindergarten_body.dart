import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/throttle.dart';
import 'package:bsl/widget/common/kindergarten/kindergarten_container.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class KindergartenBody extends StatefulWidget {
  const KindergartenBody({super.key});

  @override
  State<KindergartenBody> createState() => _KindergartenBodyState();
}

class _KindergartenBodyState extends State<KindergartenBody> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _repository = Get.find<RepositoryService>().commonRepository;

  final _textEditController = TextEditingController();

  CancelToken? _cancelToken;
  var _inProcessing = false;
  final _list = List<KindergartenWrapper>.empty(growable: true);
  final _displayList = List<KindergartenWrapper>.empty(growable: true);

  void _init() async {
    _textEditController.clear();
    final regions = await _fetchRegion();
    _inProcessing = true;
    for (final region in regions) {
      if (!mounted) {
        _inProcessing = false;
        return;
      }
      final schools = await _fetchSchools(region);
      final wrapper = KindergartenWrapper(region: region, schools: schools);
      _list.add(wrapper);
      if (schools.isNotEmpty) {
        _displayList.add(wrapper);
        _listKey.currentState?.insertItem(_displayList.length - 1);
      }
    }
    _inProcessing = false;
  }

  Future<List<RegionModel>> _fetchRegion() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchRegion(cancelToken: _cancelToken);
      return r.success ? r.data : List.empty();
    } catch (e, stackTrace) {
      logError('获取地区列表异常', e, stackTrace);
    }
    return List.empty();
  }

  Future<List<KindergartenModel>> _fetchSchools(RegionModel region) async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchKindergartenList(
        province: region.name,
        cancelToken: _cancelToken,
      );
      return r.success ? r.data : List.empty();
    } catch (e, stackTrace) {
      logError('获取园所列表异常', e, stackTrace);
    }
    return List.empty();
  }

  void _search() async {
    if (_inProcessing) return;

    _inProcessing = true;
    for (var i = (_displayList.length - 1); i >= 0; i--) {
      _displayList.removeAt(i);
      _listKey.currentState?.removeItem(
        i,
        (context, animation) {
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: const Interval(0.5, 1.0),
            ),
          );
        },
        duration: const Duration(milliseconds: 50),
      );
      await Future.delayed(const Duration(milliseconds: 20));
    }

    final keyword = _textEditController.text;
    if (keyword.isEmpty) {
      for (final wrapper in _list) {
        if (wrapper.schools.isEmpty) continue;

        _displayList.add(wrapper);
        _listKey.currentState?.insertItem(
          _displayList.length - 1,
          duration: const Duration(milliseconds: 300),
        );
        await Future.delayed(const Duration(milliseconds: 150));
      }
    }
    for (final wrapper in _list) {
      final region = wrapper.region;
      final schools = wrapper.schools;
      final regionNameMatch = region.name?.contains(keyword) ?? false;
      final anySchoolNameMatch = schools
          .where((element) => element.schoolName?.contains(keyword) ?? false)
          .toList();
      // 地区名称命中但其下幼儿园都没命中，则显示所有幼儿园(同时该地区下必须有幼儿园)
      if (regionNameMatch && schools.isNotEmpty && anySchoolNameMatch.isEmpty) {
        _displayList.add(KindergartenWrapper(region: region, schools: schools));
        _listKey.currentState?.insertItem(_displayList.length - 1);
      }
      // 地区名称没命中但其下幼儿园有命中，则显示所命中的幼儿园
      if (!regionNameMatch && anySchoolNameMatch.isNotEmpty) {
        _displayList.add(
          KindergartenWrapper(region: region, schools: anySchoolNameMatch),
        );
        _listKey.currentState?.insertItem(_displayList.length - 1);
      }
    }
    _inProcessing = false;
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(covariant KindergartenBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: REdgeInsets.all(16),
          padding: REdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: mainTheme?.cardBoxBackground,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: mainTheme?.dividerColor ?? Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: _textEditController,
                  decoration: InputDecoration(
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: REdgeInsets.symmetric(horizontal: 12),
                    border: InputBorder.none,
                    hintText: '请输入关键词,如幼儿园所在地、名称等',
                    hintStyle: TextStyle(
                      color: mainTheme?.hintTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  onSubmitted: (keyword) =>
                      _search.debounce(timeout: 200).call(),
                  onChanged: (keyword) => _search.debounce(timeout: 200).call(),
                  textInputAction: TextInputAction.search,
                ),
              ),
              TextButton(
                onPressed: _search.debounce(timeout: 200),
                style: TextButton.styleFrom(
                  backgroundColor: mainTheme?.mainButtonBackground,
                  padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                ),
                child: Text(
                  '搜索',
                  style: TextStyle(
                    color: mainTheme?.mainButtonTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedList(
          key: _listKey,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: REdgeInsets.all(16),
          itemBuilder: (
            BuildContext context,
            int index,
            Animation<double> animation,
          ) {
            final wrapper = _displayList[index];
            return FadeTransition(
              opacity: animation,
              child: KindergartenContainer(
                region: wrapper.region,
                list: wrapper.schools,
                onPressed: (school) {
                  final schoolCode = school.schoolCode;
                  if (schoolCode == null || schoolCode.isEmpty) {
                    Fluttertoast.showToast(msg: '学校信息异常');
                    return;
                  }
                  final parameters = {
                    'name': school.schoolName ?? '',
                    'schoolCode': schoolCode,
                  };
                  Get.toNamed(
                    'home/kindergarten/promotion',
                    parameters: parameters,
                  );
                },
              ),
            );
          },
          initialItemCount: _displayList.length,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _textEditController.dispose();
    super.dispose();
  }
}
