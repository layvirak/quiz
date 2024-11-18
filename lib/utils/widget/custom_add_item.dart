import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constrants/app_color.dart';

class CustomAddItem extends StatelessWidget {
  final String? title;
  final double? width;
  final GestureTapCallback? onPress;
  final EdgeInsets? margin;
  const CustomAddItem({
    super.key,
    @required this.title,
    this.width,
    this.margin,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 35,
        // width: width ?? 150,
        margin: margin,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: AppColor.primaryColor,
              size: 20,
            ),
            const Gap(5),
            Text(title!, style: Theme.of(context).textTheme.labelMedium)
          ],
        ),
      ),
    );
  }
}
