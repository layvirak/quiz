import 'package:lomhat/module/home/widget/screen_responsive/home_medium.dart';

import 'package:flutter/material.dart';
import 'package:lomhat/module/home/widget/screen_responsive/home_small.dart';

import '../../../utils/widget/screen_responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenResponsive(
      mediumScreen: HomeMedium(),
      largeScreen: HomeMedium(),
      smallScreen: HomeSmall(),
    );
  }
}
