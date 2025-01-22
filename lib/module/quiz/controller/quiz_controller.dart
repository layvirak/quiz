import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/quiz/model/filter_question_mode/filter_question_mode.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
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
  var questionList = <QuestionModel>[].obs;

  var question = QuestionModel(answers: []).obs;

  var filterQuestion = FilterQuestionMode().obs;
  var questionLength = 0.obs;
  Future<void> onGetQuestion(BuildContext context) async {
    filterQuestion.value = FilterQuestionMode();
    Injection.homeController.isLoading(true);

    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Questions?fields=["name","question","question_type","disabled","visibility","number_of_used"]&limit_start=$questionLength&limit=10&filters={"name": ["like", "%${filterQuestion.value.name}%"],"question": ["like", "%${filterQuestion.value.question}%"],"subject": ["like", "%${filterQuestion.value.subject}%"],"class": ["like", "%${filterQuestion.value.classs}%"]}&order_by=modified%20desc',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        if (questionLength.value == 0) questionList.value = [];
        res['data'].map((e) {
          questionList.add(QuestionModel.fromJson(e));
        }).toList();
        questionLength.value = questionList.length;
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
    Injection.homeController.isLoading(false);
  }

  var filterQuestionList = <QuestionAnswerModel>[].obs;
  Future<void> onGetFilterQuestion(BuildContext context) async {
    isLoading(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url:
            '${ApiService.resource}Questions?limit=none&filters={"name": ["like", "%${filterQuestion.value.name}%"],"question": ["like", "%${filterQuestion.value.question}%"],"subject": ["like", "%${filterQuestion.value.subject}%"],"class": ["like", "%${filterQuestion.value.classs}%"]}',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        filterQuestionList.value = [];
        res['data'].map((e) {
          filterQuestionList.add(QuestionAnswerModel.fromJson(e));
        }).toList();

        if (ApiService.target != 'Release') {
          debugPrint(
              'get filter question: ================>>> ${questionList.length}');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'onError filter question: ===================>> ${error.bodyString}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch filter question: ===================>> $e');
      }
    }
    isLoading(false);
  }

  var isLoadingCreate = false.obs;
  var isReloadAnswer = false.obs;
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
          "disabled": questionModel.value.disabled,
          "answers": questionModel.value.answers,
        },
      ).then((res) async {
        questionLength.value = 0;
        onGetQuestion(context);
        Navigator.pop(context);
        Navigator.pop(context);
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

  var questionModel = QuestionModel(answers: []).obs;
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

  Future<void> onUpdateQuestionDetail(BuildContext context,
      {String? name}) async {
    isLoadingCreate(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.resource}Questions/$name',
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          "question": questionModel.value.question,
          "question_type": questionModel.value.questionType,
          "subject": questionModel.value.subject,
          "class": questionModel.value.classs,
          "visibility": questionModel.value.visibility,
          "disabled": questionModel.value.disabled,
        },
      ).then((res) async {
        questionLength.value = 0;
        onGetQuestionDetails(context, id: name);

        Navigator.pop(context);
        if (ApiService.target != 'Release') {
          debugPrint('update question detail: ================>>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'update question detail: ===================>> ${error.statusCode}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch update question detail: ===================>> $e');
      }
    }
    isLoadingCreate(false);
  }

  Future<void> onUpdateAnswerDetail(BuildContext context,
      {String? name}) async {
    isLoadingCreate(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
        url: '${ApiService.resource}Questions/$name',
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          "answers": questionModel.value.answers,
        },
      ).then((res) async {
        questionLength.value = 0;
        onGetQuestionDetails(context, id: name);

        Navigator.pop(context);
        if (ApiService.target != 'Release') {
          debugPrint('update Answer detail: ================>>> 200');
        }
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          debugPrint(
              'update Answer detail: ===================>> ${error.statusCode}');
        }
        CustomAlertResponse.showAlertMessage(context: context, error: error);
      });
    } catch (e) {
      if (ApiService.target != 'Release') {
        debugPrint('catch update Answer detail: ===================>> $e');
      }
    }
    isLoadingCreate(false);
  }
}
