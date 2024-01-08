import 'package:components/log/global_log.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EmbedBrowser extends StatefulWidget {
  const EmbedBrowser({required this.url, super.key});

  final String url;

  @override
  State<EmbedBrowser> createState() => _EmbedBrowserState();
}

class _EmbedBrowserState extends State<EmbedBrowser> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    logDebug('EmbedBrowser url: ${widget.url}');
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller);
  }
}
