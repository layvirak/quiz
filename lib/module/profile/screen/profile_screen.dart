import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constrants/app_color.dart';
import '../../../../../constrants/injection.dart';
import '../../../../../utils/helper/format_convert.dart';
import '../../../../../utils/widget/cusotm_alert_dialog.dart';
import '../../../../../utils/widget/custom_button.dart';
import '../../../../../utils/widget/custom_icon_back.dart';
import '../../../../../utils/widget/custom_image_picker.dart';
import '../../../../../utils/widget/custom_loading.dart';
import '../../../constrants/api_service.dart';

import '../../../utils/widget/custom_avatar.dart';
import '../widget/custom_profile_item.dart';
import '../widget/customer_profile_card.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  final bool isBack;
  const ProfileScreen({
    Key? key,
    this.isBack = true,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.profileController.onGetUser(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                  Injection.profileController.userModel.value.fullName ??
                      'N/A'),
              automaticallyImplyLeading: false,
              leading: widget.isBack ? const CustomIconBack() : null,
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 25),
                          //***************************************************************
                          //##########--Profile Image--##########=>Rak
                          //***************************************************************
                          Center(
                            child: CustomAvatar(
                              width: 130,
                              height: 130,
                              borderRadius: 1000,
                              image: Injection
                                  .profileController.userModel.value.userImage,
                              ontap: () {
                                customImagePicker(
                                    context,
                                    Injection.profileController.userModel.value
                                        .userImage, onChange: (value) {
                                  if (value.path != '') {
                                    Injection.profileController.onUploadPhotos(
                                      context,
                                      file: value,
                                      docname: Injection.profileController
                                          .userModel.value.name,
                                      doctype: "User",
                                    );
                                  }
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          //***************************************************************
                          //##########--Information block--##########=>Rak
                          //***************************************************************
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Theme.of(context).cardColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context).focusColor,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomProfileInfoCard(
                                  label: "Gender",
                                  value: Injection
                                      .profileController.userModel.value.gender,
                                ),
                                CustomProfileInfoCard(
                                    label: "Date Of Birth",
                                    value: Injection.profileController.userModel
                                                .value.birthDate !=
                                            ''
                                        ? FormatConvert.getFormatedDate(
                                            Injection.profileController
                                                .userModel.value.birthDate)
                                        : '---'),
                                CustomProfileInfoCard(
                                  label: "Email",
                                  value: Injection
                                      .profileController.userModel.value.email,
                                ),
                                CustomProfileInfoCard(
                                  label: "Time Zone",
                                  value: Injection.profileController.userModel
                                      .value.timeZone,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          //***************************************************************
                          //##########--Edit Info block--##########=>Rak
                          //***************************************************************
                          CustomerProfileCard(
                            onTap: () {
                              context.push('/input-user-infor');
                            },
                            title: "Edit Information",
                            icon: Icons.person_outline,
                          ),
                          const SizedBox(height: 15),
                          //***************************************************************
                          //##########--change password--##########=>Rak
                          //***************************************************************
                          CustomerProfileCard(
                            onTap: () {
                              context.push("/change-password");
                            },
                            title: "Change Password",
                            icon: Icons.password,
                          ),
                          const SizedBox(height: 15),
                          //***************************************************************
                          //##########--Terms & Conditions block--##########=>Rak
                          //***************************************************************
                          if (ApiService.target != 'Release')
                            CustomerProfileCard(
                              onTap: () {
                                context.push('/term-condition');
                              },
                              title: "Term And Condition",
                              icon: Icons.article_outlined,
                            ),

                          const SizedBox(height: 30),
                          //***************************************************************
                          //##########--version block--##########=>Rak
                          //***************************************************************
                          const Center(
                            child: Text('Version ${ApiService.version}'),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
                //***************************************************************
                //##########--sign out--##########=>Rak
                //***************************************************************
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 25),
                  child: CustomButton(
                    onPressed: () {
                      onShowAlertDialog(
                        context,
                        title: "Are You Sure Want To Sign Out",
                        description: '',
                        secondaryLabel: "yes",
                        primaryLabel: "No",
                        primaryLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        secondaryLabelStyle: TextStyle(
                          color: !kIsWeb && Platform.isIOS
                              ? AppColor.primaryColor
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        primaryButton: () {
                          Navigator.pop(context);
                        },
                        secondaryButton: () {
                          Injection.profileController.isLoadingGetUser.value =
                              true;
                          Navigator.pop(context);

                          Injection.authController.signOut();
                        },
                      );
                    },
                    title: "Sign Out",
                  ),
                ),
              ],
            ),
          ),
          if (Injection.profileController.isLoadingGetUser.value)
            const CustomLoading()
        ],
      ),
    );
  }
}
