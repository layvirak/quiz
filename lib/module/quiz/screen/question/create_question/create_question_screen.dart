import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/set_widget.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_check_box.dart';
import 'package:lomhat/utils/widget/custom_divider.dart';
import 'package:lomhat/utils/widget/custom_dropdown.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../../../constrants/injection.dart';
import '../../../model/question_model/question_model.dart';
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
      Injection.quizController.questionModel.value = QuestionModel(answers: []);
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
                                .quizController.questionModel.value.question,
                            isValidate: Injection
                                .quizController.questionModel.value.isQuestion,
                            validateText: "Please enter question",
                            onChange: (value) {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
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
                            initValue: Injection.quizController.questionModel
                                .value.questionType,
                            isValidate: Injection.quizController.questionModel
                                .value.isQuestionType!,
                            validateText: "Please select question type",
                            item: const [
                              "True/False",
                              "Single Choice",
                              "Multiple Choice",
                              "Matching"
                            ],
                            onTap: (value) {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
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
                                .quizController.questionModel.value.isSubject!,
                            validateText: "Please select subject",
                            initValue: Injection
                                .quizController.questionModel.value.subject,
                            onTap: (value) {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
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
                                .quizController.questionModel.value.classs,
                            item: Injection.optionController.classesGroupOpction
                                .map((value) => value.name!)
                                .toList(),
                            itemDescription: Injection
                                .optionController.classesGroupOpction
                                .map((value) => value.description!)
                                .toList(),
                            isValidate: Injection
                                .quizController.questionModel.value.isClass!,
                            validateText: "Please select class",
                            onTap: (value) {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
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
                                .quizController.questionModel.value.visibility,
                            title: "Visibility",
                            hintText: "Enter visibility",
                            item: const ["Public", "Private", "Protected"],
                            isValidate: Injection.quizController.questionModel
                                .value.isVisibility!,
                            validateText: "Please select visibility",
                            onTap: (value) {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
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
                            isSelect: Injection.quizController.questionModel
                                        .value.disabled ==
                                    1
                                ? true
                                : false,
                            onTap: () {
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
                                      .copyWith(
                                disabled: Injection.quizController.questionModel
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
                            Injection.quizController.questionModel.value =
                                Injection.quizController.questionModel.value
                                    .copyWith(
                              isVisibility: Injection.quizController
                                          .questionModel.value.visibility !=
                                      ''
                                  ? false
                                  : true,
                              isQuestion: Injection.quizController.questionModel
                                          .value.question !=
                                      ''
                                  ? false
                                  : true,
                              isClass: Injection.quizController.questionModel
                                          .value.classs !=
                                      ''
                                  ? false
                                  : true,
                              isSubject: Injection.quizController.questionModel
                                          .value.subject !=
                                      ''
                                  ? false
                                  : true,
                              isQuestionType: Injection.quizController
                                          .questionModel.value.questionType !=
                                      ''
                                  ? false
                                  : true,
                            );
                            if (!Injection.quizController.questionModel.value
                                    .isQuestion! &&
                                !Injection.quizController.questionModel.value
                                    .isQuestionType! &&
                                !Injection.quizController.questionModel.value
                                    .isClass! &&
                                !Injection.quizController.questionModel.value
                                    .isSubject! &&
                                !Injection.quizController.questionModel.value
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
                                Injection.quizController.onUpdateQuestionDetail(
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
          if (Injection.quizController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
