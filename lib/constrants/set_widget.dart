import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SetWidget {
  //****************************************************************************
  //##########--padding buttom--##########=>Rak
  //****************************************************************************
  static double paddingBottom() {
    return kIsWeb || Platform.isAndroid ? 15 : 25;
  }

  //****************************************************************************
  //##########----##########=>Rak
  //****************************************************************************
  static EdgeInsets paddingBottomWidget() {
    return EdgeInsets.only(
      bottom: kIsWeb || Platform.isAndroid ? 15 : 25,
      left: 15,
      right: 15,
      top: 10,
    );
  }

  static EdgeInsets paddingForm() {
    return const EdgeInsets.only(
      left: 15,
      right: 15,
      top: 10,
    );
  }
}
