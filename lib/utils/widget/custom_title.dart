import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String? title;
  const CustomTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}
