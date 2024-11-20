import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomIconBack extends StatelessWidget {
  final Function? onTap;
  final Color? color;
  const CustomIconBack({super.key, this.onTap, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null
          ? () {
              Navigator.pop(context);
            }
          : () => onTap!(),
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: Icon(
            kIsWeb || Platform.isAndroid
                ? Icons.arrow_back
                : Icons.arrow_back_ios,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
