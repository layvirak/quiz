import 'package:get/get.dart';

import '../model/quiz_model/quiz_model.dart';

class QuizController extends GetxController {
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
}
