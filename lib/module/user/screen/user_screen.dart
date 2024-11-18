import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/module/user/widget/custom_menu.dart';
import 'package:ditech_crm/module/user/widget/user_info_block.dart';
import 'package:ditech_crm/utils/widget/custom_avatar.dart';
import 'package:ditech_crm/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constrants/api_service.dart';
import '../../../utils/widget/cusotm_alert_dialog.dart';
import '../../../utils/widget/custom_image_picker.dart';
import '../../../utils/widget/custom_loading.dart';

class ProfileScreen extends StatelessWidget {
  final String? name;
  final String? sex;
  const ProfileScreen({Key? key, this.name, this.sex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(
                  Injection.userController.userModel.value.fullName ?? "---"),
            ),
            body: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Gap(20),

                          //  --------------------------------------------------------------
                          //  TASK: user avatar
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          CustomAvatar(
                            width: 100,
                            height: 100,
                            imageUrl: Injection
                                .userController.userModel.value.userImage,
                            isEdit: true,
                            ontap: () {
                              customImagePicker(
                                  context,
                                  Injection.userController.userModel.value
                                      .userImage, onChange: (value) {
                                if (value.path != '') {
                                  Injection.userController.onUploadPhotos(
                                    context,
                                    file: value,
                                    docname: Injection
                                        .userController.userModel.value.name,
                                    doctype: "User",
                                  );
                                }
                              });
                            },
                          ),
                          const Gap(30),

                          //  --------------------------------------------------------------
                          //  TASK: user info
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          const UserInfoBlock(),
                          const Gap(20),

                          //  --------------------------------------------------------------
                          //  TASK: edit user
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          CustomMenu(
                            icon: const Icon(
                              Icons.border_color_outlined,
                            ),
                            title: 'Edit Information',
                            lastIcon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                            ontap: () {
                              context.push('/edit-user');
                            },
                          ),
                          const Gap(15),

                          //  --------------------------------------------------------------
                          //  TASK: change pwd
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          CustomMenu(
                            icon: const Icon(Icons.lock_outline_rounded),
                            title: 'Change Password',
                            lastIcon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                            ontap: () {
                              context.push('/change-pwd');
                            },
                          ),
                          const Gap(15),

                          //  --------------------------------------------------------------
                          //  TASK: term and conditions
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          CustomMenu(
                            icon: const Icon(Icons.article_outlined),
                            title: 'Term & Conditions',
                            lastIcon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                            ontap: () {
                              context.push('/term-condition');
                            },
                          ),

                          //  --------------------------------------------------------------
                          //  TASK: app version
                          //  Responsible By: Hoeun Pha
                          //  --------------------------------------------------------------
                          const Gap(30),
                          Text(
                            'Version ${ApiService.version}',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.black.withOpacity(0.6),
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          const Gap(5),
                          Text(
                            'Powered by DiTech',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                          ),
                          const Gap(10),
                        ],
                      ),
                    ),
                  ),

                  //***************************************************************
                  //##########--sign out--##########=>Rak
                  //***************************************************************
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 25, top: 10),
                    child: CustomButton(
                      title: 'Sign Out',
                      onPressed: () {
                        onShowAlertDialog(
                          context,
                          title: 'Sign Out',
                          description: 'Are you sure want to Sign Out?',
                          secondaryLabel: 'Yes',
                          primaryLabel: 'No',
                          primaryLabelStyle:
                              Theme.of(context).textTheme.titleMedium,
                          secondaryLabelStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(),
                          primaryButton: () {
                            Navigator.pop(context);
                          },
                          secondaryButton: () {
                            Injection.authController.signOut();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (Injection.userController.isLoadingGetUser.value)
            const CustomLoading()
        ],
      ),
    );
  }
}
