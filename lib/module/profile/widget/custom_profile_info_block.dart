import 'package:flutter/material.dart';

class CustomProfileInfoBlock extends StatelessWidget {
  const CustomProfileInfoBlock({
    super.key,
    required this.label,
    this.value,
    this.onTap,
    this.labelStyle,
    this.title,
    this.prefixTitle,
  });
  final String? label;
  final Widget? value;
  final GestureTapCallback? onTap;
  final TextStyle? labelStyle;
  final String? title;
  final Widget? prefixTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              prefixTitle!,
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 0),
                child: Text(
                  title.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 5),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 40,
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label.toString(),
                  style:
                      labelStyle ?? Theme.of(context).textTheme.displayMedium,
                ),
                value ?? const Text(''),
              ],
            ),
          ),
        )
      ],
    );
  }
}
