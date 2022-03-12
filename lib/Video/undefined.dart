import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class My_App extends StatelessWidget {
  const My_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: WebView(
        initialUrl: "https://www.google.co.in/",
      ),
    );
  }
}
