import 'package:flutter/material.dart';

import '../../../utils/widget/custom_coming_soon.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomComingSoon(),
          ],
        ),
      ),
    );
  }
}
