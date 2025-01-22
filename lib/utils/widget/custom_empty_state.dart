import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../../constrants/app_logo.dart';

class CustomEmptyState extends StatelessWidget {
  const CustomEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Center(
          child: Column(
        children: [
          Image.asset(
            AppImage.noData,
          ),
          Text(
            "No Data",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
          ),
        ],
      )),
    );
  }
}
