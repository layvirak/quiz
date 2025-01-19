import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constrants/api_service.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../model/quesstion_model/question_answer_model.dart';
import '../model/question_model/question_model.dart';
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
  var questionList = <QuestionAnswerModel>[].obs;

  var question = QuestionModel(answers: []).obs;

  Future<void> onGetQuestion(BuildContext context) async {
    isLoading(true);
    questionList.value = [];

    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Questions?fields=["name","question","question_type","disabled","visibility","number_of_used"]',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        res['data'].map((e) {
          questionList.add(QuestionAnswerModel.fromJson(e));
        }).toList();

        if (ApiService.target != 'Release') {
          debugPrint(
              'get question: ================>>> ${questionList.length}');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'onError question: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch question: ===================>> $e');
      }
    }
    isLoading(false);
  }

  var isLoadingCreate = false.obs;
  Future<void> onCreateQuestion(BuildContext context) async {
    isLoadingCreate(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.resource}Questions',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "question": questionModel.value.question,
          "question_type": questionModel.value.questionType,
          "subject": questionModel.value.subject,
          "class": questionModel.value.classs,
          "visibility": questionModel.value.visibility,
          // "answers": questionModel.value.answers
        },
      ).then((res) async {
        if (ApiService.target != 'Release') {
          debugPrint('create question: ================>>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'create question: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch create question: ===================>> $e');
      }
    }
    isLoadingCreate(false);
  }

  var questionModel = QuestionModel().obs;
  var isLoadingDetail = false.obs;
  Future<QuestionModel> onGetQuestionDetails(BuildContext? context,
      {String? id}) async {
    isLoadingDetail(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.resource}Questions/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) async {
        questionModel.value = QuestionModel.fromJson(res['data']);

        if (ApiService.target != 'Release') {
          debugPrint('Get question detail: ------------------>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {}
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint("catch get question detail : ----------------->> $e");
      }
    }
    isLoadingDetail(false);
    return questionModel.value;
  }
}
