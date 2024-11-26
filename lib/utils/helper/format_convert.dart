import 'dart:convert';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class FormatConvert {
  static int convertToInt(value) {
    return value.toInt();
  }

  //****************************************************************************
  //##########--Rotate Image--##########=>Rak
  //****************************************************************************
  static Future<File> rotateImage(File image) async {
    await decodeImageFromList(File(image.path).readAsBytesSync())
        .then((value) async {
      if (value.height > value.width) {
        var basenames = basenameWithoutExtension(image.path);
        var pathString = image.path.split(basename(image.path))[0];

        var pathStringWithExtension = "$pathString${basenames}_image.jpg";

        await FlutterImageCompress.compressAndGetFile(
          image.path,
          pathStringWithExtension,
          rotate: 0,
          quality: 100,
          keepExif: false,
          autoCorrectionAngle: true,
          format: CompressFormat.jpeg,
        ).then((value) {
          image = File(value!.path);
        });
      }
    });
    return image;
  }

  //ex 1000 => 1k
  static String convertNumberDb(double? number) {
    String formatNumber =
        NumberFormat.compactCurrency(decimalDigits: 2, symbol: '')
            .format(number);
    return formatNumber;
  }

  //2024-07-03 14:38:20.789951 => 02:38 PM
  static String convertTime(String dateTime) {
    String time =
        DateFormat('hh:mm a', 'en_US').format(DateTime.parse(dateTime));
    return time;
  }

  //ex 1232.229 => 1,232.33
  static String digitNumber(num? dnumber) {
    String digitNum = NumberFormat.currency(name: '').format(dnumber ?? 0);
    return digitNum;
  }

  static Future<String> networkImageToBase64(String? imageUrl) async {
    http.Response response = await http.get(Uri.parse(imageUrl!));
    final bytes = response.bodyBytes;
    return "data:image/png;base64,${base64Encode(bytes)}";
  }

  static String fileToBase64(File? imageFile) {
    final bytes = File(imageFile!.path).readAsBytesSync();
    String base64Image = "data:image/png;base64,${base64Encode(bytes)}";
    return base64Image;
  }

  static formatCurrency(double number, {bool isShowLast = true}) {
    final result = NumberFormat("#,##0.00", "en_US");
    return isShowLast
        ? result.format(number)
        : result.format(number).replaceAll('.00', '');
  }

  // ex 1,232,512 => 1,232,512
  static formatCurrencyInt(int number) {
    final result = NumberFormat("#,##0", "en_US");
    return result.format(number);
  }

  // ex 1,232,512.21 => 1,232,512.21
  static formatLandArea(num number) {
    final result = NumberFormat("#,##0.00", "en_US");
    return result.format(number);
  }

  // ex 10231010 => 010231010
  static add0FrontPhoneNumber(String str) {
    if (str[0] == "0") {
      return str;
    }
    return '0$str';
  }

  // ex 010231010 => 10231010
  static remove0FrontPhoneNumber(String str) {
    if (str[0] != "0") {
      return str;
    }
    return str.replaceFirst('0', '');
  }

  // ex 010231010 => 010***010
  static hideMiddlePhoneNumber(String phonenumber) {
    String countryCode = getCountryCodeFormPhone(phonenumber);
    String getPhonenumber =
        phonenumber.replaceFirst(countryCode.split('|')[0], '0');
    return "${getPhonenumber.substring(0, 3)} *** ${getPhonenumber.substring(getPhonenumber.length - 3, getPhonenumber.length)}";
  }

  // ex apply => Apply
  static bigCharactorFirst(String? title) {
    title = title!.capitalize;
    return title;
  }

  // convert string to color(#ffffff)
  static fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  // ex 12,12 => 12.12
  double onConvertToDouble(String value) {
    var values = value.replaceAll(",", ".");
    var doubleValue = double.parse(values);
    return doubleValue;
  }

  // country code : value.split('|')[0] , phone number : value.split('|')[1]
  static String getCountryCodeFormPhone(String phoneNumber) {
    String? getPhoneNumber = phoneNumber;
    for (var item in countryCodeList) {
      if (phoneNumber.contains(item)) {
        return getPhoneNumber = '$item|${phoneNumber.replaceAll(item, '')}';
      }
    }
    return '-|${getPhoneNumber!}';
  }

  //****************************************************************************
  //Date Created, This Function is for NullCHeck
  //Required Field : .....,....
  //
  //Response Detail :
  //Date Task_ID Yim Sovandara: Created
  //****************************************************************************
  static String nullCheck({String? value, String? nullText}) {
    if (value == null || value == '') {
      return nullText ?? '---';
    } else {
      return value;
    }
  }

  static formatDateTime(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);
    String formatDate = DateFormat('dd-MMM-yyyy', 'en_US').format(dateTime);
    return formatDate;
  }

  // ex: 25 jan 2023 08:30 AM
  static getformatDateTime(String dateString, {String? format}) {
    DateTime dateTime = DateTime.parse(dateString);
    String formatDate =
        DateFormat(format ?? 'dd MMM yyyy kk:mm a', 'en_US').format(dateTime);
    return formatDate;
  }

  // ex: mon, 01, May
  static String? getdatetime(date) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(date);
    var outputFormat = DateFormat('EEE,dd MMM,');
    return outputFormat.format(inputDate);
  }

  static String? getFormatedDate(date) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(date);
    var outputFormat = DateFormat('EEEE, dd MMM yyyy');
    return outputFormat.format(inputDate);
  }

  static String? eventDateTime(date) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(date);
    var outputFormat = DateFormat('EEE, dd MMM yyyy');
    return outputFormat.format(inputDate);
  }

  static formatDuration(Duration duration) {
    String hours = duration.inHours.toString().padLeft(0, '2');
    String minutes =
        duration.inMinutes.remainder(60).toString().padLeft(0, '0');
    String seconds =
        duration.inSeconds.remainder(60).toString().padLeft(0, '0');

    String? returnData;
    if (hours != '0') {
      returnData = '${hours}h';
      if (minutes != '0' || seconds != '0') {
        returnData = '$returnData:';
      }
    }
    if (minutes != '0') {
      returnData = '${returnData ?? ''}${minutes}mn';
      if (seconds != '0') {
        returnData = '$returnData:';
      }
    }
    if (seconds != '0') {
      returnData = '${returnData ?? ''}${seconds}s';
    }
    return returnData;
  }

  static String convertToAgo(DateTime input) {
    Duration diff = DateTime.now().difference(input);

    if (diff.inDays >= 1) {
      return '${diff.inDays} ';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} ';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} ';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} ';
    } else {
      return 'just now';
    }
  }
}

