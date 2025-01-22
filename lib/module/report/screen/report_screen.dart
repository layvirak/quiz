import 'package:flutter/material.dart';

import '../../../utils/widget/custom_coming_soon.dart';

class ReportScreen extends StatelessWidget {
  final Widget? drawer;
  const ReportScreen({
    super.key,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report"),
      ),
      drawer: drawer,
      body: const CustomComingSoon(),
    );
  }
}
