import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../constrants/api_service.dart';
import '../../../../constrants/app_color.dart';
import '../../../../constrants/app_logo.dart';
import '../../../../constrants/injection.dart';
import '../../../new_quiz/screen/quiz_screen.dart';
import '../custom_item_drawer_bar.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        children: [
          Image.asset(
            AppLogo.horizontalAppLogoNoBackGround,
            color: AppColor.primaryColor,
            width: 150,
            height: 150,
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 1,
            icon: AppImage.dashboard,
            onTap: () {
              Injection.homeController.selectIndex.value = 1;
              Navigator.pop(context);
            },
            title: "Dashboard",
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 2,
            icon: AppImage.myQuiz,
            onTap: () {
              Injection.homeController.selectIndex.value = 2;
              Navigator.pop(context);
            },
            title: "My Quiz",
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 3,
            icon: AppImage.quiz,
            title: "Quiz",
            onTap: () {
              Injection.homeController.selectIndex.value = 3;
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen(),
                  ));
            },
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 4,
            icon: AppImage.question,
            title: "Question",
            onTap: () {
              Injection.homeController.selectIndex.value = 4;
              Navigator.pop(context);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const CreateQuizScreen(),
              //     ));
            },
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 5,
            icon: AppImage.report,
            title: "Report",
            onTap: () {
              Injection.homeController.selectIndex.value = 5;
              Navigator.pop(context);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const QuestionScreen(),
              //     ));
              // Injection.homeController.selectIndex.value = 3;
            },
          ),
          CustomItemDrawerBar(
            isSelect: Injection.homeController.selectIndex.value == 6,
            icon: AppImage.history,
            title: "History",
            onTap: () {
              Injection.homeController.selectIndex.value = 6;
              Navigator.pop(context);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const QuestionScreen(),
              //     ));
              // Injection.homeController.selectIndex.value = 3;
            },
          ),
          //***************************************************************
          //##########--sub tap--##########=>Rak
          //***************************************************************
          // CustomItemDrawerBar(
          //   isSelect: Injection.homeController.selectIndex.value == 4,
          //   icon: AppImage.quiz,
          //   isHaveChild: true,
          //   title: "Courses",
          //   onTap: () {
          //     Injection.homeController.selectIndex.value = 4;
          //     Injection.homeController.selectSubIndex.value = 1;
          //   },
          // ),
          // if (Injection.homeController.selectIndex.value == 4)
          //   Column(
          //     children: [
          //       CustomSubItemDrawerBar(
          //         isSelect:
          //             Injection.homeController.selectSubIndex.value == 1,
          //         title: "User Portal",
          //         onTap: () {
          //           Injection.homeController.selectSubIndex.value = 1;
          //           Navigator.pop(context);
          //         },
          //       ),
          //       CustomSubItemDrawerBar(
          //         isSelect:
          //             Injection.homeController.selectSubIndex.value == 2,
          //         title: "Edit Courses",
          //         onTap: () {
          //           Injection.homeController.selectSubIndex.value = 2;
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ],
          //   ),
          const Spacer(),
          Text(
            'Version ${ApiService.version}',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
