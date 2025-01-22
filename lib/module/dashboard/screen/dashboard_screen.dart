import 'package:flutter/material.dart';
import 'package:lomhat/utils/widget/custom_coming_soon.dart';

class DashboardScreen extends StatelessWidget {
  final Widget? drawer;
  const DashboardScreen({
    super.key,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: drawer,
      body: const CustomComingSoon(),
    );
  }
}
