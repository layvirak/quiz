// DateTime? selectedDate = DateTime.now();
import 'package:lomhat/utils/widget/screen_responsive.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constrants/app_color.dart';

var pickDate = '';
Future<String> onDatePicker(
  BuildContext context, {
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
  DatePickerMode? initialCalendarMode,
}) async {
  DateTime? date = DateTime(2000);
  date = await showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColor.primaryColor,
            onPrimary: Colors.white,
            onSurface: AppColor.primaryColor,
          ),
        ),
        child: LayoutBuilder(builder: (_, constraints) {
          final width = constraints.maxWidth;
          return Center(
            child: Material(
              color: Theme.of(context).cardColor,
              child: SizedBox(
                width: !ScreenResponsive.isSmallScreen(context)
                    ? width / 2.8
                    : width - 30,
                child: CalendarDatePicker(
                  initialDate: initialDate ?? DateTime.now(),
                  firstDate: firstDate ?? DateTime(2000),
                  lastDate: lastDate ?? DateTime(2101),
                  initialCalendarMode:
                      initialCalendarMode ?? DatePickerMode.day,
                  onDateChanged: (value) {
                    initialDate = value;
                    Navigator.of(context).pop(value);
                  },
                ),
              ),
            ),
          );
        }),
      );
    },
  );

  pickDate = DateFormat('yyyy-MM-dd').format(date!);
  return pickDate;
}
