import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../helper/api_base_helper.dart';

class CustomAlertResponse {
  static showSuccess({
    String? title,
    String? message,
    required BuildContext context,
    String? msg,
  }) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Container(
          padding: const EdgeInsets.all(10),
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 25),
          decoration: BoxDecoration(
            color: AppColor.successColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(
                Icons.check_circle_outline_outlined,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title ?? 'Success',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                    if (message != null)
                      Text(
                        message,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    if (msg != null)
                      Text(
                        onCheckMessage(msg),
                        // 'Your account has been created',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 3),
      ));
  }

  static showDanger({
    String? title,
    String? message,
    required BuildContext context,
    String? msg,
  }) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Container(
          padding: const EdgeInsets.all(10),
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 25),
          decoration: BoxDecoration(
            color: AppColor.dangerColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(
                Icons.warning_amber_sharp,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title ?? "Error",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                    if (message != null)
                      Text(
                        message,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    if (msg != null)
                      Text(
                        onCheckMessage(msg),
                        // 'Your account has been created',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 3),
      ));
  }

  static showWarning(
      {String? title,
      String? message,
      String? msg,
      required BuildContext context}) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Container(
          padding: const EdgeInsets.all(10),
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 25),
          decoration: BoxDecoration(
            color: AppColor.warningColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.warning_amber_sharp,
                    size: 25,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    title ?? "warning",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (message != null)
                    Text(
                      message,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  if (msg != null)
                    Text(
                      onCheckMessage(msg),
                      // 'Your account has been created',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                ],
              ),
            ],
          ),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 3),
      ));
  }

  //****************************************************************************
  //Description : This function is used to check error message
  //Required Field : context, error
  //
  //Response Detail :
  //June 15,2024 HOEUN PHA: Created
  //****************************************************************************

  static showAlertMessage({BuildContext? context, ErrorModel? error}) {
    String? message = '';
    if (error?.bodyString == null) {
      message = 'Something went wrong!';
    } else {
      if (error?.bodyString['exception'] != null) {
        message = error?.bodyString['exception'];
      } else if (error?.bodyString['_error_message'] != null) {
        message = error?.bodyString['_error_message'];
      } else if (error?.bodyString['message'] != null) {
        message = error?.bodyString['message'];
      } else {
        message = 'Something went wrong!';
      }
    }

    if (error!.statusCode! < 500) {
      CustomAlertResponse.showWarning(context: context!, message: message);
    } else {
      CustomAlertResponse.showDanger(context: context!, message: message);
    }
  }
}

String onCheckMessage(String msg) {
  switch (msg) {
    case 'true':
      return 'Successfully';
    case 'false':
      return 'Assign Qty cannot be greater than Remained Qty.';
    case 'greater':
      return 'You cannot assign more because the quantity has already been allocated.';
    case 'false_group':
      return 'This group is not exists. Please select group again.';
    case 'false_zero':
      return 'Cannot Assign 0 Qty. Please input Assign Qty again.';
    case 'false_date':
      return 'Start Date can not be greater than End Date.';
    default:
      return 'Something went wrong!';
  }
}
