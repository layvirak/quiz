import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../utils/widget/custom_button.dart';
import '../../constrants/app_color.dart';

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
  kIsWeb || Platform.isAndroid
      ? showDialog<String>(
          context: context,
          builder: (BuildContext context) => Dialog(
            child: Container(
              height: height ?? 140,
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                const  SizedBox(height: 10),
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
                          textStyle: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          onPressed: secondaryButton,
                          title: secondaryLabel,
                          textStyle: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
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
        )
      : showCupertinoModalPopup<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => Theme(
            data: ThemeData.light(),
            child: CupertinoAlertDialog(
              insetAnimationCurve: Curves.bounceIn,
              title: Text(
                title.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              content: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  description.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: primaryButton,
                  child: Text(
                    primaryLabel.toString(),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: secondaryButton,
                  child: Text(
                    secondaryLabel.toString(),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: AppColor.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
}
