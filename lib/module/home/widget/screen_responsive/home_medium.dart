import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/classes/screen/class_screen.dart';
import 'package:lomhat/module/school/screen/school_screen.dart';
import 'package:lomhat/module/subject/screen/subject_screen.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../../constrants/api_service.dart';
import '../../../../constrants/app_color.dart';
import '../../../../constrants/app_logo.dart';
import '../../../../constrants/injection.dart';
import '../../../quiz/screen/question/question_screen.dart';
import '../custom_item_drawer_bar.dart';
import '../custom_sub_item_drawer_bar.dart';

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
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.quiz,
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
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.quiz,
                                        title: "Quiz",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 2;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            3,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.question,
                                        title: "Question",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 3;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            5,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.classes,
                                        title: "Classes",
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
                                        icon: AppImage.subject,
                                        title: "Subject",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 6;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            7,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.school,
                                        title: "School",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 7;
                                        },
                                      ),
                                      CustomItemDrawerBar(
                                        isSelect: Injection.homeController
                                                .selectIndex.value ==
                                            4,
                                        isShowMore: Injection
                                            .homeController.isShowMore.value,
                                        icon: AppImage.quiz,
                                        isHaveChild: true,
                                        title: "Courses",
                                        onTap: () {
                                          Injection.homeController.selectIndex
                                              .value = 4;
                                          Injection.homeController
                                              .selectSubIndex.value = 1;
                                        },
                                      ),
                                      if (Injection.homeController.selectIndex
                                              .value ==
                                          4)
                                        Column(
                                          children: [
                                            CustomSubItemDrawerBar(
                                              isSelect: Injection.homeController
                                                      .selectSubIndex.value ==
                                                  1,
                                              isShowMore: Injection
                                                  .homeController
                                                  .isShowMore
                                                  .value,
                                              title: "User Portal",
                                              onTap: () {
                                                Injection.homeController
                                                    .selectSubIndex.value = 1;
                                              },
                                            ),
                                            CustomSubItemDrawerBar(
                                              isSelect: Injection.homeController
                                                      .selectSubIndex.value ==
                                                  2,
                                              isShowMore: Injection
                                                  .homeController
                                                  .isShowMore
                                                  .value,
                                              title: "Edit Courses",
                                              onTap: () {
                                                Injection.homeController
                                                    .selectSubIndex.value = 2;
                                              },
                                            ),
                                          ],
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
                        if (Injection.homeController.selectIndex.value == 3) {
                          return const QuestionScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            5) {
                          return const ClassScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            6) {
                          return const SubjectScreen();
                        } else if (Injection.homeController.selectIndex.value ==
                            7) {
                          return const SchoolScreen();
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
                // Positioned(
                //   right: 30,
                //   top: 30,
                //   child: CustomAvatar(
                //     image:
                //         '${ApiService.baseUrl}${Injection.profileController.userModel.value.userImage}',
                //     defaultProfile: true,
                //     ontap: () {
                //       context.push('/profile');
                //     },
                //     borderRadius: 1000,
                //     width: 50,
                //     height: 50,
                //   ),
                // ),
              ],
            ),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
