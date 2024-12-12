import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/quiz/model/quiz_item_model/quiz_item_model.dart';
import 'package:lomhat/utils/widget/custom_add_item.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constrants/set_widget.dart';
import '../../model/quiz_model/quiz_model.dart';
import '../../widget/create_quiz/custom_create_quiz_card.dart';

class CreateQuizScreen extends StatelessWidget {
  const CreateQuizScreen({super.key});

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
                            initialValue:
                                Injection.quizController.quiz.value.quizTitle,
                            onChange: (value) {
                              Injection.quizController.quiz.value =
                                  Injection.quizController.quiz.value.copyWith(
                                quizTitle: value,
                              );
                            },
                          ),
                        ),
                        if (Injection.quizController.quiz.value.items != null &&
                            Injection
                                .quizController.quiz.value.items!.isNotEmpty &&
                            Injection.quizController.isReloadMain.value ==
                                false)
                          ...Injection.quizController.quiz.value.items!
                              .asMap()
                              .entries
                              .map((item) {
                            return CustomCreateQuizCard(
                              index: item.key,
                            );
                          }).toList(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomAddItem(
                            title: "Add Question",
                            onPress: () {
                              final questions = <QuizItemModel>[];
                              if (Injection.quizController.quiz.value !=
                                      QuizModel() &&
                                  Injection.quizController.quiz.value.items!
                                      .isNotEmpty) {
                                questions.addAll(
                                    Injection.quizController.quiz.value.items!);
                              }
                              questions.add(
                                QuizItemModel(),
                              );
                              Injection.quizController.quiz.value = Injection
                                  .quizController.quiz.value
                                  .copyWith(items: questions);
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
                            Injection.quizController.quiz.value =
                                QuizModel(items: []);
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
                            // if (Injection.quizController.quiz.value.quizTitle == '') {
                            //   Injection.quizController.quiz.value = Injection
                            //       .quizController.quiz.value
                            //       .copyWith(isQuizTitle: true);
                            // }

                            Injection.quizController.quizList
                                .add(Injection.quizController.quiz.value);
                            // print(Injection.quizController.quizList);
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
          if (Injection.quizController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
