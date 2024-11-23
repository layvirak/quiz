import 'package:ditech_crm/cores/auth/controller/auth_controller.dart';
import 'package:ditech_crm/module/profile/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:ditech_crm/cores/splash_screen/controller/splash_screen_controller.dart';
import 'package:ditech_crm/cores/walk_through/controller/walk_through_controller.dart';
import '../module/home/controller/home_controller.dart';
import '../module/quiz/controller/quiz_controller.dart';

//this class for collect all controller to store on the one place
class Injection {
  static final homeController = Get.put(HomeController());
  static final splashScreenController = Get.put(SplashScreenController());
  static final walkThroughController = Get.put(WalkThroughController());
  static final profileController = Get.put(ProfileController());
  static final authController = Get.put(AuthController());
  static final quizController = Get.put(QuizController());
}
