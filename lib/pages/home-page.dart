import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  bool loading = true;

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          WebView(
            onPageFinished: (value) {
              setState(() {
                loading = false;
              });
            },
            initialUrl: "https://techvilla.ng/store",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) {
              _controller.complete(controller);
            },
          ),
          loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SizedBox()
        ],
      )),
    );
  }
}
