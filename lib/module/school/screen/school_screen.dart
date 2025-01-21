import 'package:flutter/material.dart';
import 'package:lomhat/utils/widget/custom_coming_soon.dart';

class SchoolScreen extends StatefulWidget {
  const SchoolScreen({super.key});

  @override
  State<SchoolScreen> createState() => _SchoolScreenState();
}

class _SchoolScreenState extends State<SchoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("School"),
        actions: const [],
      ),
      body: const CustomComingSoon(),
    );
  }
}
