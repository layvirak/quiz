import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_button.dart';
import '../../../utils/widget/custom_date_picker.dart';
import '../../../utils/widget/custom_dropdown.dart';
import '../../../utils/widget/custom_icon_back.dart';
import '../../../utils/widget/custom_loading.dart';
import '../../../utils/widget/custom_textfield.dart';
import '../model/user_model/user_model.dart';

// ignore: must_be_immutable
class EditUserScreen extends StatefulWidget {
  const EditUserScreen({super.key});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  UserModel userModel = UserModel();
  @override
  void initState() {
    Injection.userController.onGetGender(context);

    Injection.userController.updateUserModel.value =
        Injection.userController.userModel.value.copyWith();
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
              title: const Text(
                "Edit Information",
              ),
            ),
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomTextField(
                              labelText: "First Name",
                              hintText: "Enter your fitst name",
                              isRequired: true,
                              initialValue: Injection.userController
                                  .updateUserModel.value.firstName,
                              isValidate: Injection
                                  .userController.isFirstNameNull.value,
                              validateText: "Please input your first name",
                              onChange: (value) {
                                Injection.userController.updateUserModel.value =
                                    Injection
                                        .userController.updateUserModel.value
                                        .copyWith(
                                  firstName: value,
                                );
                                Injection.userController.isFirstNameNull.value =
                                    false;
                              },
                            ),
                            const Gap(10),
                            CustomTextField(
                              labelText: "Last Name",
                              hintText: "Enter your last name",
                              isRequired: true,
                              initialValue: Injection.userController
                                  .updateUserModel.value.lastName,
                              isValidate:
                                  Injection.userController.isLastNameNull.value,
                              validateText: "Please input last name",
                              onChange: (value) {
                                Injection.userController.updateUserModel.value =
                                    Injection
                                        .userController.updateUserModel.value
                                        .copyWith(
                                  lastName: value,
                                );
                                Injection.userController.isLastNameNull.value =
                                    false;
                              },
                            ),
                            const Gap(10),
                            CustomDropDown(
                              initValue: Injection
                                  .userController.updateUserModel.value.gender,
                              title: "Gender",
                              item:
                                  Injection.userController.genderList.map((e) {
                                return e.name!;
                              }).toList(),
                              hintText: "Select a gender",
                              onTap: (value) {
                                Injection.userController.updateUserModel.value =
                                    Injection
                                        .userController.updateUserModel.value
                                        .copyWith(gender: value.value);
                              },
                            ),
                            const Gap(10),
                            CustomDropDown(
                              isReadOnly: true,
                              title: "Birth of Date",
                              hintText: "Select date of birth",
                              initValue: Injection.userController
                                  .updateUserModel.value.birthDate,
                              onTap: () {
                                onDatePicker(
                                  context,
                                  firstDate: DateTime.parse("1900-01-01"),
                                  lastDate: DateTime.now(),
                                  initialDate: Injection
                                              .userController
                                              .updateUserModel
                                              .value
                                              .birthDate ==
                                          ""
                                      ? DateTime.now()
                                      : DateTime.parse(
                                          Injection.userController
                                              .updateUserModel.value.birthDate!,
                                        ),
                                ).then((onValue) {
                                  Injection.userController.updateUserModel
                                          .value =
                                      Injection
                                          .userController.updateUserModel.value
                                          .copyWith(
                                    birthDate: onValue,
                                  );
                                });
                              },
                              margin: const EdgeInsets.all(0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: CustomButton(
                        title: "Update",
                        isDisable: userModel ==
                            Injection.userController.updateUserModel.value,
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          if (Injection.userController.updateUserModel.value
                                      .firstName ==
                                  '' ||
                              Injection.userController.updateUserModel.value
                                      .firstName ==
                                  null) {
                            Injection.userController.isFirstNameNull.value =
                                true;
                          } else {
                            Injection.userController.isFirstNameNull.value =
                                false;
                          }
                          //validate last name
                          if (Injection.userController.updateUserModel.value
                                      .lastName ==
                                  '' ||
                              Injection.userController.updateUserModel.value
                                      .lastName ==
                                  null) {
                            Injection.userController.isLastNameNull.value =
                                true;
                          } else {
                            Injection.userController.isLastNameNull.value =
                                false;
                          }
                          //submit
                          if (Injection.userController.updateUserModel.value
                                      .firstName !=
                                  '' &&
                              Injection.userController.updateUserModel.value
                                      .firstName !=
                                  null &&
                              Injection.userController.updateUserModel.value
                                      .lastName !=
                                  '' &&
                              Injection.userController.updateUserModel.value
                                      .lastName !=
                                  null) {
                            Injection.userController
                                .onUpdateUserInformation(context);
                          }
                        },
                      ),
                    ),
                    const Gap(20)
                  ],
                ),
              ),
            ),
          ),
          if (Injection.userController.isLoadingInputUserInfor.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
