import 'package:lomhat/module/home/widget/screen_responsive/home_medium.dart';
import 'package:lomhat/module/home/widget/screen_responsive/home_small.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import '../../../utils/widget/screen_responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenResponsive(
      smallScreen: kIsWeb ? HomeMedium() : HomeMedium(),
    );
  }
}
