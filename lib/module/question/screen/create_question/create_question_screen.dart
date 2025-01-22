import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/set_widget.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_check_box.dart';
import 'package:lomhat/utils/widget/custom_divider.dart';
import 'package:lomhat/utils/widget/custom_dropdown.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../../constrants/injection.dart';
import '../../model/quesstion_model/question_model.dart';
import 'create_answer_screen.dart';

class CreateQuestionScreen extends StatefulWidget {
  final String? name;
  const CreateQuestionScreen({
    super.key,
    this.name,
  });

  @override
  State<CreateQuestionScreen> createState() => _CreateQuestionScreenState();
}

class _CreateQuestionScreenState extends State<CreateQuestionScreen> {
  var question = TextEditingController();
  var matchAnswer = TextEditingController();
  var answer = TextEditingController();

  @override
  void initState() {
    Injection.optionController.onGetSubjectOption();
    Injection.optionController.onGetClassesOption();
    if (widget.name == null) {
      Injection.questionController.questionModel.value = QuestionModel(answers: []);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text("Create"),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomTextField(
                            isRequired: true,
                            title: "Question",
                            hintText: "Enter Question",
                            maxLine: 5,
                            initialValue: Injection
                                .questionController.questionModel.value.question,
                            isValidate: Injection
                                .questionController.questionModel.value.isQuestion,
                            validateText: "Please enter question",
                            onChange: (value) {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                question: value,
                                isQuestion: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomDropDown(
                            isRequire: true,
                            title: "Question Type",
                            hintText: "Enter Question Type",
                            initValue: Injection.questionController.questionModel
                                .value.questionType,
                            isValidate: Injection.questionController.questionModel
                                .value.isQuestionType!,
                            validateText: "Please select question type",
                            item: const [
                              "True/False",
                              "Single Choice",
                              "Multiple Choice",
                              "Matching"
                            ],
                            onTap: (value) {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                questionType: value.value,
                                isQuestionType: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomDropDown(
                            title: "Subject",
                            isRequire: true,
                            hintText: "Enter subject",
                            item: Injection.optionController.subjectGroupOption
                                .map((value) => value.name!)
                                .toList(),
                            itemDescription: Injection
                                .optionController.subjectGroupOption
                                .map((value) => value.description!)
                                .toList(),
                            isValidate: Injection
                                .questionController.questionModel.value.isSubject!,
                            validateText: "Please select subject",
                            initValue: Injection
                                .questionController.questionModel.value.subject,
                            onTap: (value) {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                subject: value.value,
                                isSubject: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomDropDown(
                            isRequire: true,
                            title: "Class",
                            hintText: "Enter class",
                            initValue: Injection
                                .questionController.questionModel.value.classs,
                            item: Injection.optionController.classesGroupOpction
                                .map((value) => value.name!)
                                .toList(),
                            itemDescription: Injection
                                .optionController.classesGroupOpction
                                .map((value) => value.description!)
                                .toList(),
                            isValidate: Injection
                                .questionController.questionModel.value.isClass!,
                            validateText: "Please select class",
                            onTap: (value) {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                classs: value.value,
                                isClass: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomDropDown(
                            isRequire: true,
                            initValue: Injection
                                .questionController.questionModel.value.visibility,
                            title: "Visibility",
                            hintText: "Enter visibility",
                            item: const ["Public", "Private", "Protected"],
                            isValidate: Injection.questionController.questionModel
                                .value.isVisibility!,
                            validateText: "Please select visibility",
                            onTap: (value) {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                visibility: value.value,
                                isVisibility: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomCheckBox(
                            isSelect: Injection.questionController.questionModel
                                        .value.disabled ==
                                    1
                                ? true
                                : false,
                            onTap: () {
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(
                                disabled: Injection.questionController.questionModel
                                            .value.disabled ==
                                        1
                                    ? 0
                                    : 1,
                              );
                            },
                            text: "Disable",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const CustomDivider(),
                Padding(
                  padding: SetWidget.paddingBottomWidget(),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          title: "Back",
                          isOutline: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomButton(
                          title: widget.name == null ? "Next" : "Save",
                          onPressed: () {
                            Injection.questionController.questionModel.value =
                                Injection.questionController.questionModel.value
                                    .copyWith(
                              isVisibility: Injection.questionController
                                          .questionModel.value.visibility !=
                                      ''
                                  ? false
                                  : true,
                              isQuestion: Injection.questionController.questionModel
                                          .value.question !=
                                      ''
                                  ? false
                                  : true,
                              isClass: Injection.questionController.questionModel
                                          .value.classs !=
                                      ''
                                  ? false
                                  : true,
                              isSubject: Injection.questionController.questionModel
                                          .value.subject !=
                                      ''
                                  ? false
                                  : true,
                              isQuestionType: Injection.questionController
                                          .questionModel.value.questionType !=
                                      ''
                                  ? false
                                  : true,
                            );
                            if (!Injection.questionController.questionModel.value
                                    .isQuestion! &&
                                !Injection.questionController.questionModel.value
                                    .isQuestionType! &&
                                !Injection.questionController.questionModel.value
                                    .isClass! &&
                                !Injection.questionController.questionModel.value
                                    .isSubject! &&
                                !Injection.questionController.questionModel.value
                                    .isVisibility!) {
                              if (widget.name == null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateAnswerScreen(),
                                  ),
                                );
                              } else {
                                Injection.questionController.onUpdateQuestionDetail(
                                    context,
                                    name: widget.name);
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (Injection.questionController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
