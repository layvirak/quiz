import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/dashboard/screen/dashboard_screen.dart';
import 'package:lomhat/module/history/screen/history_screen.dart';
import 'package:lomhat/module/home/widget/screen_responsive/custom_drawer.dart';
import 'package:lomhat/module/my_quiz/screen/my_quiz_screen.dart';
import 'package:lomhat/module/report/screen/report_screen.dart';

import '../../../../constrants/injection.dart';
import '../../../../utils/widget/custom_loading.dart';
import '../../../question/screen/question_screen.dart';
import '../../../quiz/screen/quiz_screen.dart';

class HomeSmall extends StatelessWidget {
  const HomeSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            drawer: const CustomDrawer(),
            body: (() {
              if (Injection.homeController.selectIndex.value == 1) {
                return const DashboardScreen(
                  drawer: CustomDrawer(),
                );
              } else if (Injection.homeController.selectIndex.value == 2) {
                return const MyQuizScreen(
                  drawer: CustomDrawer(),
                );
              } else if (Injection.homeController.selectIndex.value == 3) {
                return const QuizScreen(
                  drawer: CustomDrawer(),
                );
              } else if (Injection.homeController.selectIndex.value == 4) {
                return const QuestionScreen(
                  drawer: CustomDrawer(),
                );
              } else if (Injection.homeController.selectIndex.value == 5) {
                return const ReportScreen(
                  drawer: CustomDrawer(),
                );
              } else if (Injection.homeController.selectIndex.value == 6) {
                return const HistoryScreen(
                  drawer: CustomDrawer(),
                );
              } else {
                return Container();
              }
            }()),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
