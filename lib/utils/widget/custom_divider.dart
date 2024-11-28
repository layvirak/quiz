import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  const CustomDivider({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: color ?? Theme.of(context).dividerColor,
      thickness: 0.5,
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: Theme.of(context).dividerColor,
      thickness: 1,
      width: 1,
    );
  }
}
