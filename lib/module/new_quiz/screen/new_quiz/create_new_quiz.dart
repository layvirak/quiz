import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/new_quiz/model/quiz_details/quiz_details_model.dart';
import 'package:lomhat/utils/widget/custom_add_item.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../../constrants/set_widget.dart';
import '../../../../utils/widget/custom_check_box.dart';
import '../../../../utils/widget/custom_dropdown.dart';
import '../../model/create_question/create_question.dart';

class CreateNewQuizScreen extends StatefulWidget {
  const CreateNewQuizScreen({super.key});

  @override
  State<CreateNewQuizScreen> createState() => _CreateNewQuizScreenState();
}

var quizTitle = TextEditingController();
var duration = TextEditingController(text: '0');

class _CreateNewQuizScreenState extends State<CreateNewQuizScreen> {
  @override
  void initState() {
    Injection.newQuizController.quizDetatilModel.value = QuizDetailsModel();
    Injection.newQuizController.questionDataList.value =
        <CreateQuestionModel>[];
    quizTitle.text =
        Injection.newQuizController.quizDetatilModel.value.quizTitle ?? "";
    duration.text = Injection
        .newQuizController.quizDetatilModel.value.quizDuration
        .toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text("Create Quiz"),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomTextField(
                            title: "Quiz Title",
                            isRequired: true,
                            hintText: "Enter quiz title",
                            isValidate: Injection.newQuizController
                                .quizDetatilModel.value.isQuizTitle,
                            validateText: "Please input the quiz title",
                            controller: quizTitle,
                            onChange: (value) {
                              Injection.newQuizController.quizDetatilModel
                                      .value =
                                  Injection
                                      .newQuizController.quizDetatilModel.value
                                      .copyWith(
                                          quizTitle: value, isQuizTitle: false);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomTextField(
                            title: "Quiz Duration",
                            isRequired: true,
                            hintText: "Enter quiz duration",
                            isValidate: Injection.newQuizController
                                .quizDetatilModel.value.isQuizDuration,
                            validateText: "Please input the quiz duration",
                            controller: duration,
                            onChange: (value) {
                              var duration =
                                  value == "" ? 0 : double.parse(value);
                              Injection.newQuizController.quizDetatilModel
                                      .value =
                                  Injection
                                      .newQuizController.quizDetatilModel.value
                                      .copyWith(
                                          quizDuration: duration.toInt(),
                                          isQuizDuration: false);
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomCheckBox(
                            isSelect: Injection.newQuizController
                                    .quizDetatilModel.value.isRandom ==
                                1,
                            text: 'Random Questions',
                            onTap: () {
                              Injection.newQuizController.quizDetatilModel
                                      .value =
                                  Injection
                                      .newQuizController.quizDetatilModel.value
                                      .copyWith(
                                          isRandom: Injection
                                                      .newQuizController
                                                      .quizDetatilModel
                                                      .value
                                                      .isRandom ==
                                                  1
                                              ? 0
                                              : 1);
                            },
                          ),
                        ),

                        /**********************Add Question */
                        ...Injection.newQuizController.questionDataList
                            .asMap()
                            .entries
                            .map((item) {
                          return Container(
                            margin: const EdgeInsets.only(
                                left: 15, right: 15, top: 10),
                            padding: const EdgeInsets.all(10),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: CustomDropDown(
                                        title: "Question",
                                        hintText: "Enter question",
                                        isRequire: true,
                                        initValue: Injection
                                            .newQuizController
                                            .questionDataList[item.key]
                                            .question,
                                        item: Injection
                                            .questionController.questionList
                                            .map((e) {
                                          return e.name!;
                                        }).toList(),
                                        itemDescription: Injection
                                            .questionController.questionList
                                            .map((e) {
                                          return e.question!;
                                        }).toList(),
                                        onTap: (value) {
                                          Injection.newQuizController
                                                  .questionDataList[item.key] =
                                              Injection.newQuizController
                                                  .questionDataList[item.key]
                                                  .copyWith(
                                            question: value.value,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomTextField(
                                  title: "Duration",
                                  hintText: "Select duration",
                                  isRequired: true,
                                  initialValue: Injection.newQuizController
                                      .questionDataList[item.key].duration
                                      .toString(),
                                  onChange: (value) {
                                    var duration =
                                        value == "" ? 0 : double.parse(value);
                                    Injection.newQuizController
                                            .questionDataList[item.key] =
                                        Injection.newQuizController
                                            .questionDataList[item.key]
                                            .copyWith(
                                                duration: duration.toInt());
                                  },
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomAddItem(
                            title: "Add Question",
                            onPress: () {
                              Injection.newQuizController.questionDataList.add(
                                CreateQuestionModel(question: ''),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: SetWidget.paddingBottomWidget(),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isOutline: true,
                          onPressed: () {
                            Injection.newQuizController.quizDetatilModel.value =
                                QuizDetailsModel();
                          },
                          title: "Clear",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomButton(
                          onPressed: () {
                            if (Injection.newQuizController.quizDetatilModel
                                        .value.quizTitle ==
                                    '' ||
                                Injection.newQuizController.quizDetatilModel
                                        .value.quizTitle ==
                                    null) {
                              Injection.newQuizController.quizDetatilModel
                                      .value =
                                  Injection
                                      .newQuizController.quizDetatilModel.value
                                      .copyWith(isQuizTitle: true);
                            }
                            if (Injection.newQuizController.quizDetatilModel
                                        .value.quizDuration
                                        .toString() ==
                                    '' ||
                                Injection.newQuizController.quizDetatilModel
                                        .value.quizDuration ==
                                    null) {
                              Injection.newQuizController.quizDetatilModel
                                      .value =
                                  Injection
                                      .newQuizController.quizDetatilModel.value
                                      .copyWith(isQuizDuration: true);
                            }

                            //*************submit*/
                            if (!Injection.newQuizController.quizDetatilModel
                                    .value.isQuizTitle! &&
                                !Injection.newQuizController.quizDetatilModel
                                    .value.isQuizDuration!) {
                              Injection.newQuizController.onCreateQuiz(context);
                            }
                          },
                          title: "Submit",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (Injection.newQuizController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
