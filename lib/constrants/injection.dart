import 'package:lomhat/cores/auth/controller/auth_controller.dart';
import 'package:lomhat/module/profile/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:lomhat/cores/splash_screen/controller/splash_screen_controller.dart';
import 'package:lomhat/cores/walk_through/controller/walk_through_controller.dart';
import 'package:lomhat/module/question/controller/question_controller.dart';
import 'package:lomhat/module/quiz_2/controller/quiz2_controller.dart';
import '../module/home/controller/home_controller.dart';
import '../module/new_quiz/controller/new_quiz_controller.dart';
import '../module/quiz/controller/quiz_controller.dart';
import '../utils/controller/option_controller.dart';

//this class for collect all controller to store on the one place
class Injection {
  static final homeController = Get.put(HomeController());
  static final splashScreenController = Get.put(SplashScreenController());
  static final walkThroughController = Get.put(WalkThroughController());
  static final profileController = Get.put(ProfileController());
  static final authController = Get.put(AuthController());
  static final quizController = Get.put(QuizController());
  static final optionController = Get.put(OptionController());
  static final questionController = Get.put(QuestionController());
  static final newQuizController = Get.put(NewQuizController());
  static final quiz2Controller = Get.put(Quiz2Controller());
}
