import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_check_box.dart';
import 'package:lomhat/utils/widget/custom_dropdown.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../../constrants/injection.dart';
import '../../../../utils/widget/custom_add_item.dart';
import '../../../../utils/widget/custom_divider.dart';
import '../../model/answers/answer_model.dart';
import '../../model/question_model/question_model.dart';

class CreateQuestionScreen extends StatefulWidget {
  const CreateQuestionScreen({super.key});

  @override
  State<CreateQuestionScreen> createState() => _CreateQuestionScreenState();
}

class _CreateQuestionScreenState extends State<CreateQuestionScreen> {
  var question = TextEditingController();
  var matchAnswer = TextEditingController();
  var answer = TextEditingController();

  @override
  void initState() {
    Injection.quizController.questionModel.value = QuestionModel();
    Injection.optionController.onGetSubjectOption();
    Injection.optionController.onGetClassesOption();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("Create"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: question,
                        isRequired: true,
                        title: "Question",
                        hintText: "Enter Question",
                        maxLine: 5,
                        onChange: (value) {
                          Injection.quizController.questionModel.value =
                              Injection.quizController.questionModel.value
                                  .copyWith(question: value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        isRequire: true,
                        title: "Question Type",
                        hintText: "Enter Question Type",
                        initValue: Injection
                            .quizController.questionModel.value.questionType,
                        item: const [
                          "True/False",
                          "Single Choice",
                          "Multiple Choice",
                          "Matching"
                        ],
                        onTap: (value) {
                          Injection.quizController.questionModel.value =
                              Injection.quizController.questionModel.value
                                  .copyWith(questionType: value.value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
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
                        initValue: Injection
                            .quizController.questionModel.value.subject,
                        onTap: (value) {
                          Injection.quizController.questionModel.value =
                              Injection.quizController.questionModel.value
                                  .copyWith(subject: value.value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        isRequire: true,
                        title: "Class",
                        hintText: "Enter class",
                        initValue:
                            Injection.quizController.questionModel.value.classs,
                        item: Injection.optionController.classesGroupOpction
                            .map((value) => value.name!)
                            .toList(),
                        itemDescription: Injection
                            .optionController.classesGroupOpction
                            .map((value) => value.description!)
                            .toList(),
                        onTap: (value) {
                          Injection.quizController.questionModel.value =
                              Injection.quizController.questionModel.value
                                  .copyWith(classs: value.value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        isRequire: true,
                        initValue: Injection
                            .quizController.questionModel.value.visibility,
                        title: "Visibility",
                        hintText: "Enter visibility",
                        item: const ["Public", "Private", "Protected"],
                        onTap: (value) {
                          Injection.quizController.questionModel.value =
                              Injection.quizController.questionModel.value
                                  .copyWith(visibility: value.value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        title: "Used",
                        hintText: "Enter Used",
                        onChange: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        title: "Difficuly Level",
                        hintText: "Enter Difficuly Level",
                        onChange: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomCheckBox(
                        onTap: () {
                          Injection.quizController.questionModel.value.disabled;
                        },
                        text: "Disable",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const CustomTableAnswer(),
                      ...List.generate(
                          Injection.quizController.question.value.answers!
                              .length, (indexItem) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Theme.of(context)
                                  .disabledColor
                                  .withOpacity(0.5),
                            ),
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextField(
                                          isRequired: true,
                                          initialValue: Injection
                                              .quizController
                                              .question
                                              .value
                                              .answers![indexItem]
                                              .answer,
                                          noBorder: true,
                                          hintText: 'Enter answer',
                                          onChange: (v) {
                                            var answer = v;
                                            Injection.quizController.question
                                                    .value.answers![indexItem] =
                                                Injection
                                                    .quizController
                                                    .question
                                                    .value
                                                    .answers![indexItem]
                                                    .copyWith(answer: answer);
                                            print(Injection
                                                .quizController
                                                .question
                                                .value
                                                .answers![indexItem]
                                                .answer);
                                          },
                                        ),
                                      ),
                                      const CustomVerticalDivider(),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        iconSize: 20,
                                        color: Colors.red,
                                        onPressed: () {
                                          Injection.quizController.question
                                              .value.answers!
                                              .removeAt(indexItem);
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                const CustomDivider(),
                                IntrinsicHeight(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CustomTextField(
                                              noBorder: true,
                                              hintText: 'Match answer',
                                              onChange: (v) {},
                                            ),
                                          ),
                                          const CustomVerticalDivider(),
                                          Expanded(
                                            child: CustomTextField(
                                              initialValue: '',
                                              noBorder: true,
                                              hintText: 'Explanation',
                                              onChange: (v) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      const CustomDivider(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: CustomAddItem(
                          title: "Add Question",
                          onPress: () {
                            final questions = <AnswerModel>[];
                            if (Injection.quizController.question.value !=
                                    QuestionModel() &&
                                Injection.quizController.question.value.answers!
                                    .isNotEmpty) {
                              questions.addAll(Injection
                                  .quizController.question.value.answers!);
                            }
                            questions.add(
                              AnswerModel(),
                            );
                            Injection.quizController.question.value = Injection
                                .quizController.question.value
                                .copyWith(answers: questions);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                title: "Create",
                onPressed: () {
                  Injection.quizController.onCreateQuestion(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
