import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/quiz/model/quiz_details/quiz_details_model.dart';
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
    Injection.quizController.quizDetatilModel.value = QuizDetailsModel();
    Injection.quizController.questionDataList.value = <CreateQuestionModel>[];
    quizTitle.text =
        Injection.quizController.quizDetatilModel.value.quizTitle ?? "";
    duration.text =
        Injection.quizController.quizDetatilModel.value.quizDuration.toString();
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
                            isValidate:
                                Injection.quizController.quiz.value.isQuizTitle,
                            validateText: "Please input the quiz title",
                            controller: quizTitle,
                            onChange: (value) {
                              Injection.quizController.quizDetatilModel.value =
                                  Injection
                                      .quizController.quizDetatilModel.value
                                      .copyWith(
                                quizTitle: value,
                              );
                              print(
                                  "title -----------------_${Injection.quizController.quizDetatilModel.value.quizTitle}");
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
                            isValidate:
                                Injection.quizController.quiz.value.isQuizTitle,
                            validateText: "Please input the quiz duration",
                            controller: duration,
                            onChange: (value) {
                              var duration =
                                  value == "" ? 0 : double.parse(value);
                              Injection.quizController.quizDetatilModel.value =
                                  Injection
                                      .quizController.quizDetatilModel.value
                                      .copyWith(quizDuration: duration.toInt());
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: const CustomCheckBox(
                              isSelect: false, text: 'Random Questions'),
                        ),
                        ...Injection.quizController.questionDataList
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
                                            .quizController
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
                                          // Injection.quizController
                                          //         .quizDetatilModel.value =
                                          //     Injection.quizController
                                          //         .quizDetatilModel.value
                                          //         .copyWith(
                                          //             quizTitle: value.value);
                                          Injection.quizController
                                                  .questionDataList[item.key] =
                                              Injection.quizController
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
                                  initialValue: Injection.quizController
                                      .questionDataList[item.key].duration
                                      .toString(),
                                  onChange: (value) {
                                    var duration =
                                        value == "" ? 0 : double.parse(value);
                                    Injection.quizController
                                            .questionDataList[item.key] =
                                        Injection.quizController
                                            .questionDataList[item.key]
                                            .copyWith(
                                                duration: duration.toInt());
                                  },
                                ),
                              ],
                            ),
                          );
                          // CustomCreateQuestionCard(
                          //   index: item.key,
                          // );
                        }).toList(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomAddItem(
                            title: "Add Question",
                            onPress: () {
                              Injection.quizController.questionDataList.add(
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
                            Injection.quizController.quizDetatilModel.value =
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
                            Injection.quizController.onCreateQuiz(context);
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
          if (Injection.quizController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
