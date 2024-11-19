import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_loading.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  WebViewController controller = WebViewController();
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'messageHandler',
        onMessageReceived: (message) {},
      )
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            Injection.homeController.isLoading.value = true;
          },
          onPageFinished: (String url) {
            Injection.homeController.isLoading.value = false;
          },
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse('https://103ditech.com/en/privacy/'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Privacy Policy'),
            ),
            backgroundColor: Colors.grey,
            body: Injection.homeController.isLoading.value
                ? Container()
                : SafeArea(
                    bottom: false,
                    child: Container(
                      color: Colors.white,
                      child: WebViewWidget(
                        controller: controller,
                        gestureRecognizers: gestureRecognizers,
                      ),
                    ),
                  ),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
