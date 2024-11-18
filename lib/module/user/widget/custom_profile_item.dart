import 'package:flutter/material.dart';

import '../../../utils/helper/format_convert.dart';

class CustomProfileInfoCard extends StatelessWidget {
  const CustomProfileInfoCard({
    super.key,
    this.label,
    this.value,
    this.isVertical = false,
    this.isSuffixIcon = false,
    this.suffixIcon,
    this.onTap,
  });
  final String? label;
  final String? value;
  final bool isVertical;
  final bool isSuffixIcon;
  final Widget? suffixIcon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? Container(
            width: 110,
            color: Colors.transparent,
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    FormatConvert.nullCheck(value: "$label"),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    FormatConvert.nullCheck(value: value),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.symmetric(vertical: 2),
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      FormatConvert.nullCheck(value: label),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.6),
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      FormatConvert.nullCheck(value: value),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
