import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../../question/model/quesstion_model/question_model.dart';
import '../model/quiz2/quiz2_model.dart';

class NewQuizController extends GetxController {
  var apiBaseHelper = ApiBaseHelper();
  var quizType = [
    "Multiple Choice",
    "Checkbox",
    "True/False",
    "Match Answers",
  ];
  var isLoading = false.obs;
  var question = QuestionModel(answers: []).obs;

  //****************************************************************************
  //Description : This function is used to get the get quiz
  //Required Field : context
  //
  //Response Detail :
  //Feb 05,2025 Nith: Created
  //****************************************************************************
  var isLoadingClearVar = false.obs;
  var quizNewList = <NewQuizModel>[].obs;
  Future<void> onGetQuiz(BuildContext context) async {
    quizNewList.value = [];
    Injection.homeController.isLoading(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Quiz?fields=["name","quiz_title","quiz_duration"]&order_by=modified%20desc',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        res['data'].map((e) {
          quizNewList.add(NewQuizModel.fromJson(e));
        }).toList();

        if (ApiService.target != 'Release') {
          debugPrint('get quiz: ================>>>');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint('onError quiz: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch question: ===================>> $e');
      }
    }
    Injection.homeController.isLoading(false);
  }

}
