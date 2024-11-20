import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constrants/app_color.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xfffbfbfb),
    primaryColor: AppColor.primaryColor,
    secondaryHeaderColor: AppColor.secondaryColor,
    disabledColor: Colors.grey.withOpacity(0.5),
    dialogBackgroundColor: Colors.white,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: GoogleFonts.battambang(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      backgroundColor: AppColor.primaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 1.5,
      shadowColor: Colors.black12,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      displaySmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.6),
      ),
      bodyMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.6),
      ),
      bodySmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.6),
      ),
      headlineLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      headlineSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      labelLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
      labelMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
      labelSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
    ),
    dividerColor: Colors.black12,
    cardColor: Colors.white,
    colorScheme: ColorScheme(
      primary: AppColor.primaryColor,
      onPrimary: AppColor.primaryColor,
      secondary: AppColor.secondaryColor,
      onSecondary: AppColor.secondaryColor,
      error: Colors.black,
      onError: Colors.white,
      surface: const Color(0xfffbfbfb),
      primaryContainer: Colors.black,
      onSurface: Colors.black,
      brightness: Brightness.light,
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff171C27),
    primaryColor: AppColor.primaryColor,
    secondaryHeaderColor: AppColor.secondaryColor,
    disabledColor: Colors.grey,
    dividerColor: Colors.white30,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor.withOpacity(0.3),
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: GoogleFonts.battambang(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      elevation: 1.5,
      shadowColor: Colors.black26,
    ),
    cardColor: Colors.blueGrey.shade900,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      bodyMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      bodySmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      headlineLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      headlineMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      headlineSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      labelLarge: GoogleFonts.battambang(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
      labelMedium: GoogleFonts.battambang(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
      labelSmall: GoogleFonts.battambang(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
    ),
    colorScheme: ColorScheme(
      primary: AppColor.primaryColor,
      onPrimary: AppColor.primaryColor,
      primaryContainer: const Color(0xff282C33),
      secondary: AppColor.secondaryColor,
      onSecondary: AppColor.secondaryColor,
      error: const Color(0xff171C27),
      onError: Colors.white,
      surface: const Color(0xff171C27),
      onPrimaryContainer: Colors.white,
      onSurface: const Color(0xff171C27),
      brightness: Brightness.dark,
    ),
  );
}
