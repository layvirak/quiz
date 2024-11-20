import 'package:ditech_crm/constrants/app_color.dart';
import 'package:ditech_crm/utils/widget/custom_button.dart';
import 'package:ditech_crm/utils/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../constrants/app_logo.dart';
import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_loading.dart';
import '../../../utils/widget/screen_responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenResponsive(
      largeScreen: mediumScreen(context),
      mediumScreen: mediumScreen(context),
      smallScreen: smallScreen(context),
    );
  }

  Widget smallScreen(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: SafeArea(
                  bottom: false,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppLogo.horizontalAppLogoNoBackGround,
                          color: AppColor.primaryColor,
                          width: 200,
                          height: 200,
                        ),
                        const Gap(20),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomTextField(
                            labelText: "Username",
                            hintText: "Enter username",
                            isRequired: true,
                            onChange: (value) {
                              Injection.authController.userName.value = value;
                              Injection.authController.isUserNameNull.value =
                                  false;
                            },
                            isValidate:
                                Injection.authController.isUserNameNull.value,
                            validateText: "Please input your username",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: CustomTextField(
                            labelText: "Password",
                            hintText: "Enter password",
                            isObscureText: true,
                            controller: controller,
                            isRequired: true,
                            isValidate:
                                Injection.authController.validatePassword.value,
                            validateText: "Please input your password",
                            onChange: (value) {
                              Injection.authController.password.value = value;
                              Injection.authController.validatePassword.value =
                                  false;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                          ),
                          child: CustomButton(
                            title: "Log IN",
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              // validate phone
                              if (Injection.authController.userName.value !=
                                  '') {
                                Injection.authController.isUserNameNull(false);
                              } else {
                                Injection.authController.isUserNameNull(true);
                              }
                              //validate PW
                              if (Injection.authController.password.value ==
                                  '') {
                                Injection.authController.validatePassword
                                    .value = true;
                              } else {
                                Injection.authController.validatePassword
                                    .value = false;
                              }
                              //LOG IN
                              if (!Injection
                                      .authController.validatePassword.value &&
                                  !Injection
                                      .authController.isUserNameNull.value) {
                                Injection.authController
                                    .onLogIn(context)
                                    .then((value) => controller.clear());
                              }
                            },
                          ),
                        ),
                        const Gap(25),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (Injection.authController.isLoadingLogIn.value)
            const CustomLoading(),
        ],
      ),
    );
  }

  Widget mediumScreen(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Container(
                    width: 450,
                    height: 550,
                    margin: const EdgeInsets.only(top: 100, bottom: 50),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 0.5,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppLogo.horizontalAppLogoNoBackGround,
                              color: AppColor.primaryColor,
                              width: 150,
                              height: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomTextField(
                                labelText: "Username",
                                hintText: "Enter username",
                                isRequired: true,
                                onChange: (value) {
                                  Injection.authController.userName.value =
                                      value;
                                  Injection.authController.isUserNameNull
                                      .value = false;
                                },
                                isValidate: Injection
                                    .authController.isUserNameNull.value,
                                validateText: "Please input your username",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: CustomTextField(
                                labelText: "Password",
                                hintText: "Enter password",
                                isObscureText: true,
                                controller: controller,
                                isRequired: true,
                                isValidate: Injection
                                    .authController.validatePassword.value,
                                validateText: "Please input your password",
                                onChange: (value) {
                                  Injection.authController.password.value =
                                      value;
                                  Injection.authController.validatePassword
                                      .value = false;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                              ),
                              child: CustomButton(
                                title: "Log IN",
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  // validate phone
                                  if (Injection.authController.userName.value !=
                                      '') {
                                    Injection.authController
                                        .isUserNameNull(false);
                                  } else {
                                    Injection.authController
                                        .isUserNameNull(true);
                                  }

                                  //validate PW
                                  if (Injection.authController.password.value ==
                                      '') {
                                    Injection.authController.validatePassword
                                        .value = true;
                                  } else {
                                    Injection.authController.validatePassword
                                        .value = false;
                                  }
                                  //LOG IN
                                  if (!Injection.authController.validatePassword
                                          .value &&
                                      !Injection.authController.isUserNameNull
                                          .value) {
                                    Injection.authController
                                        .onLogIn(context)
                                        .then((value) => controller.clear());
                                  }
                                },
                              ),
                            ),
                            const Gap(25),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (Injection.authController.isLoadingLogIn.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
