import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lomhat/constrants/app_logo.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/quiz/model/filter_question_mode/filter_question_mode.dart';
import 'package:lomhat/utils/widget/custom_empty_state.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../../constrants/set_widget.dart';
import '../../../../utils/widget/custom_loading_pagegination.dart';
import '../../widget/custom_question_card.dart';
import 'create_question/create_question_screen.dart';
import 'filter_question_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.quizController.filterQuestion.value = FilterQuestionMode();
      Injection.quizController.questionLength.value = 0;
      Injection.quizController.onGetQuestion(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text("Question"),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterQuestionScreen(
                          filterQuestionMode:
                              Injection.quizController.filterQuestion.value,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImage.filters,
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 20)
              ],
            ),
            body: NotificationListener<ScrollUpdateNotification>(
              onNotification: ((scrollNotification) {
                if (scrollNotification.metrics.pixels ==
                    scrollNotification.metrics.maxScrollExtent) {
                  Injection.quizController.onGetQuestion(context);
                }
                return false;
              }),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (Injection.quizController.questionList.isEmpty)
                      const CustomEmptyState(),
                    ...Injection.quizController.questionList
                        .asMap()
                        .entries
                        .map((e) {
                      return CustomQuestionCard(
                        questionModel: e.value,
                        onTap: () {
                          context
                              .push('/question/${e.value.name}')
                              .then((value) {
                            Injection.quizController.questionList[e.key] =
                                Injection.quizController.questionModel.value
                                    .copyWith();
                          });
                        },
                      );
                    }),
                    if (Injection.quizController.isLoading.value &&
                        Injection.quizController.questionLength > 0)
                      Padding(
                        padding: SetWidget.paddingForm(),
                        child: const CustomLoadingPagegiantion(),
                      ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateQuestionScreen()));
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          if (Injection.quizController.isLoading.value &&
              Injection.quizController.questionLength.value == 0)
            const CustomLoading(),
        ],
      ),
    );
  }
}
