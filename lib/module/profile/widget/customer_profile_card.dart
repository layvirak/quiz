import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomerProfileCard extends StatelessWidget {
  const CustomerProfileCard({super.key, this.icon, this.onTap, this.title});
  final String? title;
  final IconData? icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).focusColor,
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ]),
        width: double.infinity,
        child: Row(
          children: [
            Icon(icon),
            const Gap(20),
            Text(title ?? "--",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 17)),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
