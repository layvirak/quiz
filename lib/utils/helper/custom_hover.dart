import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  const OnHover({
    super.key,
    required this.builder,
  });
  final Widget Function(bool isHovered) builder;

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => onEntered(true),
      onExit: (e) => onExited(false),
      child: widget.builder(isHovered),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
  void onExited(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
