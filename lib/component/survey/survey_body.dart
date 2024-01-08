import 'dart:math';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/survey/survey_model.dart';
import 'package:bsl/widget/common/empty.dart';
import 'package:bsl/widget/common/list_loading.dart';
import 'package:bsl/widget/survey/survey_item.dart';
import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SurveyBody extends StatefulWidget {
  const SurveyBody({super.key});

  @override
  State<SurveyBody> createState() => _SurveyBodyState();
}

const _pageSize = 10;

class _SurveyBodyState extends State<SurveyBody> {
  final _repository = Get.find<RepositoryService>().surveyRepository;

  late EasyRefreshController _controller;

  final _cancelTokens = List<CancelToken>.empty(growable: true);
  String? _token;

  var _page = 1;
  var _firstLoading = true;
  List<SurveyModel> _list = List.empty();

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    _fetchTicket()
        .then((ticket) => _fetchToken(ticket))
        .then((value) => _refresh());
  }

  Future<String?> _fetchTicket() async {
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchTicketForSurvey(cancelToken);
      if (r.success) return r.data;
    } catch (e, stackTrace) {
      logError('获取问卷ticket异常', e, stackTrace);
    }
    return null;
  }

  Future<void> _fetchToken(String? ticket) async {
    if (ticket == null) return;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchTokenForSurvey(ticket, cancelToken);
      if (r.success) _token = r.data;
    } catch (e, stackTrace) {
      logError('获取问卷token异常', e, stackTrace);
    }
  }

  Future<BslResponse<BslPageResponse<List<SurveyModel>>>?> _fetchSurveyList(
    String? token,
    int page,
  ) async {
    if (token == null) return null;

    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchSurveyList(
        token: token,
        current: page,
        size: _pageSize,
        browser: 'WX',
        cancelToken: cancelToken,
      );
      return r;
    } catch (e, stackTrace) {
      logError('获取问卷列表异常', e, stackTrace);
    }
    return null;
  }

  void _refresh() async {
    setState(() => _firstLoading = true);
    final r = await _fetchSurveyList(_token, 1);
    if (!mounted) return;

    if (r != null && r.success) {
      BslPageResponse<List<SurveyModel>> pageResponse = r.data;
      _page = 1;
      setState(() => _list = pageResponse.records);
    }

    setState(() => _firstLoading = false);
    _controller.finishRefresh();
    _controller.resetFooter();
  }

  void refreshPage(String? token, int page) async {
    if (token == null) return null;

    // 计算要替换的位置
    final start = (page - 1) * _pageSize;
    final end = min(page * _pageSize, _list.length);
    final length = end - start;
    try {
      final cancelToken = CancelToken();
      _cancelTokens.add(cancelToken);
      final r = await _repository.fetchSurveyList(
        token: token,
        current: page,
        size: _pageSize,
        browser: 'WX',
        cancelToken: cancelToken,
      );
      if (r.success) {
        BslPageResponse<List<SurveyModel>> pageResponse = r.data;
        List<SurveyModel> records = pageResponse.records;
        _list.setRange(start, end, records);
        // 如新列表比旧列表多，需要补充
        if (records.length > length) {
          _list.insertAll(end, records.sublist(length));
        }
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取问卷列表异常: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: _controller,
      onRefresh: _refresh,
      onLoad: () async {
        final page = _page + 1;
        final r = await _fetchSurveyList(_token, page);
        if (!mounted) return;

        if (r != null && r.success) {
          BslPageResponse<List<SurveyModel>> pageResponse = r.data;
          _page = page;
          setState(() => _list = _list + pageResponse.records);

          _controller.finishLoad(
            _list.length >= pageResponse.total
                ? IndicatorResult.noMore
                : IndicatorResult.success,
          );
          return;
        }
        _controller.finishLoad(IndicatorResult.fail);
      },
      child: Stack(
        children: [
          AnimatedOpacity(
            opacity: _firstLoading ? 0 : 1,
            duration: const Duration(milliseconds: 300),
            child: _list.isEmpty
                ? const Center(child: EmptyWidget())
                : ListView.separated(
                    padding: REdgeInsets.all(16),
                    itemBuilder: (context, index) {
                      final survey = _list[index];
                      return SurveyItem(
                        survey: survey,
                        onPressed: () => _onItemPressed(index, survey),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.h),
                    itemCount: _list.length,
                  ),
          ),
          if (_firstLoading) const Center(child: ListLoadingAnimation()),
        ],
      ),
    );
  }

  void _onItemPressed(int index, SurveyModel survey) async {
    final token = _token;
    if (token == null || token.isEmpty) {
      Fluttertoast.showToast(msg: '无权限访问该问卷');
      logWarning('用户无token: $token');
      return;
    }
    final url = survey.appUrl;
    if (url == null || url.isEmpty) {
      Fluttertoast.showToast(msg: '问卷无法访问');
      logWarning('问卷app url异常: $survey');
      return;
    }

    final parameters = {'title': survey.name, 'url': url, 'token': token};
    await Get.toNamed('survey/browser', parameters: parameters);

    if (!mounted) return;

    /// 刷新问卷对应页
    /// 根据index计算对应page
    int page = (index ~/ _pageSize) + 1;
    refreshPage(token, page);
  }

  @override
  void dispose() {
    for (var cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _cancelTokens.clear();
    _controller.dispose();
    super.dispose();
  }
}
