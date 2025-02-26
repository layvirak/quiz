import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomQuizDetatilData extends StatelessWidget {
  const CustomQuizDetatilData({
    super.key,
    this.label,
    this.value,
  });
  final String? label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            label ?? '---',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 14,
                ),
          ),
        ),
        const Gap(10),
        Expanded(
          child: Text(
            textAlign: TextAlign.right,
            value != null && value != '' ? value! : '---',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
