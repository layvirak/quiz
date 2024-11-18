import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';

class CustomTapBar extends StatelessWidget {
  final String? title;
  final double? width;
  final GestureTapCallback? onTap;

  final bool isSelect;
  const CustomTapBar({
    super.key,
    this.isSelect = false,
    this.onTap,
    this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicWidth(
        child: Container(
          width: width,
          color: Colors.transparent,
          child: Column(
            children: [
              Text(
                title ?? '',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isSelect
                          ? AppColor.primaryColor
                          : Theme.of(context).dividerColor.withOpacity(0.5),
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: isSelect ? 1.5 : 0,
                color: isSelect
                    ? AppColor.primaryColor
                    : Theme.of(context).dividerColor.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
