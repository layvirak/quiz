import 'dart:convert';

import 'package:ditech_crm/constrants/api_service.dart';
import 'package:get/get_connect.dart';
import 'package:ditech_crm/utils/helper/local_storage.dart';

import '../../constrants/injection.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  ApiBaseHelper() {
    timeout = const Duration(seconds: 90);
  }

  Map<String, String> headerDefault({
    String otherToken = '',
    bool isAuthorize = true,
  }) {
    final token =
        otherToken != '' ? otherToken : Injection.authController.token.value;
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token,
    };
  }

  String? baseurl = ApiService.baseUrl;
  Future<dynamic> onNetworkRequesting({
    required String url,
    Map<String, String>? header,
    Map<String, dynamic>? body,
    required METHODE? methode,
    required bool isAuthorize,
    String baseUrl = '',
  }) async {
    if (baseUrl != '') baseurl = baseUrl;
    final token = await LocalStorage.getStringValue(key: 'access_token');
    final fullUrl = baseurl! + url;
    Map<String, String> headerDefault = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token,
    };
    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header ?? headerDefault);
          return _returnResponse(response);
        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: headerDefault);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));
        case METHODE.delete:
          final response = await delete(fullUrl, headers: headerDefault);
          return _returnResponse(response);
        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: headerDefault);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));
        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    if (response.statusCode! <= 300) {
      var responseJson = json.decode(response.bodyString!);
      return responseJson;
    } else if (response.statusCode! == 401) {
      Injection.authController.signOut();
      return Future.error(ErrorModel(
          statusCode: response.statusCode,
          bodyString: json.decode(response.bodyString!)));
    } else {
      return Future.error(ErrorModel(
          statusCode: response.statusCode,
          bodyString: json.decode(response.bodyString!)));
    }
  }
}
