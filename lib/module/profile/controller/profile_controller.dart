// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../constrants/api_service.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/helper/format_convert.dart';
import '../../../utils/helper/local_storage.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../model/gender_model/gender_model.dart';
import '../model/user_model/user_model.dart';

class ProfileController extends GetxController {
  var apiBaseHelper = ApiBaseHelper();
  var isDark = false.obs;

//****************************************************************************
//Description: This function is used to get the user's profile
//Required Field :
//
//Response Detail :
//June 07, 2024 HOEUN PHA: Created
//****************************************************************************
  var userModel = UserModel().obs;
  var isLoadingGetUser = false.obs;
  var status = 0.obs;
  Future<UserModel> onGetUser(BuildContext context) async {
    isLoadingGetUser(true);
    userModel.value = UserModel();
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.method}ditech_api.auth.me',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        userModel.value = UserModel.fromJson(value['message']);
        if (ApiService.target != 'release') {
          debugPrint('get user:------------------->> 200');
        }

        isLoadingGetUser(false);
        status.value = 200;
      }).onError((ErrorModel error, stackTrace) {
        status.value = error.statusCode!;
        isLoadingGetUser(false);
        if (ApiService.target != 'release') {
          debugPrint('onError get user: --------------->> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(
          context: context,
          error: error,
        );
      });
    } catch (e) {
      isLoadingGetUser(false);
      if (ApiService.target != 'release') {
        debugPrint('catch get user: --------------->> $e');
      }
    }
    return userModel.value;
  }

  //update user infoamtion**********************************
  var updateUserModel = UserModel().obs;
  var isFirstNameNull = false.obs;
  var isLastNameNull = false.obs;
  var isLoadingInputUserInfor = false.obs;
  Future<void> onUpdateUserInformation(BuildContext context) async {
    isLoadingInputUserInfor(true);
    apiBaseHelper.onNetworkRequesting(
      url: '${ApiService.resource}User/${updateUserModel.value.name}',
      methode: METHODE.update,
      isAuthorize: true,
      body: {
        "first_name": updateUserModel.value.firstName,
        "last_name": updateUserModel.value.lastName,
        "gender": updateUserModel.value.gender,
        "birth_date": updateUserModel.value.birthDate
      },
    ).then((value) {
      if (ApiService.target != 'release') {
        debugPrint('update user => 200');
      }
      onGetUser(context).then((value) {
        if (status.value == 200) {
          Navigator.pop(context);
        }
        isLoadingInputUserInfor(false);
      });
    }).onError((ErrorModel error, stackTrace) {
      isLoadingInputUserInfor(false);
      if (ApiService.target != 'release') {
        debugPrint('update user => ${error.statusCode}');
      }
      CustomAlertResponse.showAlertMessage(
        context: context,
        error: error,
      );
    });
  }

  // void onChangedThememode(bool isDark) {
  //   if (isDark) {
  //     Get.changeTheme(darkTheme());
  //   } else {
  //     Get.changeTheme(lightTheme());
  //   }
  //   update();
  // }

//****************************************************************************
//Description: This function is used to get the user's profile
//Required Field :
//
//Response Detail :
//June 07, 2024 HOEUN PHA: Created
//****************************************************************************

  var genderList = <GenderModel>[].obs;
  var isLoadingGender = false.obs;
  Future<List<GenderModel>> onGetGender(BuildContext context) async {
    isLoadingGender(true);
    genderList.value = [];
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.resource}Gender',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        value['data']
            .map(
              (e) => genderList.add(
                GenderModel.fromJson(e),
              ),
            )
            .toList();

        if (ApiService.target != 'release') {
          debugPrint('get Gender:------------------->> 200');
        }
        isLoadingGender(false);
      }).onError((ErrorModel error, stackTrace) {
        isLoadingGender(false);
        if (ApiService.target != 'release') {
          debugPrint(
              'onError get Gender: --------------->> ${error.bodyString}');
        }
      });
    } catch (e) {
      isLoadingGender(false);
      if (ApiService.target != 'release') {
        debugPrint('catch get Gender: --------------->> $e');
      }
    }
    return genderList;
  }

