import 'dart:async';

import 'package:ditech_crm/module/quiz/model/quiz_option_model/quiz_option_model.dart';
import 'package:ditech_crm/utils/widget/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constrants/app_color.dart';
import '../../../../constrants/injection.dart';
import '../../../../utils/widget/custom_add_item.dart';
import '../../../../utils/widget/custom_dropdown.dart';
import '../../../../utils/widget/custom_textfield.dart';
import 'set_answer_by_quiz_type/match_type.dart';
import 'set_answer_by_quiz_type/multiple_choice_type.dart';

class CustomCreateQuizCard extends StatelessWidget {
  final int index;
  const CustomCreateQuizCard({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            padding: const EdgeInsets.all(10),
            // height: 100,
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
                CustomTextField(
                  title: "Question",
                  hintText: "Enter question",
                  isRequired: true,
                  initialValue: Injection
                      .quizController.quiz.value.items![index].question,
                  onChange: (value) {
                    final updatedItems =
                        Injection.quizController.quiz.value.items!
                            .asMap()
                            .entries
                            .map((item) => item.key == index
                                ? item.value.copyWith(
                                    question: value,
                                  )
                                : item.value)
                            .toList();

                    Injection.quizController.quiz.value =
                        Injection.quizController.quiz.value.copyWith(
                      items: updatedItems,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomDropDown(
                  title: "Question Type",
                  hintText: "Select question type",
                  item: Injection.quizController.quizType,
                  isRequire: true,
                  initValue:
                      Injection.quizController.quiz.value.items![index].type,
                  onTap: (value) {
                    if (value.value !=
                        Injection
                            .quizController.quiz.value.items![index].type) {
                      final updatedItems =
                          Injection.quizController.quiz.value.items!
                              .asMap()
                              .entries
                              .map((item) => item.key == index
                                  ? item.value.copyWith(
                                      type: value.value,
                                      options: value.value == 'True/False'
                                          ? [
                                              QuizOptionModel(
                                                answer: "True",
                                              ),
                                              QuizOptionModel(
                                                answer: "False",
                                              ),
                                            ]
                                          : [],
                                    )
                                  : item.value)
                              .toList();

                      Injection.quizController.quiz.value =
                          Injection.quizController.quiz.value.copyWith(
                        items: updatedItems,
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomDivider(),
                const SizedBox(
                  height: 5,
                ),
                if (Injection.quizController.quiz.value.items![index].options !=
                        null &&
                    Injection.quizController.quiz.value.items![index].options!
                        .isNotEmpty &&
                    Injection.quizController.isReloadSub.value == false)
                  ...Injection.quizController.quiz.value.items![index].options!
                      .asMap()
                      .entries
                      .map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Injection.quizController.quiz.value.items![index]
                                  .type ==
                              'Match Answers'
                          ? MatchType(
                              mainIndex: index,
                              subIndex: item.key,
                            )
                          : MultipleChoiceType(
                              mainIndex: index,
                              subIndex: item.key,
                            ),
                    );
                  }).toList(),
                Row(
                  children: [
                    CustomAddItem(
                      isDisabled: Injection
                              .quizController.quiz.value.items![index].type ==
                          '',
                      title: "Add Answer",
                      onPress: Injection.quizController.quiz.value.items![index]
                                  .type ==
                              ''
                          ? () {}
                          : () {
                              List<QuizOptionModel> options =
                                  <QuizOptionModel>[];
                              if (Injection.quizController.quiz.value
                                          .items![index].options !=
                                      null &&
                                  Injection.quizController.quiz.value
                                      .items![index].options!.isNotEmpty) {
                                options.addAll(Injection.quizController.quiz
                                    .value.items![index].options!);
                              }

                              options.add(QuizOptionModel());

                              final optionList = Injection
                                  .quizController.quiz.value.items!
                                  .map((item) => item ==
                                          Injection.quizController.quiz.value
                                              .items![index]
                                      ? item.copyWith(
                                          options:
                                              options) // Update the specific item
                                      : item) // Keep other items unchanged
                                  .toList(); // Convert back to a mutable list

                              Injection.quizController.quiz.value =
                                  Injection.quizController.quiz.value.copyWith(
                                items: optionList,
                              );
                            },
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Injection.quizController.isReloadMain(true);
                        // Step 1: Create a new list excluding the target index
                        final updatedItems = Injection
                            .quizController.quiz.value.items!
                            .asMap()
                            .entries
                            .where((entry) =>
                                entry.key !=
                                index) // Exclude the item at `mainIndex`
                            .map((entry) => entry.value)
                            .toList();

                        // Step 2: Update the state with the new list
                        Injection.quizController.quiz.value =
                            Injection.quizController.quiz.value.copyWith(
                          items: updatedItems,
                        );
                        Timer(const Duration(milliseconds: 100), () {
                          Injection.quizController.isReloadMain(false);
                        });
                      },
                      child: const Icon(
                        Icons.delete_rounded,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: Container(
              padding: const EdgeInsets.all(5),
              // height: 26,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 0.5,
                      color: Colors.black12,
                    )
                  ]),
              alignment: Alignment.center,
              child: Text(
                "Q${index + 1}",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: AppColor.textAppbarColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
