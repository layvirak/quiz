import 'package:flutter/material.dart';
import '../../../../utils/widget/custom_button.dart';

Future<void> onShowAlertDialog(
  BuildContext context, {
  String? title,
  String? description,
  String? primaryLabel,
  String? secondaryLabel,
  TextStyle? primaryLabelStyle,
  TextStyle? secondaryLabelStyle,
  GestureTapCallback? primaryButton,
  GestureTapCallback? secondaryButton,
  double? height,
}) async {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => Dialog(
      child: Container(
        height: height ?? 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              title.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                description.toString(),
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: primaryButton,
                    title: primaryLabel,
                    isOutline: true,
                    textStyle: Theme.of(context).textTheme.displayMedium!,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    onPressed: secondaryButton,
                    title: secondaryLabel,
                    textStyle:
                        Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: Colors.white,
                            ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
