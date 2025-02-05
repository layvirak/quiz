import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/module/new_quiz/screen/new_quiz/create_new_quiz.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../constrants/injection.dart';
import '../widget/new_quiz/custom_quiz_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.newQuizController.onGetQuiz(context);
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
              title: const Text('Quiz'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ...Injection.newQuizController.quizNewList
                      .asMap()
                      .entries
                      .map((e) {
                    return CustomQuizCard(
                      quizModel: e.value,
                    );
                  })
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              elevation: 0.0,
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateNewQuizScreen(),
                    ));
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          if (Injection.homeController.isLoading.value) const CustomLoading()
        ],
      ),
    );
  }
}
