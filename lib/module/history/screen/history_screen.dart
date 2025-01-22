import 'package:flutter/material.dart';

import '../../../utils/widget/custom_coming_soon.dart';

class HistoryScreen extends StatelessWidget {
  final Widget? drawer;
  const HistoryScreen({
    super.key,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      drawer: drawer,
      body: const CustomComingSoon(),
    );
  }
}
