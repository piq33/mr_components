import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/widget/common/empty.dart';
import 'package:bsl/widget/diy/template_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

typedef OnTemplatePressed = Function(TemplateModel template);

class PopularTemplateGrid extends StatefulWidget {
  const PopularTemplateGrid({this.onTemplatePressed, super.key});

  final OnTemplatePressed? onTemplatePressed;

  @override
  State<PopularTemplateGrid> createState() => _PopularTemplateGridState();
}

class _PopularTemplateGridState extends State<PopularTemplateGrid> {
  final _repository = Get.find<RepositoryService>().diyRepository;

  CancelToken? _cancelToken;

  var _loading = true;
  var _list = List<TemplateModel>.empty();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  Future<void> _init() async {
    setState(() => _loading = true);
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTemplateList(_cancelToken);
      if (r.success) {
        List<TemplateModel> list = r.data;
        list.sort((t1, t2) => t1.usePeople.compareTo(t2.usePeople));
        _list = list;
      }
    } catch (e, stackTrace) {
      logError('请求模板列表异常: ${e.toString()}', e, stackTrace);
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await _init();
        return;
      },
      child: AnimatedOpacity(
        opacity: _loading ? 0 : 1,
        duration: const Duration(milliseconds: 300),
        child: _list.isEmpty && !_loading
            ? const Center(child: EmptyWidget())
            : AlignedGridView.custom(
                padding: REdgeInsets.only(left: 16, top: 34, right: 16),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                mainAxisSpacing: 18.h,
                crossAxisSpacing: 18.w,
                itemBuilder: (BuildContext context, int index) {
                  final template = _list[index];
                  return TemplateItem(
                    template: template,
                    onPressed: () => widget.onTemplatePressed?.call(template),
                  );
                },
                itemCount: min(_list.length, 4),
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
