import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constrants/api_service.dart';
import '../helper/api_base_helper.dart';
import '../model/option_model/option_model.dart';

class OptionController extends GetxController {
  var apiBaseHeloper = ApiBaseHelper();

  //***************************************************************
  //##########--subject option--##########=>Rak
  //***************************************************************
  var subjectGroupOption = <OptionModel>[].obs;
  Future<void> onGetSubjectOption() async {
    subjectGroupOption.value = [];
    try {
      await apiBaseHeloper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Subjects?fields=["name","name_in_khmer"]&limit=none',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        value['data'].map((e) {
          subjectGroupOption.add(
            OptionModel(
              description: e['name_in_khmer'] ?? '',
              name: e['name'],
            ),
          );
        }).toList();
        if (ApiService.target != "Release") {
          debugPrint("get subject option => 200");
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != "Release") {
          debugPrint("get subject option error=> ${error.statusCode}");
        }
      });
    } catch (e) {
      if (ApiService.target != "Release") {
        debugPrint("catch subject option => $e");
      }
    }
  }

  //***************************************************************
  //##########--Classes option--##########=>Rak
  //***************************************************************
  var classesGroupOpction = <OptionModel>[].obs;
  Future<void> onGetClassesOption() async {
    classesGroupOpction.value = [];
    try {
      await apiBaseHeloper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Classes?fields=["name","name_in_khmer"]&limit=none',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        value['data'].map((e) {
          classesGroupOpction.add(
            OptionModel(
              description: e['name_in_khmer'] ?? '',
              name: e['name'],
            ),
          );
        }).toList();
        if (ApiService.target != "Release") {
          debugPrint("get Classes option => 200");
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != "Release") {
          debugPrint("get Classes option error=> ${error.statusCode}");
        }
      });
    } catch (e) {
      if (ApiService.target != "Release") {
        debugPrint("catch Classes option => $e");
      }
    }
  }
}
