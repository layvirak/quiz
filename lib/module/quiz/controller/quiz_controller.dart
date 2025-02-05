import 'package:get/get.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../../question/model/quesstion_model/question_model.dart';
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
}
