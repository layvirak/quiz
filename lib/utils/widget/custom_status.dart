import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../../constrants/injection.dart';
import '../helper/format_convert.dart';

class CustomStatus extends StatelessWidget {
  final String? status;

  final double? height, fontSize, paddingTop;
  final AlignmentGeometry? alignment;
  final bool isFillText;
  final int? fillTextFontSize;
  const CustomStatus({
    super.key,
    this.height,
    this.fontSize,
    this.paddingTop,
    required this.status,
    this.alignment,
    this.isFillText = false,
    this.fillTextFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return !isFillText
        ? Injection.homeController.colorWorkflowState
                    .any((item) => item.name == status) ==
                true
            ? Container(
                height: height,
                alignment: alignment,
                decoration: BoxDecoration(
                  color: Injection
                              .homeController
                              .colorWorkflowState[Injection
                                  .homeController.colorWorkflowState
                                  .indexWhere((item) => item.name == status)]
                              .backgroundColor !=
                          null
                      ? FormatConvert.fromHex(Injection
                          .homeController
                          .colorWorkflowState[Injection
                              .homeController.colorWorkflowState
                              .indexWhere((item) => item.name == status)]
                          .backgroundColor!)
                      : AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(
                  top: paddingTop ?? 5,
                  left: 10,
                  right: 10,
                  bottom: 5,
                ),
                child: Text(
                  status ?? '---',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize ?? 15,
                        color: Injection
                                    .homeController
                                    .colorWorkflowState[Injection
                                        .homeController.colorWorkflowState
                                        .indexWhere(
                                            (item) => item.name == status)]
                                    .textColor !=
                                null
                            ? FormatConvert.fromHex(Injection
                                .homeController
                                .colorWorkflowState[Injection
                                    .homeController.colorWorkflowState
                                    .indexWhere((item) => item.name == status)]
                                .textColor!)
                            : Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              )
            : Container(
                height: height,
                alignment: alignment,
                decoration: BoxDecoration(
                  color: (() {
                    if (status == 'Cancelled' ||
                        status == 'Cancel' ||
                        status == 'Requested' ||
                        status == 'Lead' ||
                        status == 'Opportunity' ||
                        status == 'Lost Quotation' ||
                        status == "Do Not Contact" ||
                        status == "Interested" ||
                        status == 'Passive' ||
                        status == "Low" ||
                        status == 'Replied' ||
                        status == 'Request' ||
                        status == "Lost") {
                      return AppColor.subTextColor;
                    }
                    if (status == 'Active' ||
                        status == "Success" ||
                        status == "Approved" ||
                        status == "Approve") {
                      return AppColor.successColor;
                    }
                    if (status == "Pending") {
                      return Colors.yellow;
                    }
                    if (status == "Suspended") {
                      return AppColor.primaryColor;
                    }
                    if (status == 'Doing') {
                      return Colors.blue;
                    }
                    if (status == "Ordered" ||
                        status == "Closed" ||
                        status == "Done" ||
                        status == "Quotation" ||
                        status == "Converted" ||
                        status == "Completed" ||
                        status == "Consolidated" ||
                        status == "Paid") {
                      return Colors.green;
                    }
                    if (status == "Submitted" || status == "Submit") {
                      return Colors.blue.withOpacity(0.8);
                    }
                    if (status == "Medium") {
                      return Colors.orange;
                    }

                    return Colors.red;
                  }()),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(
                  top: paddingTop ?? 5,
                  left: 10,
                  right: 10,
                  bottom: 5,
                ),
                child: Text(
                  status ?? '---',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize ?? 15,
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              )
        : Injection.homeController.colorWorkflowState
                    .any((item) => item.name == status) ==
                true
            ? Text(
                status ?? '---',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize ?? 15,
                      color: FormatConvert.fromHex(Injection
                          .homeController
                          .colorWorkflowState[Injection
                              .homeController.colorWorkflowState
                              .indexWhere((item) => item.name == status)]
                          .textColor!),
                    ),
                textAlign: TextAlign.center,
              )
            : Text(
                status ?? '---',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize ?? 15,
                      color: (() {
                        if (status == 'Cancelled' ||
                            status == 'Cancel' ||
                            status == 'Requested' ||
                            status == 'Lead' ||
                            status == 'Opportunity' ||
                            status == 'Lost Quotation' ||
                            status == "Do Not Contact" ||
                            status == "Interested" ||
                            status == 'Passive' ||
                            status == 'Replied' ||
                            status == 'Request' ||
                            status == "Low" ||
                            status == "Lost") {
                          return AppColor.subTextColor;
                        }
                        if (status == 'Doing') {
                          return Colors.blue;
                        }
                        if (status == 'Active' ||
                            status == "Success" ||
                            status == "Approved" ||
                            status == "Approve") {
                          return AppColor.successColor;
                        }
                        if (status == "Pending") {
                          return Colors.yellow;
                        }
                        if (status == "Suspended") {
                          return AppColor.primaryColor;
                        }
                        if (status == "Ordered" ||
                            status == "Closed" ||
                            status == "Done" ||
                            status == "Quotation" ||
                            status == "Converted" ||
                            status == "Completed" ||
                            status == "Consolidated" ||
                            status == "Paid") {
                          return Colors.green;
                        }
                        if (status == "Submitted" || status == "Submit") {
                          return Colors.blue.withOpacity(0.8);
                        }

                        if (status == "Medium") {
                          return Colors.orange;
                        }

                        return Colors.red;
                      }()),
                    ),
                textAlign: TextAlign.center,
              );
  }
}
