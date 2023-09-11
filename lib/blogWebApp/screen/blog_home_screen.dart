import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogHomeScreen extends StatelessWidget {
  WebViewController? controller;

  BlogHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (controller != null) {
                  controller!.loadUrl('https://blog.naver.com/kakao_ent');
                }
              },
              icon: Icon(
                Icons.home,
              ))
        ],
      ),
      body: WebView(
        initialUrl: "https://blog.naver.com/kakao_ent",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
