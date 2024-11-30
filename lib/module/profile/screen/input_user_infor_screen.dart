import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../constrants/injection.dart';
import '../../../../../utils/widget/custom_button.dart';
import '../../../../../utils/widget/custom_dropdown.dart';
import '../../../../../utils/widget/custom_icon_back.dart';
import '../../../../../utils/widget/custom_loading.dart';
import '../../../utils/widget/custom_date_picker.dart';
import '../../../utils/widget/custom_textfield.dart';
import '../model/user_model/user_model.dart';

// ignore: must_be_immutable
class InputUserInforScreen extends StatefulWidget {
  const InputUserInforScreen({super.key});

  @override
  State<InputUserInforScreen> createState() => _InputUserInforScreenState();
}

class _InputUserInforScreenState extends State<InputUserInforScreen> {
  UserModel userModel = UserModel();
  @override
  void initState() {
    Injection.profileController.onGetGender(context);
    Injection.profileController.updateUserModel.value =
        Injection.profileController.userModel.value.copyWith();
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
                              hintText: "Enter First Name",
                              isRequired: true,
                              initialValue: Injection.profileController
                                  .updateUserModel.value.firstName,
                              isValidate: Injection
                                  .profileController.isFirstNameNull.value,
                              validateText: "Please input firstname",
                              onChange: (value) {
                                Injection.profileController.updateUserModel
                                        .value =
                                    Injection
                                        .profileController.updateUserModel.value
                                        .copyWith(
                                  firstName: value,
                                );
                                Injection.profileController.isFirstNameNull
                                    .value = false;
                              },
                            ),
                            const Gap(10),
                            CustomTextField(
                              labelText: "Last Name",
                              hintText: "Enter Last Name",
                              isRequired: true,
                              initialValue: Injection.profileController
                                  .updateUserModel.value.lastName,
                              isValidate: Injection
                                  .profileController.isLastNameNull.value,
                              validateText: "Please input lastName",
                              onChange: (value) {
                                Injection.profileController.updateUserModel
                                        .value =
                                    Injection
                                        .profileController.updateUserModel.value
                                        .copyWith(
                                  lastName: value,
                                );
                                Injection.profileController.isLastNameNull
                                    .value = false;
                              },
                            ),
                            const Gap(10),
                            CustomDropDown(
                              initValue: Injection.profileController
                                  .updateUserModel.value.gender,
                              title: "Gender",
                              item: Injection.profileController.genderList
                                  .map((e) {
                                return e.name!;
                              }).toList(),
                              hintText: "Please select gender",
                              onTap: (value) {
                                Injection.profileController.updateUserModel
                                        .value =
                                    Injection
                                        .profileController.updateUserModel.value
                                        .copyWith(gender: value.value);
                              },
                            ),
                            const Gap(10),
                            CustomDropDown(
                              isReadOnly: true,
                              title: "Date Of Birth",
                              hintText: "Select Date Of Birth",
                              initValue: Injection.profileController
                                  .updateUserModel.value.birthDate,
                              onTap: () {
                                onDatePicker(
                                  context,
                                  firstDate: DateTime.parse("1900-01-01"),
                                  lastDate: DateTime.now(),
                                  initialDate: Injection
                                              .profileController
                                              .updateUserModel
                                              .value
                                              .birthDate ==
                                          ""
                                      ? DateTime.now()
                                      : DateTime.parse(
                                          Injection.profileController
                                              .updateUserModel.value.birthDate!,
                                        ),
                                ).then((onValue) {
                                  Injection.profileController.updateUserModel
                                          .value =
                                      Injection.profileController
                                          .updateUserModel.value
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
                            Injection.profileController.updateUserModel.value,
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          if (Injection.profileController.updateUserModel.value
                                      .firstName ==
                                  '' ||
                              Injection.profileController.updateUserModel.value
                                      .firstName ==
                                  null) {
                            Injection.profileController.isFirstNameNull.value =
                                true;
                          } else {
                            Injection.profileController.isFirstNameNull.value =
                                false;
                          }
                          //validate last name
                          if (Injection.profileController.updateUserModel.value
                                      .lastName ==
                                  '' ||
                              Injection.profileController.updateUserModel.value
                                      .lastName ==
                                  null) {
                            Injection.profileController.isLastNameNull.value =
                                true;
                          } else {
                            Injection.profileController.isLastNameNull.value =
                                false;
                          }
                          //submit
                          if (Injection.profileController.updateUserModel.value
                                      .firstName !=
                                  '' &&
                              Injection.profileController.updateUserModel.value
                                      .firstName !=
                                  null &&
                              Injection.profileController.updateUserModel.value
                                      .lastName !=
                                  '' &&
                              Injection.profileController.updateUserModel.value
                                      .lastName !=
                                  null) {
                            Injection.profileController
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
          if (Injection.profileController.isLoadingInputUserInfor.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
