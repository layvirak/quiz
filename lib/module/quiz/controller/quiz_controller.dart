import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/quiz/model/new_quiz_model/quiz_details/quiz_details_model.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../../question/model/quesstion_model/question_model.dart';
import '../model/create_question/create_question.dart';
import '../model/new_quiz_model/quiz2/quiz2_model.dart';
import '../model/quiz_model/quiz_model.dart';

class QuizController extends GetxController {
  var apiBaseHelper = ApiBaseHelper();
  var quizType = [
    "Multiple Choice",
    "Checkbox",
    "True/False",
    "Match Answers",
  ];
  var isLoading = false.obs;
  var isReloadMain = false.obs;
  var isReloadSub = false.obs;
  var quiz = QuizModel(items: []).obs;
  var quizList = <QuizModel>[].obs;
  var questionList = <QuestionModel>[].obs;
  var question = QuestionModel(answers: []).obs;

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

  var quizDetatilModel = QuizDetailsModel().obs;
  var isLoadingCreate = false.obs;
  var questionDataList = <CreateQuestionModel>[].obs;

  Future<void> onCreateQuiz(
    BuildContext context,
  ) async {
    isLoadingCreate(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
          url: '${ApiService.resource}Quiz',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            'quiz_title': quizDetatilModel.value.quizTitle,
            'quiz_duration': quizDetatilModel.value.quizDuration,
            'questions': questionDataList
          }).then((response) async {
        // length.value = 0;
        await onGetQuiz(context).then((_) {
          Navigator.pop(context);
        });
        debugPrint("------------- create quiz");
        isLoadingCreate(false);
        if (ApiService.target != "release") {
          debugPrint("create quiz =>200   ");
        }
      }).onError((ErrorModel error, stackTrace) {
        isLoadingCreate(false);
        debugPrint("error create quiz =>${error.bodyString}");
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != "release") {
        debugPrint("Catch=======>$e");
      }
    }
    isLoadingCreate(false);
  }
}
