import 'dart:async';

import 'package:components/model/diy_models.dart';
import 'package:components/widget/diy/custom_homepage_placeholder.dart';
import 'package:components/widget/diy/page_card.dart';
import 'package:components/widget/diy/paper_control.dart';
import 'package:flutter/material.dart';
import 'package:paper_transition/paper_transition.dart';

class DiyPreviewBody extends StatefulWidget {
  const DiyPreviewBody({this.template, this.onPressed, super.key});

  final TemplateModel? template;
  final VoidCallback? onPressed;

  @override
  State<DiyPreviewBody> createState() => _DiyPreviewBodyState();
}

const _autoNextDuration = Duration(seconds: 5);

class _DiyPreviewBodyState extends State<DiyPreviewBody> {
  var _pages = List<PageJsonModel>.empty();
  var _pagerController = PaperController(pageCount: 0);
  // 每隔一段时间自动翻页
  Timer? _autoNextTimer;

  void _init(TemplateModel template) async {
    final pages = List<PageJsonModel>.empty(growable: true);
    for (TemplatePageModel templatePage in template.pages) {
      final page = templatePage.page;
      if (page == null) continue;
      pages.add(page);
    }
    _pages = pages;
    _pagerController = PaperController(pageCount: _pages.length);
    _autoNextTimer = Timer(_autoNextDuration, _autoNext);
    setState(() {});
  }

  void _autoNext() {
    if (_pagerController.hasNext) {
      _pagerController.next();
    }
    _restartAutoNext();
  }

  void _cancelAutoNext() {
    _autoNextTimer?.cancel();
    _autoNextTimer = null;
  }

  void _restartAutoNext() {
    _autoNextTimer?.cancel();
    _autoNextTimer = Timer(_autoNextDuration, _autoNext);
  }

  @override
  void initState() {
    super.initState();
    final template = widget.template;
    if (template == null) return;
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _init(template));
  }

  @override
  void didUpdateWidget(covariant DiyPreviewBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.template != widget.template) {
      final template = widget.template;
      if (template == null) return;
      WidgetsBinding.instance
          .addPostFrameCallback((timeStamp) => _init(template));
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _restartAutoNext();
        widget.onPressed?.call();
      },
      child: widget.template == null
          ? const CustomHomepagePlaceholder()
          : Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraint) {
                    final size =
                        Size(constraint.maxWidth, constraint.maxHeight);
                    builder(context, index) {
                      final page = _pages[index];
                      return PageCard(
                        key: ValueKey(page),
                        readOnly: true,
                        page: page,
                      );
                    }

                    return switch (widget.template?.transition) {
                      PageTransitionType.fade => FadeContainer(
                          controller: _pagerController,
                          size: size,
                          pageBuilder: builder,
                          onTap: _restartAutoNext,
                          onPanDown: (d) => _cancelAutoNext(),
                          onPanEnd: (d) => _restartAutoNext(),
                        ),
                      PageTransitionType.translate => TranslateContainer(
                          controller: _pagerController,
                          size: size,
                          pageBuilder: builder,
                          onTap: _restartAutoNext,
                          onPanDown: (d) => _cancelAutoNext(),
                          onPanEnd: (d) => _restartAutoNext(),
                        ),
                      PageTransitionType.flip => FlipContainer(
                          controller: _pagerController,
                          size: size,
                          pageBuilder: builder,
                        ),
                      _ => FlipContainer(
                          controller: _pagerController,
                          size: size,
                          pageBuilder: builder,
                          onTap: _restartAutoNext,
                          onPanDown: (d) => _cancelAutoNext(),
                          onPanEnd: (d) => _restartAutoNext(),
                        ),
                    };
                  },
                ),
                SafeArea(
                  top: false,
                  child: PaperControl(
                    paperController: _pagerController,
                    onPreviousPressed: _restartAutoNext,
                    onNextPressed: _restartAutoNext,
                  ),
                ),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _pagerController.dispose();
    _autoNextTimer?.cancel();
    super.dispose();
  }
}
