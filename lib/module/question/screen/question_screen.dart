import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lomhat/constrants/app_logo.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/question/model/filter_question_mode/filter_question_mode.dart';
import 'package:lomhat/utils/widget/custom_empty_state.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../constrants/set_widget.dart';
import '../../../utils/widget/custom_loading_pagegination.dart';
import '../widget/custom_question_card.dart';
import 'create_question/create_question_screen.dart';
import 'filter_question_screen.dart';

class QuestionScreen extends StatefulWidget {
  final Widget? drawer;
  const QuestionScreen({
    super.key,
    this.drawer,
  });

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.questionController.filterQuestion.value = FilterQuestionMode();
      Injection.questionController.questionLength.value = 0;
      Injection.questionController.onGetQuestion(context);
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
                              Injection.questionController.filterQuestion.value,
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
            drawer: widget.drawer,
            body: NotificationListener<ScrollUpdateNotification>(
              onNotification: ((scrollNotification) {
                if (scrollNotification.metrics.pixels ==
                    scrollNotification.metrics.maxScrollExtent) {
                  Injection.questionController.onGetQuestion(context);
                }
                return false;
              }),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (Injection.questionController.questionList.isEmpty)
                      const CustomEmptyState(),
                    ...Injection.questionController.questionList
                        .asMap()
                        .entries
                        .map((e) {
                      return CustomQuestionCard(
                        questionModel: e.value,
                        onTap: () {
                          context
                              .push('/question/${e.value.name}')
                              .then((value) {
                            Injection.questionController.questionList[e.key] =
                                Injection.questionController.questionModel.value
                                    .copyWith();
                          });
                        },
                      );
                    }),
                    if (Injection.questionController.isLoading.value &&
                        Injection.questionController.questionLength > 0)
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
          if (Injection.questionController.isLoading.value &&
              Injection.questionController.questionLength.value == 0)
            const CustomLoading(),
        ],
      ),
    );
  }
}
