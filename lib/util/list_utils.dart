import 'package:components/model/bsl_response.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/painting.dart';
import 'package:nil/nil.dart';

extension ListExtension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

typedef EasyRefreshCallback<T> = Function(BslPageResponse<List<T>> page);

void easyRefreshConfig() {
  EasyRefresh.defaultHeaderBuilder = () => const ClassicHeader(
        dragText: '下拉刷新',
        armedText: '松手刷新',
        readyText: '正在刷新...',
        processingText: '正在刷新...',
        processedText: '',
        noMoreText: '没有更多内容啦~',
        failedText: '刷新失败',
        messageText: '最后更新于 %T',
      );
  EasyRefresh.defaultFooterBuilder = () => const ClassicFooter(
        dragText: '上拉加载',
        armedText: '松手刷新',
        readyText: '正在刷新...',
        processingText: '正在刷新...',
        processedText: '',
        noMoreText: '没有更多内容啦~',
        failedText: '刷新失败',
        messageText: '',
        textStyle: TextStyle(
          color: Color(0xFF999999),
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
        iconDimension: 0,
        noMoreIcon: nil,
      );
}

Header scrollViewHeader() => const ClassicHeader(
      position: IndicatorPosition.locator,
      dragText: '下拉刷新',
      armedText: '松手刷新',
      readyText: '正在刷新...',
      processingText: '正在刷新...',
      processedText: '',
      noMoreText: '没有更多内容啦~',
      failedText: '刷新失败',
      messageText: '最后更新于 %T',
    );

Footer scrollViewFooter() => const ClassicFooter(
      position: IndicatorPosition.locator,
      dragText: '上拉加载',
      armedText: '松手刷新',
      readyText: '正在刷新...',
      processingText: '正在刷新...',
      processedText: '',
      noMoreText: '没有更多内容啦~',
      failedText: '刷新失败',
      messageText: '',
      textStyle: TextStyle(
        color: Color(0xFF999999),
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
      iconDimension: 0,
      noMoreIcon: nil,
    );
