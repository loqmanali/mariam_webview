import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewStore extends StatefulWidget {
  @override
  _WebViewStoreState createState() => _WebViewStoreState();
}

class _WebViewStoreState extends State<WebViewStore> {
  // WebViewController _controller;

  final Completer<InAppWebViewController> _controllerCompleter =
      Completer<InAppWebViewController>();
  Future<bool> _onWillPop(BuildContext context) async {
    if (await webView.canGoBack()) {
      webView.goBack();
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //     onWillPop: () => _onWillPop(context),
  //     child: Scaffold(
  //       body: SafeArea(
  //         child: WebView(
  //           onWebViewCreated: (WebViewController webViewController) {
  //             _controllerCompleter.future.then((value) => _controller = value);
  //             _controllerCompleter.complete(webViewController);
  //           },
  //           initialUrl: 'http://resturant.shantaweb.com',
  //           javascriptMode: JavascriptMode.unrestricted,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  InAppWebViewController webView;
  String url = "";
  double progress = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrl: 'http://resturant.shantaweb.com',
            initialHeaders: {'Mobile': 'moibile'},
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                userAgent: 'Mobile App, Version 1.1.0',
                debuggingEnabled: true,
                applicationNameForUserAgent: 'Mobile',
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              _controllerCompleter.future.then((value) => webView = value);
              _controllerCompleter.complete(controller);
            },
            onLoadStart: (InAppWebViewController controller, String url) {
              setState(() {
                this.url = url;
              });
            },
            onLoadStop: (InAppWebViewController controller, String url) {
              setState(() {
                this.url = url;
              });
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(() {
                this.progress = progress / 100;
              });
            },
          ),
        ),
      ),
    );
  }
}

// WebView(
//             onWebViewCreated: (WebViewController webViewController) {
//               _controllerCompleter.future.then((value) => _controller = value);
//               _controllerCompleter.complete(webViewController);
//             },
//             initialUrl: 'http://resturant.shantaweb.com',
//             javascriptMode: JavascriptMode.unrestricted,
//           ),