//****************************************************************************
//Date Created, This Function is for UploadPhotos User
//Required Field : .....,....
//
//Response Detail :
//09/07/2024 Task_ID Yim Sovandara: Created
//****************************************************************************
  Future<int> onUploadPhotos(
    BuildContext context, {
    String? doctype,
    String? docname,
    File? file,
  }) async {
    int status = 0;
    isLoadingGetUser(true);
    try {
      String url = '${ApiService.baseUrl}${ApiService.method}upload_file';
      final token = await LocalStorage.getStringValue(key: 'access_token');
      file = await FormatConvert.rotateImage(file!);
      var headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': token,
      };
      http.MultipartRequest request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      request.headers.addAll(
        headers,
      );
      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path,
        ),
      );
      request.fields.addAll({
        "is_private": "0",
        "doctype": doctype!,
        "docname": docname!,
      });
      await request.send().then((response) async {
        status = response.statusCode;
        debugPrint("upload_file => ${response.statusCode}");
        final respString = await response.stream.bytesToString();
        if (response.statusCode == 200) {
          String path = jsonDecode(respString)["message"]["file_url"];
          await onUpdatePhotos(
            context,
            id: docname,
            doctype: doctype,
            file: path,
          );
        } else {
          CustomAlertResponse.showAlertMessage(
            context: context,
            error: ErrorModel(
              statusCode: response.statusCode,
              bodyString: jsonDecode(respString),
            ),
          );
        }
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    isLoadingGetUser(false);
    return status;
  }

  //****************************************************************************
  //Date Created, This Function is For UpdateUserPhoto
  //Required Field : .....,....
  //
  //Response Detail :
  //09/07/2024 Task_ID Yim Sovandara: Created
  //****************************************************************************
  Future<void> onUpdatePhotos(
    BuildContext context, {
    String? id,
    String? doctype,
    String? file,
  }) async {
    isLoadingGetUser(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.resource}$doctype/$id',
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          "user_image": file,
        },
      ).then((value) async {
        debugPrint("onUpdatePhotos successfully=======================>200");
        await onGetUser(context);

        isLoadingGetUser(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint("onUpdatePhotos=>${error.statusCode}================");

        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      debugPrint("$e");
    }
    isLoadingGetUser(false);
  }

  //****************************************************************************
  //##########--Change-Password--##########=>Dara
  //****************************************************************************
  var newPassword = ''.obs;
  var oldPassword = ''.obs;
  var conformPassword = ''.obs;
  var validatePassword = false.obs;
  var isPasswordMatch = false.obs;
  var isOldPWNill = false.obs;
  var isLoadingisLoadingChangePW = false.obs;
  Future<void> onChangePassword(BuildContext context) async {
    isLoadingisLoadingChangePW(true);
    await apiBaseHelper
        .onNetworkRequesting(
            url: '${ApiService.method}ditech_api.auth.change_password',
            methode: METHODE.update,
            isAuthorize: true,
            body: {
              'old_password': oldPassword.value,
              'new_password': newPassword.value,
            },
            isRouteToLoginWhen401or403: false)
        .then((value) {
      debugPrint('Change Password =>200=:>${value['message']['auth']}');
      LocalStorage.storeData(
          key: 'access_token', value: value['message']['auth']);

      onGetUser(context).then((value) {
        isLoadingisLoadingChangePW(false);
        Navigator.pop(context);
      });
      onclearDataChangePassword();
    }).onError((ErrorModel error, stackTrace) {
      isLoadingisLoadingChangePW(false);
      debugPrint('Change-Password :${error.statusCode} ${error.statusCode}');
      CustomAlertResponse.showAlertMessage(context: context, error: error);
    });
  }

  onclearDataChangePassword() {
    newPassword = ''.obs;
    oldPassword = ''.obs;
    conformPassword = ''.obs;
    validatePassword = false.obs;
    isPasswordMatch = false.obs;
    isOldPWNill = false.obs;
  }
}