List countryCodeList = [
  '+44-1481',
  '+44-1624',
  '+44-1534',
  '+1-242',
  '+1-246',
  '+1-441',
  '+1-284',
  '+1-345',
  '+1-767',
  '+1-809',
  '+1-829',
  '+1-849',
  '+1-473',
  '+1-671',
  '+1-876',
  '+1-664',
  '+1-670',
  '+1-939',
  '+1-869',
  '+1-784',
  '+1-721',
  '+1-868',
  '+1-649',
  '+1-340',
  '+1-758',
  '+1-268',
  '+1-787',
  '+1-684',
  '+1-264',
  '+355',
  '+213',
  '+376',
  '+244',
  '+672',
  '+54',
  '+374',
  '+297',
  '+43',
  '+994',
  '+973',
  '+880',
  '+375',
  '+501',
  '+229',
  '+975',
  '+591',
  '+387',
  '+267',
  '+246',
  '+673',
  '+359',
  '+226',
  '+257',
  '+855',
  '+237',
  '+238',
  '+236',
  '+235',
  '+269',
  '+682',
  '+506',
  '+385',
  '+599',
  '+357',
  '+420',
  '+243',
  '+253',
  '+670',
  '+593',
  '+503',
  '+240',
  '+291',
  '+372',
  '+251',
  '+500',
  '+298',
  '+679',
  '+358',
  '+689',
  '+241',
  '+220',
  '+995',
  '+233',
  '+350',
  '+299',
  '+502',
  '+224',
  '+245',
  '+592',
  '+509',
  '+504',
  '+852',
  '+354',
  '+964',
  '+353',
  '+972',
  '+225',
  '+962',
  '+254',
  '+686',
  '+383',
  '+965',
  '+996',
  '+856',
  '+371',
  '+961',
  '+266',
  '+231',
  '+218',
  '+423',
  '+370',
  '+352',
  '+853',
  '+389',
  '+261',
  '+265',
  '+960',
  '+223',
  '+356',
  '+692',
  '+222',
  '+230',
  '+262',
  '+691',
  '+373',
  '+377',
  '+976',
  '+382',
  '+212',
  '+258',
  '+264',
  '+674',
  '+977',
  '+599',
  '+687',
  '+505',
  '+227',
  '+234',
  '+683',
  '+850',
  '+968',
  '+680',
  '+970',
  '+507',
  '+675',
  '+595',
  '+351',
  '+974',
  '+242',
  '+262',
  '+250',
  '+590',
  '+290',
  '+590',
  '+508',
  '+685',
  '+378',
  '+239',
  '+966',
  '+221',
  '+381',
  '+248',
  '+232',
  '+421',
  '+386',
  '+677',
  '+252',
  '+211',
  '+249',
  '+597',
  '+268',
  '+963',
  '+886',
  '+992',
  '+255',
  '+228',
  '+690',
  '+676',
  '+216',
  '+993',
  '+688',
  '+256',
  '+380',
  '+971',
  '+598',
  '+998',
  '+678',
  '+379',
  '+681',
  '+212',
  '+967',
  '+260',
  '+263',
  '+49',
  '+45',
  '+56',
  '+55',
  '+32',
  '+61',
  '+86',
  '+61',
  '+57',
  '+33',
  '+20',
  '+30',
  '+62',
  '+91',
  '+36',
  '+98',
  '+39',
  '+81',
  '+60',
  '+52',
  '+95',
  '+31',
  '+64',
  '+47',
  '+92',
  '+51',
  '+63',
  '+64',
  '+48',
  '+40',
  '+65',
  '+27',
  '+53',
  '+82',
  '+34',
  '+94',
  '+47',
  '+46',
  '+41',
  '+66',
  '+90',
  '+44',
  '+58',
  '+84',
  '+1',
  '+7',
];
