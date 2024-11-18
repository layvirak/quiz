import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../../constrants/app_logo.dart';

class CustomComingSoon extends StatelessWidget {
  const CustomComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Image.asset(
          AppImage.comingSoon,
          height: 150,
          width: 150,
        ),
        Text(
          'Coming Soon',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
        ),
      ],
    ));
  }
}
