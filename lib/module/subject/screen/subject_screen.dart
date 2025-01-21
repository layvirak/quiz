import 'package:flutter/material.dart';
import 'package:lomhat/utils/widget/custom_coming_soon.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Subject"),
          actions: const [],
        ),
        body: const CustomComingSoon());
  }
}
