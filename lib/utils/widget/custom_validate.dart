import 'package:flutter/material.dart';

class CustomValidate extends StatelessWidget {
  final String? validateText;
  final EdgeInsets padding;
  const CustomValidate(
      {super.key, this.validateText, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: padding,
          child: const Icon(
            Icons.error,
            color: Colors.red,
            size: 15,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(validateText ?? 'Invalid',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.red)),
          ),
        ),
      ],
    );
  }
}
