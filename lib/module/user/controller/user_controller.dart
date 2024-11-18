import 'dart:convert';
import 'dart:io';

import 'package:ditech_crm/constrants/api_service.dart';
import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/module/user/model/user_model/user_model.dart';
import 'package:ditech_crm/utils/helper/api_base_helper.dart';
import 'package:ditech_crm/utils/widget/custom_alert_repoonse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../utils/helper/format_convert.dart';
import '../../../utils/helper/local_storage.dart';
import '../model/gender_model/gender_model.dart';

class UserController extends GetxController {
  var apiBaseHelper = ApiBaseHelper();

  //***************************************************************
  //This function is use for get user information
  //Required Field : context
  //
  //Response Detail :
  //15-07-2024 Lay Virak: Created
  //***************************************************************
  var userModel = UserModel().obs;
  var isLoadingGetUser = false.obs;
  Future<UserModel> onGetUser(BuildContext context) async {
    isLoadingGetUser(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.midMethod}ditech_api.auth.me',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        userModel.value = UserModel.fromJson(response['message']);
        if (ApiService.target != 'realease') {
          debugPrint('get user :=> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        isLoadingGetUser(false);
        CustomAlertReponse.showAlertMessage(context: context, error: error);
        if (ApiService.target != 'Release') {
          debugPrint('Error get user :=> ${error.statusCode}');
        }
      });
    } catch (e) {
      isLoadingGetUser(false);
      if (ApiService.target != 'Release') {
        debugPrint('catch get user :=> $e');
      }
    }
    isLoadingGetUser(false);
    return userModel.value;
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
      String url = '${ApiService.baseUrl}${ApiService.midMethod}upload_file';
      // final token = await LocalStorage.getStringValue(key: 'access_token');
      file = await FormatConvert.rotateImage(file!);
      var headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': Injection.authController.token.value,
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
        await response.stream.bytesToString().then((value) async {
          if (response.statusCode == 200) {
            String path = jsonDecode(value)["message"]["file_url"];
            await onUpdatePhotos(
              context,
              id: docname,
              doctype: doctype,
              file: path,
            );
          } else {
            CustomAlertReponse.showAlertMessage(
              context: context,
              error: ErrorModel(
                statusCode: response.statusCode,
                bodyString: jsonDecode(value),
              ),
            );
          }
        });
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
        url: '${ApiService.midResource}$doctype/$id',
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          "user_image": file,
        },
      ).then((value) async {
        debugPrint("onUpdatePhotos => 200");
        await onGetUser(context);

        isLoadingGetUser(false);
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'release') {
          debugPrint("error onUpdatePhotos => ${error.statusCode} ");
        }
        CustomAlertReponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'release') {
        debugPrint("catch UpdatePhotos => $e");
      }
    }
    isLoadingGetUser(false);
  }

  //***************************************************************
  //This function is use for check user password
  //Required Field : context
  //
  //Response Detail :
  //03-07-2024 Lay Virak: Created
  //***************************************************************
  var newPassword = ''.obs;
  var oldPassword = ''.obs;
  var conformPassword = ''.obs;
  var validatePassword = false.obs;
  var isPasswordMatch = false.obs;
  var isOldPWNill = false.obs;
  var isLoadingisLoadingChangePW = false.obs;
  Future<void> onChangePassword(BuildContext context) async {
    isLoadingisLoadingChangePW(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.midMethod}ditech_api.auth.change_password',
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          'old_password': oldPassword.value,
          'new_password': newPassword.value,
        },
      ).then((value) async {
        if (ApiService.target != 'release') {
          debugPrint('Change Password => 200 =:> ${value['message']['auth']}');
        }
        LocalStorage.storeData(
            key: 'access_token', value: value['message']['auth']);

        await onGetUser(context).then((value) {
          isLoadingisLoadingChangePW(false);
          Navigator.pop(context);
        });
        onclearDataChangePassword();
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'release') {
          debugPrint('Change Password => ${error.statusCode}');
        }

        CustomAlertReponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'release') {
        debugPrint('catch Change Password => $e');
      }
    }
    isLoadingisLoadingChangePW(false);
  }

  //***************************************************************
  //use for clear data from field change password screen
  //***************************************************************
  onclearDataChangePassword() {
    newPassword = ''.obs;
    oldPassword = ''.obs;
    conformPassword = ''.obs;
    validatePassword = false.obs;
    isPasswordMatch = false.obs;
    isOldPWNill = false.obs;
  }

  //***************************************************************
  //This function is user for get gender
  //Required Field : context
  //Response Detail :
  //15-07-2024 Lay Virak: Created
  //***************************************************************
  var genderList = <GenderModel>[].obs;
  var isLoadingGender = false.obs;
  Future<List<GenderModel>> onGetGender(BuildContext context) async {
    isLoadingGender(true);
    genderList.value = [];
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.midResource}Gender',
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

        if (ApiService.target != 'realease') {
          debugPrint('get Gender:------------------->> 200');
        }
        isLoadingGender(false);
      }).onError((ErrorModel error, stackTrace) {
        isLoadingGender(false);
        if (ApiService.target != 'realease') {
          debugPrint(
              'onError get Gender: --------------->> ${error.bodyString}');
        }
      });
    } catch (e) {
      isLoadingGender(false);
      if (ApiService.target != 'realease') {
        debugPrint('catch get Gender: --------------->> $e');
      }
    }
    return genderList;
  }

  //***************************************************************
  //This function is use for edit user information
  //Required Field : context
  //
  //Response Detail :
  //15-07-2024 Lay Virak: Created
  //***************************************************************
  var isFirstNameNull = false.obs;
  var isLastNameNull = false.obs;
  var isLoadingInputUserInfor = false.obs;
  var updateUserModel = UserModel().obs;
  Future<void> onUpdateUserInformation(BuildContext context) async {
    isLoadingInputUserInfor(true);
    apiBaseHelper.onNetworkRequesting(
      url: '${ApiService.midResource}User/${updateUserModel.value.name}',
      methode: METHODE.update,
      isAuthorize: true,
      body: {
        "first_name": updateUserModel.value.firstName,
        "last_name": updateUserModel.value.lastName,
        "gender": updateUserModel.value.gender,
        "birth_date": updateUserModel.value.birthDate
      },
    ).then((value) {
      if (ApiService.target != 'realease') {
        debugPrint('update user => 200');
      }
      onGetUser(context).then((value) async {
        if (value != UserModel()) {
          Navigator.pop(context);
        }
        isLoadingInputUserInfor(false);
      });
    }).onError((ErrorModel error, stackTrace) {
      isLoadingInputUserInfor(false);
      if (ApiService.target != 'realease') {
        debugPrint('update user => ${error.statusCode}');
      }
      CustomAlertReponse.showAlertMessage(
        context: context,
        error: error,
      );
    });
  }
}
