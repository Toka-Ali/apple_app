
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class TwitterScreen extends StatefulWidget {
  const TwitterScreen({Key? key}) : super(key: key);

  @override
  State<TwitterScreen> createState() => _TwitterScreenState();
}

class _TwitterScreenState extends State<TwitterScreen> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
      ),
      body: WebView(
        initialUrl: "https://pub.dev/packages/flutter_webview_plugin",
      ),
    );
  }
}
