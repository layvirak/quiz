import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../helper/api_base_helper.dart';

class CustomAlertReponse {
  static showSuccess(
      {String? title, String? message, required BuildContext context}) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Row(
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
                  if (title != null)
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  if (message != null)
                    Text(
                      message,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.successColor,
        duration: const Duration(seconds: 3),
      ));
  }

  static showDanger(
      {String? title, String? message, required BuildContext context}) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Row(
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
                  if (title != null)
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  if (message != null)
                    Text(
                      message,
                      // 'Your account has been created',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.dangerColor,
        duration: const Duration(seconds: 3),
      ));
  }

  static showWarning(
      {String? title, String? message, required BuildContext context}) {
    return ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Row(
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
                  if (title != null)
                    Text(
                      title,
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
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.warningColor,
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
      CustomAlertReponse.showWarning(context: context!, message: message);
    } else {
      CustomAlertReponse.showDanger(context: context!, message: message);
    }
  }
}
