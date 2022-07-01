
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class InstegramScreen extends StatefulWidget {
  const InstegramScreen({Key? key}) : super(key: key);

  @override
  State<InstegramScreen> createState() => _InstegramScreenState();
}

class _InstegramScreenState extends State<InstegramScreen> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
      ),
      body: const WebView(
        initialUrl: "https://www.instagram.com/explore/tags/applescabdisease/",
      ),
    );
  }
}
