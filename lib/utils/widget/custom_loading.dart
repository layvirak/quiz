import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
