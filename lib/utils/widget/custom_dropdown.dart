import 'dart:async';

import 'package:lomhat/utils/widget/custom_divider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import 'custom_validate.dart';
import 'screen_responsive.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  final String title;
  final List<String>? item;
  final List<String>? itemDescription;
  final String? initValue;
  final bool isRequire;
  final Function? onTap;
  final EdgeInsets? margin;
  final Color? doneColor;
  final bool isReadOnly;
  final String? hintText;
  final double? size;
  final String validateText;
  final bool isValidate;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final GestureTapCallback? onTapIcon, onCancel;
  final bool? isNoborder;

  CustomDropDown({
    super.key,
    this.isRequire = false,
    this.isNoborder = false,
    this.doneColor,
    this.margin,
    this.suffixIcon,
    this.hintText,
    this.suffixIconColor,
    this.onTapIcon,
    this.onTap,
    this.isReadOnly = false,
    this.item,
    this.itemDescription,
    this.initValue,
    this.title = '',
    this.isValidate = false,
    this.validateText = '',
    this.size,
    this.onCancel,
  });

  var getInitValue = '';

  @override
  Widget build(BuildContext context) {
    return !isReadOnly
        ? Padding(
            padding: margin ??
                const EdgeInsets.only(
                  top: 0,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (title != '')
                      Text(
                        title,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    if (isRequire && title != '')
                      const Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.red,
                      )
                  ],
                ),
                if (title != '')
                  const SizedBox(
                    height: 5,
                  ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            initValue == '' ||
                                    item!.contains(initValue) == false
                                ? hintText ?? ""
                                : initValue!,
                            style: initValue == '' ||
                                    item!.contains(initValue) == false
                                ? Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 16)
                                : Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(fontSize: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: item!
                        .asMap()
                        .entries
                        .map(
                          (data) => DropdownMenuItem<String>(
                            value: data.value,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              data.value,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            if (itemDescription != null &&
                                                itemDescription!.length ==
                                                    item!.length)
                                              Text(
                                                itemDescription![data.key],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                          ],
                                        ),
                                      ),
                                      if (initValue != '' &&
                                          item!.contains(initValue) != false &&
                                          initValue == data.value)
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                          color: Theme.of(context).primaryColor,
                                        )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                if (data.key + 1 != item!.length)
                                  const CustomDivider()
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    // value: initValue == '' || item!.contains(initValue) == false
                    //     ? null
                    //     : initValue,
                    onChanged: (String? value) {
                      if (value != null) {
                        onTap!(
                          ReturnModel(
                            value: value,
                            index: item!.indexWhere(
                              (e) => e == value,
                            ),
                          ),
                        );
                      }
                    },
                    iconStyleData: IconStyleData(
                      icon: GestureDetector(
                        onTap: onCancel != null &&
                                initValue != '' &&
                                item!.contains(initValue) != false
                            ? onCancel
                            : onTapIcon,
                        child: Row(
                          children: [
                            if (isRequire && title == '')
                              const SizedBox(
                                width: 11,
                                height: 11,
                                child: Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.red,
                                ),
                              ),
                            Container(
                              // color: Colors.red,
                              padding: const EdgeInsets.only(left: 0, right: 5),
                              child: onCancel != null &&
                                      initValue != '' &&
                                      item!.contains(initValue) != false
                                  ? Icon(
                                      Icons.cancel_outlined,
                                      color: Theme.of(context).disabledColor,
                                      size: 22,
                                    )
                                  : suffixIcon ??
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: suffixIconColor ??
                                            Theme.of(context)
                                                .colorScheme
                                                .onPrimaryContainer,
                                        size: 22,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    buttonStyleData: ButtonStyleData(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isNoborder == false
                            ? Theme.of(context).colorScheme.surface
                            : isValidate
                                ? Colors.red[100]
                                : Theme.of(context).cardColor,
                        border: Border.all(
                          width: 1,
                          color: isNoborder == false
                              ? Theme.of(context).disabledColor
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    menuItemStyleData: MenuItemStyleData(
                      height:
                          itemDescription != null && itemDescription!.isNotEmpty
                              ? 45
                              : 40,
                    ),
                  ),
                ),
                if (isValidate && validateText != '')
                  SizedBox(
                    height: 20,
                    child: CustomValidate(
                      validateText: validateText,
                    ),
                  )
              ],
            ),
          )
        : GestureDetector(
            onTap: isReadOnly
                ? () => onTap!()
                : () {
                    int initIndex = 0;

                    item!.asMap().entries.map((e) {
                      if (e.value == initValue!) {
                        initIndex = e.key;
                      }
                    }).toList();
                    onShowBottomSheet(
                        context: context,
                        height: 250,
                        title: 'Done',
                        doneTextColor: doneColor ?? AppColor.primaryColor,
                        child: buildPicker(
                          (index) {
                            getInitValue = item![index];
                            initIndex = index;
                          },
                          initIndex,
                        ),
                        onAfter: (_) {},
                        ontab: () {
                          if (initValue != null) {
                            onTap!(
                              ReturnModel(
                                value: getInitValue == ''
                                    ? initValue! == ''
                                        ? item![0]
                                        : initValue
                                    : getInitValue,
                                index: initIndex,
                              ),
                            );
                          } else {
                            onTap!(ReturnModel(
                              value: item![0],
                              index: 0,
                            ));
                          }
                        });
                  },
            child: Padding(
              padding: margin ?? const EdgeInsets.only(left: 0, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (title != '')
                        Text(
                          title,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      if (isRequire)
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.red,
                        )
                    ],
                  ),
                  if (title != '')
                    const SizedBox(
                      height: 5,
                    ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: isNoborder == false
                          ? Theme.of(context).colorScheme.surface
                          : Theme.of(context).cardColor,
                      border: Border.all(
                        width: 1,
                        color: isNoborder == false
                            ? Theme.of(context).disabledColor
                            : Colors.transparent,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              //  Injection.languageController.languageKey
                              //             .value ==
                              //         'en'
                              //     ? 5
                              //     : 0,
                              bottom: 5,
                              // Injection.languageController.languageKey
                              //             .value ==
                              //         'en'
                              //     ? 5
                              //     : 0,
                              left: 15,
                              right: 0,
                            ),
                            child: initValue != '' && initValue != null
                                ? Text(
                                    initValue ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  )
                                : Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          hintText ?? '',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                        GestureDetector(
                          onTap: onTapIcon,
                          child: Container(
                              color: Colors.transparent,
                              padding:
                                  const EdgeInsets.only(left: 0, right: 10),
                              child: suffixIcon),
                        ),
                      ],
                    ),
                  ),
                  if (isValidate && validateText != '')
                    SizedBox(
                      height: 20,
                      child: CustomValidate(
                        validateText: validateText,
                      ),
                    )
                ],
              ),
            ),
          );
  }

  Widget buildPicker(Function ontap, int defaultSelect) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CupertinoPicker(
            useMagnifier: true,
            backgroundColor: Colors.white,
            itemExtent: 35,
            scrollController:
                FixedExtentScrollController(initialItem: defaultSelect),
            onSelectedItemChanged: ((index) {
              ontap(index);
            }),
            children: item!
                .map(
                  (items) => SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        items,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class ReturnModel {
  String? value;
  int? index;
  ReturnModel({this.index, this.value});
}

onShowBottomSheet({
  BuildContext? context,
  String? title,
  Function? ontab,
  Widget? child,
  double? height,
  Color? colors,
  EdgeInsets? padding,
  Color? doneTextColor,
  bool? isWidget = false,
  FutureOr Function(dynamic)? onAfter,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.white,
    context: context!,
    builder: (context) {
      return Container(
        padding: padding,
        height: height,
        child: ScreenResponsive(
          // paddingSpaceColor: Colors.black12,
          smallScreen: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                height: 35,
                width: double.infinity,
                color: Colors.grey.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (ontab != null) {
                          ontab();
                        }
                        Navigator.pop(context);
                      },
                      child: Text(
                        '$title',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: doneTextColor ?? AppColor.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              if (isWidget == false)
                Expanded(
                  // child: SingleChildScrollView(
                  //   scrollDirection: Axis.vertical,
                  child: Container(
                    child: child,
                  ),
                ),
            ],
          ),
        ),
      );
    },
  ).then(onAfter!);
}
