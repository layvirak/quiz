import 'package:flutter/material.dart';

import '../../../constrants/app_color.dart';
import '../helper/format_convert.dart';

class CustomItemCard extends StatelessWidget {
  final String? title;
  final String? image;
  final GestureTapCallback? onPressed;
  final int? numberCount;
  final bool? isCount;
  const CustomItemCard({
    super.key,
    this.image,
    this.onPressed,
    this.title,
    this.numberCount = 0,
    this.isCount = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              )
            ]),
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    image!,
                    height: 45,
                    filterQuality: FilterQuality.high,
                    // color: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColor.primaryColor,
                        fontSize: 14,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            if (isCount != false)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  // height: 26,
                  decoration: BoxDecoration(
                      color: AppColor.dangerColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 0.5,
                          color: Colors.black12,
                        )
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    FormatConvert.formatCurrency(numberCount!.toDouble(),
                        isShowLast: false),
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: AppColor.textAppbarColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
