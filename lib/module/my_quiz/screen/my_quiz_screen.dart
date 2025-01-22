import 'package:flutter/material.dart';

import '../../../utils/widget/custom_coming_soon.dart';

class MyQuizScreen extends StatelessWidget {
  final Widget? drawer;
  const MyQuizScreen({super.key, this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz"),
      ),
      drawer: drawer,
      body: const CustomComingSoon(),
    );
  }
}
