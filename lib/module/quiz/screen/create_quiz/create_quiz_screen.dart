import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/module/quiz/model/quiz_item_model/quiz_item_model.dart';
import 'package:ditech_crm/utils/widget/custom_add_item.dart';
import 'package:ditech_crm/utils/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/quiz_model/quiz_model.dart';
import '../../widget/create_quiz/custom_create_quiz_card.dart';

class CreateQuizScreen extends StatelessWidget {
  const CreateQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("Create Quiz"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: CustomTextField(
                  labelText: "Quiz Title",
                  isRequired: true,
                  hintText: "Enter quiz title",
                  onChange: (value) {
                    Injection.quizController.quiz.value =
                        Injection.quizController.quiz.value.copyWith(
                      quizTitle: value,
                    );
                  },
                ),
              ),
              if (Injection.quizController.quiz.value != QuizModel() &&
                  Injection.quizController.quiz.value.items!.isNotEmpty &&
                  Injection.quizController.isReload.value == false)
                ...Injection.quizController.quiz.value.items!
                    .asMap()
                    .entries
                    .map((item) {
                  return CustomCreateQuizCard(
                    index: item.key,
                  );
                }).toList(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: CustomAddItem(
                  title: "Add Question",
                  onPress: () {
                    List<QuizItemModel> questions = <QuizItemModel>[];
                    if (Injection.quizController.quiz.value != QuizModel() &&
                        Injection.quizController.quiz.value.items!.isNotEmpty) {
                      questions
                          .addAll(Injection.quizController.quiz.value.items!);
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
    );
  }
}
