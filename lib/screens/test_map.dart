import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestMap extends StatefulWidget {
  @override
  _TestMapState createState() => _TestMapState();
}

class _TestMapState extends State<TestMap> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Map"),
      ),
      body: WebView(
        initialUrl: "https://www.doh.gov.ph/covid19tracker",
        // "https://www.google.com/maps/d/u/0/viewer?ll=14.880250189625459%2C121.79393725998648&z=9&mid=1MMfp_I8jakIy6mzoz2aPQRHdOrbofdmk&fbclid=IwAR2BLCrrZmQzsdMxJaeOEdragBxiWQrgctMEtsnrMCeDOgRlA-sYRfcEb80",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
