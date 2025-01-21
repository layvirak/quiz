import "package:flutter/material.dart";

class ScreenResponsive extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final double? largeScreenWidth;

  const ScreenResponsive({
    Key? key,
    this.largeScreen,
    this.mediumScreen,
    @required this.smallScreen,
    this.largeScreenWidth,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1024;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1024) {
          return largeScreen ?? smallScreen!;
        } else if (constraints.maxWidth <= 1024 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? smallScreen!;
        } else {
          return smallScreen ?? Container();
        }
      },
    );
  }
}
