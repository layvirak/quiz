import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_button.dart';
import '../../../utils/widget/custom_icon_back.dart';
import '../../../utils/widget/custom_loading.dart';
import '../../../utils/widget/custom_textfield.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  void initState() {
    Injection.profileController.onclearDataChangePassword();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              leading: const CustomIconBack(),
              title: const Text("Change Password"),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        hintText: "Old Password",
                        validateText: "Please input your old password",
                        isValidate:
                            Injection.profileController.isOldPWNill.value,
                        onChange: (value) {
                          Injection.profileController.oldPassword.value = value;
                          Injection.profileController.isOldPWNill.value = false;
                        },
                        labelText: "Old Password",
                        isObscureText: true,
                        isRequired: true,
                        // hintText: "Enter NewPassword",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: "New Password",
                        validateText: "Please input at least 4 Character",
                        isValidate:
                            Injection.profileController.validatePassword.value,
                        onChange: (value) {
                          Injection.profileController.newPassword.value = value;
                          Injection.profileController.validatePassword.value =
                              false;
                        },
                        labelText: "New Password",
                        isObscureText: true,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        isReadOnly:
                            Injection.profileController.newPassword.value != ""
                                ? false
                                : true,
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        isObscureText: true,
                        isRequired: true,
                        // hintText: "Enter Confirm Password",
                        isValidate:
                            Injection.profileController.isPasswordMatch.value,
                        validateText: "Password Is Not Match",
                        onChange: (value) {
                          Injection.profileController.conformPassword.value =
                              value;
                          Injection.profileController.isPasswordMatch.value =
                              false;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 45,
                        child: CustomButton(
                          onPressed: () {
                            if (Injection.profileController.oldPassword.value ==
                                '') {
                              Injection.profileController.isOldPWNill.value =
                                  true;
                            } else if (Injection
                                        .profileController.newPassword.value ==
                                    '' ||
                                Injection.profileController.newPassword.value
                                        .length <
                                    4) {
                              Injection.profileController.validatePassword
                                  .value = true;
                            } else if (Injection
                                    .profileController.newPassword.value !=
                                Injection
                                    .profileController.conformPassword.value) {
                              Injection.profileController.validatePassword
                                  .value = false;
                              Injection.profileController.isPasswordMatch
                                  .value = true;
                            } else {
                              Injection.profileController
                                  .onChangePassword(context);
                              // print('submit');
                              // Injection.profileController.validatePassword.value =
                              //     false;
                              // Injection.profileController.isPasswordMatch.value =
                              //     false;
                              // Navigator.pop(context);
                            }
                          },
                          title: "Submit",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (Injection.profileController.isLoadingisLoadingChangePW.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
