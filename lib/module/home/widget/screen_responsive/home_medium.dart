import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../../constrants/api_service.dart';
import '../../../../constrants/app_color.dart';
import '../../../../constrants/app_logo.dart';
import '../../../../constrants/injection.dart';
import '../../../dashboard/screen/dashboard_screen.dart';
import '../../../history/screen/history_screen.dart';
import '../../../my_quiz/screen/my_quiz_screen.dart';
import '../../../question/screen/question_screen.dart';
import '../../../quiz/screen/quiz_screen.dart';
import '../../../report/screen/report_screen.dart';
import '../custom_item_drawer_bar.dart';

class HomeMedium extends StatelessWidget {
  const HomeMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            body: Stack(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 0.5,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          width: Injection.homeController.isShowMore.value
                              ? 250
                              : 70,
                          child: Column(
                            children: [
                              Image.asset(
                                AppLogo.horizontalAppLogoNoBackGround,
                                color: AppColor.primaryColor,
                                width: Injection.homeController.isShowMore.value
                                    ? 150
                                    : 70,
                                height: 120,
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            1,
                                        icon: AppImage.dashboard,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 1;
                                        },
                                        title: "Dashboard",
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            2,
                                        icon: AppImage.myQuiz,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 2;
                                        },
                                        title: "My Quiz",
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            3,
                                        icon: AppImage.quiz,
                                        title: "Quiz",
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 3;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            4,
                                        icon: AppImage.question,
                                        title: "Question",
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 4;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            5,
                                        icon: AppImage.report,
                                        title: "Report",
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 5;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            6,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.history,
                                        title: "History",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 6;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Gap(20),
                              if (Injection.homeController.isShowMore.value)
                                Text(
                                  'Version ${ApiService.version}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              const Gap(25),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 0,
                          child: IconButton(
                            onPressed: () {
                              Injection.homeController.isShowMore.value =
                                  !Injection.homeController.isShowMore.value;
                            },
                            icon: Icon(
                              Injection.homeController.isShowMore.value
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            ),
                            iconSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: (() {
                        if (Injection.homeController.selectIndex.value == 1) {
                          return const DashboardScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            2) {
                          return const MyQuizScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            3) {
                          return const QuizScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            4) {
                          return const QuestionScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            5) {
                          return const ReportScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            6) {
                          return const HistoryScreen();
                        } else {
                          return Container();
                        }
                      }()),
                      // child: GridView.count(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   padding: const EdgeInsets.all(10),
                      //   crossAxisSpacing: 15,
                      //   mainAxisSpacing: 15,
                      //   crossAxisCount: 3,
                      //   children: [
                      //     CustomItemCard(
                      //       image: AppImage.quiz,
                      //       title: "Quiz",
                      //       onPressed: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => const QuizScreen()));
                      //       },
                      //     ),
                      //     CustomItemCard(
                      //       image: AppImage.quiz,
                      //       title: "Create Quiz",
                      //       onPressed: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => const CreateQuizScreen(),
                      //             ));
                      //       },
                      //     )
                      //   ],
                      // ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
