import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final String? title;
  final Widget? icon;
  final Widget? lastIcon;
  final bool? isShow;
  final GestureTapCallback? ontap, ontapLast;
  final Widget? widget;
  final Color? color;
  const CustomMenu({
    super.key,
    this.color,
    this.title,
    this.icon,
    this.lastIcon,
    this.isShow = false,
    this.ontap,
    this.ontapLast,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        margin: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.blueGrey.shade100,
              ),
            ]),
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            icon ?? const SizedBox(),
            SizedBox(
              width: icon == null ? 0 : 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title!,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w500, color: color),
                  ),
                  isShow == false
                      ? GestureDetector(onTap: ontapLast, child: lastIcon!)
                      : widget!
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
