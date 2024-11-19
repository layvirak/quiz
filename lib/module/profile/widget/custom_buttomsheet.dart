import 'package:flutter/material.dart';

onShowBottomSheetsLanguage({
  required BuildContext context,
  GestureTapCallback? ontap,
  Widget? child,
  double? height,
  bool? appbar = false,
  Color? colors,
  EdgeInsets? padding,
  String? title,
  bool? isSelected,
  String? image,
  Function? then,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: padding,
        height: height,
        child: child,
      );
    },
  ).then((value) {
    if (then != null) {
      then();
    }
  });
}
