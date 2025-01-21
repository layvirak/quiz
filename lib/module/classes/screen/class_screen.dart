import 'package:flutter/material.dart';
import 'package:lomhat/utils/widget/custom_coming_soon.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Class"),
          actions: const [],
        ),
        body: const CustomComingSoon());
  }
}
