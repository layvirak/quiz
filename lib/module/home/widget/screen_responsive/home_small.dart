import 'package:ditech_crm/constrants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../constrants/api_service.dart';
import '../../../../constrants/app_logo.dart';
import '../../../../constrants/injection.dart';
import '../../../../utils/widget/custom_avatar.dart';
import '../../../../utils/widget/custom_item_card.dart';
import '../../../quiz/screen/quiz_screen.dart';
import '../custom_item_drawer_bar.dart';
import '../custom_sub_item_drawer_bar.dart';

class HomeSmall extends StatelessWidget {
  const HomeSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            actions: [
              if (ApiService.target != "release")
                IconButton(
                  onPressed: () {
                    context.push('/notification');
                  },
                  icon: const Icon(Icons.notifications_active),
                  iconSize: 27,
                ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: CustomAvatar(
                  image: Injection.profileController.userModel.value.userImage,
                  ontap: () {
                    context.push('/profile');
                  },
                  borderRadius: 1000,
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
          drawer: Drawer(
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
                  icon: AppImage.quiz,
                  onTap: () {
                    Injection.homeController.selectIndex.value = 1;
                    Navigator.pop(context);
                  },
                  title: "Dashboard",
                ),
                CustomItemDrawerBar(
                  isSelect: Injection.homeController.selectIndex.value == 2,
                  icon: AppImage.quiz,
                  title: "New Quiz",
                  onTap: () {
                    Injection.homeController.selectIndex.value = 2;
                    Navigator.pop(context);
                  },
                ),
                CustomItemDrawerBar(
                  isSelect: Injection.homeController.selectIndex.value == 3,
                  icon: AppImage.quiz,
                  title: "Edit",
                  onTap: () {
                    Injection.homeController.selectIndex.value = 3;
                  },
                ),
                CustomItemDrawerBar(
                  isSelect: Injection.homeController.selectIndex.value == 4,
                  icon: AppImage.quiz,
                  isHaveChild: true,
                  title: "Courses",
                  onTap: () {
                    Injection.homeController.selectIndex.value = 4;
                    Injection.homeController.selectSubIndex.value = 1;
                  },
                ),
                if (Injection.homeController.selectIndex.value == 4)
                  Column(
                    children: [
                      CustomSubItemDrawerBar(
                        isSelect:
                            Injection.homeController.selectSubIndex.value == 1,
                        title: "User Portal",
                        onTap: () {
                          Injection.homeController.selectSubIndex.value = 1;
                          Navigator.pop(context);
                        },
                      ),
                      CustomSubItemDrawerBar(
                        isSelect:
                            Injection.homeController.selectSubIndex.value == 2,
                        title: "Edit Courses",
                        onTap: () {
                          Injection.homeController.selectSubIndex.value = 2;
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
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
          ),
          body: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 3,
            children: [
              CustomItemCard(
                image: AppImage.quiz,
                title: "Quiz",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizScreen()));
                },
              )
            ],
          )),
    );
  }
}
