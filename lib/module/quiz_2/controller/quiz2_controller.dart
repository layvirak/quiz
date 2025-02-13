import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/quiz_2/model/quiz_model/quiz_model.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
import '../../../utils/helper/api_base_helper.dart';
import '../../../utils/widget/custom_alert_repoonse.dart';
import '../../new_quiz/model/quiz_details/quiz_details_model.dart';
import '../model/filter_quiz_model/filter_quiz_model.dart';
import '../model/quiz_question_model/quiz_question_model.dart';

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

  //****************************************************************************
  //Description : This function is used to get the create quiz
  //Required Field : context
  //
  //Response Detail :
  //Feb 05,2025 Nith: Created
  //****************************************************************************
  var quizDetatilModel = QuizDetailsModel().obs;
  var isLoadingCreate = false.obs;
  var questionDataList = <QuizQuestionModel>[].obs;

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

  //****************************************************************************
  //Description : This function is used to get the updat quiz
  //Required Field : context
  //
  //Response Detail :
  //Feb 05,2025 Nith: Created
  //****************************************************************************
  Future<void> onUpdateQuiz(BuildContext context, String id) async {
    isLoadingCreate(true);
    try {
      await apiBaseHelper.onNetworkRequesting(
          url: '${ApiService.resource}Quiz/$id',
          methode: METHODE.update,
          isAuthorize: true,
          body: {
            'quiz_title': quizDetatilModel.value.quizTitle,
            'quiz_duration': quizDetatilModel.value.quizDuration,
            'questions': questionDataList
          }).then((response) async {
        await onGetQuizDetails(context, id).then((_) {
          Navigator.pop(context);
        });
        debugPrint("------------- update quiz");
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
  //****************************************************************************
  //Description : This function is used to get the detail quiz
  //Required Field : context
  //
  //Response Detail :
  //Feb 05,2025 Nith: Created
  //****************************************************************************

  var isLoadingDetails = false.obs;
  Future<void> onGetQuizDetails(BuildContext? context, String? id) async {
    isLoadingDetails(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
        url: '${ApiService.resource}Quiz/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((res) {
        quizDetatilModel.value = QuizDetailsModel.fromJson(res['data']);
        if (ApiService.target != 'Release') {
          debugPrint('Get quiz Details: ------------------>> 200');
        }
        isLoadingDetails(false);
      }).onError((ErrorModel error, stackTrace) {
        if (ApiService.target != 'Release') {
          isLoadingDetails(false);
        }
      });
    } catch (e) {
      isLoadingDetails(false);
      if (ApiService.target != 'Release') {
        debugPrint("catch get quiz details: ----------------->> $e");
      }
    }
    isLoadingDetails(false);
  }
}
