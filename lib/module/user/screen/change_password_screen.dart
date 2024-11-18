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
    Injection.userController.onclearDataChangePassword();

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
                        hintText: "Enter old password",
                        validateText: "Please input your lod password",
                        isValidate: Injection.userController.isOldPWNill.value,
                        onChange: (value) {
                          Injection.userController.oldPassword.value = value;
                          Injection.userController.isOldPWNill.value = false;
                        },
                        labelText: "Old Passowrd",
                        isObscureText: true,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: "Enter new password",
                        validateText: "Please input at least 4 character",
                        isValidate:
                            Injection.userController.validatePassword.value,
                        onChange: (value) {
                          Injection.userController.newPassword.value = value;
                          Injection.userController.validatePassword.value =
                              false;
                        },
                        labelText: "New Passowrd",
                        isObscureText: true,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        isReadOnly:
                            Injection.userController.newPassword.value != ""
                                ? false
                                : true,
                        hintText: "Enter confirm new password",
                        labelText: "Confirm New Passowrd",
                        isObscureText: true,
                        isRequired: true,
                        isValidate:
                            Injection.userController.isPasswordMatch.value,
                        validateText: "Password is not match",
                        onChange: (value) {
                          Injection.userController.conformPassword.value =
                              value;
                          Injection.userController.isPasswordMatch.value =
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
                            if (Injection.userController.oldPassword.value ==
                                '') {
                              Injection.userController.isOldPWNill.value = true;
                            } else if (Injection
                                        .userController.newPassword.value ==
                                    '' ||
                                Injection.userController.newPassword.value
                                        .length <
                                    4) {
                              Injection.userController.validatePassword.value =
                                  true;
                            } else if (Injection
                                    .userController.newPassword.value !=
                                Injection
                                    .userController.conformPassword.value) {
                              Injection.userController.validatePassword.value =
                                  false;
                              Injection.userController.isPasswordMatch.value =
                                  true;
                            } else {
                              Injection.userController
                                  .onChangePassword(context);
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
          if (Injection.userController.isLoadingisLoadingChangePW.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
