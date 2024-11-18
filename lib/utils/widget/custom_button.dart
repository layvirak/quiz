import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constrants/app_color.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onPressed;
  final bool? isDisable;
  final bool? isOutline;
  final String? iconUrl;
  final bool? isHaveColor;
  final TextStyle? textStyle;
  final Color? color;
  final Color? borderColor;
  final bool? isdotBorder;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CustomButton(
      {this.title,
      this.isHaveColor = false,
      this.onPressed,
      this.isDisable = false,
      this.isOutline = false,
      this.iconUrl,
      this.color,
      this.textStyle,
      this.borderColor,
      this.isdotBorder = false});
  @override
  Widget build(BuildContext context) {
    return !isDisable! && !isOutline!
        ? Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8),
            color: isdotBorder! ? Colors.white : color ?? AppColor.primaryColor,
            child: InkWell(
              splashColor: isHaveColor!
                  ? AppColor.primaryColor.withOpacity(0.4)
                  : isdotBorder!
                      ? AppColor.iconColor.withOpacity(0.4)
                      : null,
              highlightColor:
                  isOutline! ? AppColor.primaryColor.withOpacity(0.4) : null,
              onTap: isDisable! ? null : onPressed,
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: isdotBorder! ? 15 : 12.5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.primaryColor),
                  borderRadius: BorderRadius.circular(6),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: isdotBorder! ? (Get.width - 32) / 3.5 : 0),
                  child: Row(
                    mainAxisAlignment: isdotBorder!
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (iconUrl != null)
                        iconUrl!.contains('.svg')
                            ? SvgPicture.asset(iconUrl!)
                            : Image.asset(
                                iconUrl!,
                                height: 20,
                                width: 20,
                              ),
                      SizedBox(
                        width: iconUrl != null ? 10 : 0,
                      ),
                      isdotBorder!
                          ? Text(title!,
                              style: textStyle ??
                                  Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          color: AppColor.textColor,
                                          fontWeight: FontWeight.w700))
                          : Text(
                              title!,
                              textAlign: TextAlign.center,
                              style: textStyle ??
                                  Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          height: 1.5),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : isOutline! && !isDisable!
            ? Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    splashColor:
                        isOutline! ? AppColor.iconColor.withOpacity(0.4) : null,
                    onTap: onPressed,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12.5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: borderColor ?? AppColor.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          iconUrl != null
                              ? SvgPicture.asset(
                                  iconUrl!,
                                )
                              : Container(),
                          if (iconUrl != null)
                            const SizedBox(
                              width: 15,
                            ),
                          Text(
                            title!,
                            textAlign: TextAlign.center,
                            style: textStyle ??
                                Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      color:
                                          borderColor ?? AppColor.primaryColor,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                height: 53,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.disableColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  title!,
                  style: textStyle ??
                      Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: const Color(0xffC2C2C2),
                          fontWeight: FontWeight.bold),
                ),
              );
  }
}
