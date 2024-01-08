import 'package:bsl/component/common/promotion_body.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({
    required this.name,
    required this.schoolCode,
    super.key,
  });

  final String name;
  final String schoolCode;

  @override
  State<StatefulWidget> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  final _repository = Get.find<RepositoryService>().commonRepository;

  CancelToken? _cancelToken;
  PromotionModel? _promotion;
  var _pictures = List<ResourceWrapper>.empty();

  void _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchPromotionBySchoolCode(
        schoolCode: widget.schoolCode,
        cancelToken: _cancelToken,
      );
      if (r.success && mounted) {
        PromotionModel promotion = r.data;
        _promotion = promotion;
        _pictures = promotion.pictures
            .map((e) => ResourceWrapper.fromImage(e))
            .toList();
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取幼儿园宣传资料异常', e, stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchData());
  }

  @override
  void didUpdateWidget(covariant PromotionPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchData());
  }

  @override
  Widget build(BuildContext context) {
    final schoolName = _promotion?.schoolName ?? '';
    return Scaffold(
      appBar: defaultDarkAppBar(
        context: context,
        title: schoolName.isNotEmpty ? schoolName : widget.name,
      ),
      body: AnimatedOpacity(
        opacity: _promotion == null ? 0 : 1,
        duration: const Duration(milliseconds: 300),
        child: PromotionBody(
          name: schoolName.isNotEmpty ? schoolName : widget.name,
          data: _promotion,
          pictures: _pictures,
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
