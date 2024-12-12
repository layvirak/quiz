import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/app_logo.dart';

import '../../../constrants/app_color.dart';
import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_button.dart';
import '../../../utils/widget/custom_icon_back.dart';
import '../../../utils/widget/custom_loading.dart';
import '../../../utils/widget/custom_textfield.dart';
import '../../../utils/widget/screen_responsive.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.authController.clearLoginData();
    });

    super.initState();
  }

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
            body: SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CustomIconBack(
                            color: AppColor.primaryColor,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Image.asset(
                        AppLogo.horizontalAppLogoNoBackGround,
                        color: AppColor.primaryColor,
                        width: 200,
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomTextField(
                          labelText: "Email",
                          hintText: "Enter email",
                          isRequired: true,
                          onChange: (value) {
                            Injection.authController.email.value = value;
                            Injection.authController.isEmail.value = false;
                          },
                          isValidate: Injection.authController.isEmail.value,
                          validateText: "Please input your email",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomTextField(
                          labelText: "Phone Number",
                          hintText: "Enter Phone Number",
                          isRequired: true,
                          onChange: (value) {
                            Injection.authController.phoneNumber.value = value;
                            Injection.authController.isPhoneNumber.value =
                                false;
                          },
                          isValidate:
                              Injection.authController.isPhoneNumber.value,
                          validateText: "Please input your phone number",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomTextField(
                          labelText: "Password",
                          hintText: "Enter Password",
                          isRequired: true,
                          isObscureText: true,
                          onChange: (value) {
                            Injection.authController.password.value = value;
                            Injection.authController.ispasswordNull.value =
                                false;
                          },
                          isValidate:
                              Injection.authController.ispasswordNull.value,
                          validateText: "Please input your password",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: CustomButton(
                          title: "Sign UP",
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            // phone
                            if (Injection.authController.phoneNumber.value ==
                                '') {
                              Injection.authController.isPhoneNumber(true);
                            }
                            //email
                            if (Injection.authController.email.value == '') {
                              Injection.authController.isEmail(true);
                            }
                            //password
                            if (Injection.authController.password.value == '') {
                              Injection.authController.ispasswordNull(true);
                            }
                            //sign up
                            if (!Injection
                                    .authController.ispasswordNull.value &&
                                !Injection.authController.isEmail.value &&
                                !Injection.authController.isPhoneNumber.value) {
                              Injection.authController.onSignUP(context);
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
                    height: 600,
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
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CustomIconBack(
                                  color: AppColor.primaryColor,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                            Image.asset(
                              AppLogo.horizontalAppLogoNoBackGround,
                              color: AppColor.primaryColor,
                              width: 150,
                              height: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomTextField(
                                labelText: "Email",
                                hintText: "Enter email",
                                isRequired: true,
                                onChange: (value) {
                                  Injection.authController.email.value = value;
                                  Injection.authController.isEmail.value =
                                      false;
                                },
                                isValidate:
                                    Injection.authController.isEmail.value,
                                validateText: "Please input your email",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomTextField(
                                labelText: "Phone Number",
                                hintText: "Enter Phone Number",
                                isRequired: true,
                                onChange: (value) {
                                  Injection.authController.phoneNumber.value =
                                      value;
                                  Injection.authController.isPhoneNumber.value =
                                      false;
                                },
                                isValidate: Injection
                                    .authController.isPhoneNumber.value,
                                validateText: "Please input your phone number",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomTextField(
                                labelText: "Password",
                                hintText: "Enter Password",
                                isRequired: true,
                                isObscureText: true,
                                onChange: (value) {
                                  Injection.authController.password.value =
                                      value;
                                  Injection.authController.ispasswordNull
                                      .value = false;
                                },
                                isValidate: Injection
                                    .authController.ispasswordNull.value,
                                validateText: "Please input your password",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                              ),
                              child: CustomButton(
                                title: "Sign UP",
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  // phone
                                  if (Injection
                                          .authController.phoneNumber.value ==
                                      '') {
                                    Injection.authController
                                        .isPhoneNumber(true);
                                  }
                                  //email
                                  if (Injection.authController.email.value ==
                                      '') {
                                    Injection.authController.isEmail(true);
                                  }
                                  //password
                                  if (Injection.authController.password.value ==
                                      '') {
                                    Injection.authController
                                        .ispasswordNull(true);
                                  }
                                  //sign up
                                  if (!Injection.authController.ispasswordNull
                                          .value &&
                                      !Injection.authController.isEmail.value &&
                                      !Injection
                                          .authController.isPhoneNumber.value) {
                                    Injection.authController.onSignUP(context);
                                  }
                                },
                              ),
                            ),
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
