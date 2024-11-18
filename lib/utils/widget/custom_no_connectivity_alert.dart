import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class NoConnectionAlert {
  static customNoConnectivityAlert({
    BuildContext? context,
    bool fromTop = true,
    String? title,
    String? description,
    double? height,
    double? width,
  }) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 500),
      context: context!,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: fromTop ? Alignment.topCenter : Alignment.bottomCenter,
          child: Container(
            height: height?? 115,
            width:width?? 350,
            margin:
                const EdgeInsets.only(top: 50, bottom: 50, left: 15, right: 15),
            padding: const EdgeInsets.fromLTRB(10, 15, 5, 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 45,
                      height: 45,
                      child:
                          Lottie.asset('assets/images/lottie/no-internet.json'),
                    ),
                    const Gap(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? 'No Internet Connection',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Gap(5),
                        SizedBox(
                          width: 200,
                          child: Text(
                            description ??
                                'Please check your internet connection and try again.',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              overflow: TextOverflow.clip,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Ok',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, fromTop ? -1 : 1), end: const Offset(0, 0))
                  .animate(anim1),
          child: child,
        );
      },
    );
  }
}
