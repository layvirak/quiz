import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/utils/helper/api_base_helper.dart';
import 'package:ditech_crm/utils/widget/custom_alert_repoonse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../config/go_route/routes.dart';
import '../../../constrants/api_service.dart';
import '../../../module/profile/model/user_model/user_model.dart';
import '../../../utils/helper/local_storage.dart';

class AuthController extends GetxController {
  var apiBaseHelper = ApiBaseHelper();
  var token = "".obs;
  var pathRoute = ''.obs;
  //****************************************************************************
  //Description : this function is used to login to the app
  //Required Field : context
  //
  //Response Detail :
  //July 11,2024 HOEUN PHA: Created
  //****************************************************************************
  var isLoadingLogIn = false.obs;
  var userName = ''.obs;
  var isUserNameNull = false.obs;
  var password = ''.obs;
  var ispasswordNull = false.obs;
  var validatePassword = false.obs;

  Future<void> onLogIn(BuildContext context) async {
    isLoadingLogIn(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.method}ditech_api.auth.login',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          'username': userName.value,
          'password': password.value,
        },
      ).then((response) async {
        debugPrint('Log in => 200');
        clearLoginData();
        if (ApiService.target != 'Release') {
          debugPrint('log in => 200 => ${response['message']['auth']}');
        }
        LocalStorage.storeData(
            key: 'access_token', value: response['message']['auth']);
        await Injection.profileController.onGetUser(context).then((value) {
          if (value != UserModel()) {
            context.go('/home');
          }
        });
      }).onError((ErrorModel error, stackTrace) {
        isLoadingLogIn(false);
        password.value = '';
        CustomAlertResponse.showAlertMessage(context: context, error: error);
        if (ApiService.target != 'Release') {
          debugPrint(
              'onError log in: ------------------->>> ${error.statusCode}');
        }
      });
    } catch (e) {
      password.value = '';
      isLoadingLogIn(false);
      if (ApiService.target != 'Release') {
        debugPrint('catch log in:------------------------->>> $e');
      }
    }
    isLoadingLogIn(false);
  }

  //***************************************************************
  //##########--clear Login Data--##########=>Rak
  //***************************************************************
  clearLoginData() {
    userName.value = '';
    isUserNameNull.value = false;
    password.value = '';
    ispasswordNull.value = false;
  }

  //***************************************************************
  //##########--sign out--##########=>Rak
  //***************************************************************
  signOut() {
    router.go('/login');
    LocalStorage.removeKey(key: "access_token");
  }
}
