import 'package:get/get.dart';

import '../model/quiz_model/quiz_model.dart';

class QuizController extends GetxController {
  var quizType = [
    "Multiple Choice",
    "Checkbox",
    "True/False",
    "Match Answers",
  ];
  var isReload = false.obs;
  var quiz = QuizModel().obs;
}
