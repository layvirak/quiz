import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/quiz_2/model/quiz_model/quiz_model.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../model/filter_quiz_model/filter_quiz_model.dart';

class Quiz2Controller extends GetxController {
  var apiBaseHelper = ApiBaseHelper();

  var filterQuizModel = FilterQuizModel().obs;
  var quizList = <QuizModel>[].obs;
  var quizLength = 0.obs;
  Future<void> onGetQuiz(BuildContext context) async {
    Injection.homeController.isLoading(true);

    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Quiz?fields=["name","quiz_duration","quiz_title"]&limit_start=$quizLength&limit=10&filters={"name": ["like", "%${filterQuizModel.value.name}%"],"quiz_title": ["like", "%${filterQuizModel.value.title}%"]}&order_by=modified%20desc',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        if (quizLength.value == 0) quizList.value = [];
        res['data'].map((e) {
          quizList.add(QuizModel.fromJson(e));
        }).toList();
        quizLength.value = quizList.length;
        if (ApiService.target != 'Release') {
          debugPrint('get quiz: ================>>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint('onError quiz: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch quiz: ===================>> $e');
      }
    }
    Injection.homeController.isLoading(false);
  }

  var filterQuizList = <QuizModel>[].obs;
  Future<void> onGetFilterQuiz(BuildContext context) async {
    Injection.homeController.isLoading(true);

    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Quiz?limit=none&filters={"name": ["like", "%${filterQuizModel.value.name}%"],"quiz_title": ["like", "%${filterQuizModel.value.title}%"]}&order_by=modified%20desc',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        filterQuizList.value = [];
        res['data'].map((e) {
          filterQuizList.add(QuizModel.fromJson(e));
        }).toList();

        if (ApiService.target != 'Release') {
          debugPrint('get filter quiz: ================>>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'onError filter quiz: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch filter quiz: ===================>> $e');
      }
    }
    Injection.homeController.isLoading(false);
  }
}
