import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/quiz_2/screen/create_new_quiz.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../constrants/app_logo.dart';
import '../../../constrants/injection.dart';
import '../../../utils/widget/custom_empty_state.dart';
import '../model/filter_quiz_model/filter_quiz_model.dart';
import '../widget/custom_quiz_card.dart';
import 'filter_quiz_screen.dart';
import 'quiz_detail_screen.dart';

class QuizScreen extends StatefulWidget {
  final Widget? drawer;
  const QuizScreen({
    super.key,
    this.drawer,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.quiz2Controller.filterQuizModel.value = FilterQuizModel();
      Injection.questionController.onGetQuestion(context);
      Injection.quiz2Controller.quizLength.value = 0;
      Injection.quiz2Controller.onGetQuiz(context);
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
              title: const Text("Quiz"),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterQuizScreen(),
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
                  Injection.quiz2Controller.onGetQuiz(context);
                }
                return false;
              }),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (Injection.quiz2Controller.quizList.isEmpty)
                      const CustomEmptyState(),
                    ...Injection.quiz2Controller.quizList
                        .asMap()
                        .entries
                        .map((e) {
                      return CustomQuizCard(
                        quizModel: e.value,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizDetailScreen(
                                        id: e.value.name,
                                      )));
                        },
                      );
                    }),
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
                          builder: (context) => const CreateNewQuizScreen()));
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading()
        ],
      ),
    );
  }
}
