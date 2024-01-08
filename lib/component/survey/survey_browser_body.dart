import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/theme/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class SurveyBrowserBody extends StatefulWidget {
  const SurveyBrowserBody({required this.url, this.token, super.key});

  final String url;
  final String? token;

  @override
  State<SurveyBrowserBody> createState() => _SurveyBrowserBodyState();
}

class _SurveyBrowserBodyState extends State<SurveyBrowserBody> {
  final _repository = Get.find<RepositoryService>().surveyRepository;
  late final WebViewController _controller;

  CancelToken? _cancelToken;
  String? _token;

  @override
  void initState() {
    super.initState();
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            logDebug('WebView加载中 (进度: $progress%)');
          },
          onPageStarted: (String url) {
            logDebug('开始加载: $url');
          },
          onPageFinished: (String url) {
            logDebug('加载完毕: $url');
          },
          onWebResourceError: (WebResourceError error) {
            logDebug('''
              页面资源加载异常:
              code: ${error.errorCode}
              description: ${error.description}
              errorType: ${error.errorType}
              isForMainFrame: ${error.isForMainFrame}
            ''');
          },
        ),
      );

    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(kDebugMode);
      final androidController = controller.platform as AndroidWebViewController;
      androidController.setMediaPlaybackRequiresUserGesture(false);
    }
    _controller = controller;

    _token = widget.token;
    final token = _token;
    if (token != null && token.isNotEmpty) {
      _loadUrl(token);
      return;
    }
    _fetchTicket()
        .then((ticket) => _fetchToken(ticket))
        .then((value) => _loadUrl(_token));
  }

  Future<String?> _fetchTicket() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTicketForSurvey(_cancelToken);
      if (r.success) return r.data;
    } catch (e, stackTrace) {
      logError('获取问卷ticket异常', e, stackTrace);
    }
    return null;
  }

  Future<void> _fetchToken(String? ticket) async {
    if (ticket == null) return;
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTokenForSurvey(ticket, _cancelToken);
      if (r.success) _token = r.data;
    } catch (e, stackTrace) {
      logError('获取问卷token异常', e, stackTrace);
    }
  }

  bool _loadUrl(String? token) {
    if (token == null || token.isEmpty) {
      return false;
    }
    _controller.loadRequest(Uri.parse('${widget.url}&appToken=$token'));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return lightStatusBar(
      child: Scaffold(body: WebViewWidget(controller: _controller)),
    );
  }
}
