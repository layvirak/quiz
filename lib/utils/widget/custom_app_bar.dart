
import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Row? tail;
  final Widget? leading;
  final Widget? acction;
  const CustomAppBar({
    super.key,
    this.title,
    this.tail,
    this.leading,
    this.acction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  child: leading ?? Container(),
                ),
                Text(
                  title ?? '---',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Expanded(
                  child: tail ?? Container(),
                ),
                //======acction buttom create sale
                Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.only(right: 10.0),
                  child: acction,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: AppColor.iconColor,
          ),
        ],
      ),
    );
  }
}
