import 'package:ditech_crm/module/quiz/widget/custom_four_draggable.dart';
import 'package:flutter/material.dart';

import '../widget/custom_quiz_card.dart';
import '../widget/custom_quiz_true_false_card.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body:
          // const CustomFourDraggable(),
          const SingleChildScrollView(
        child: Column(
          children: [
            CustomQuizCard(
              question: "Phnom Penh is in Cambodia",
            ),
            CustomQuizTrueFalseCard(
              question: "Penguins can fly.",
            ),
            CustomQuizCard(
              question: "Elephants are the largest land animals on Earth.",
            ),
            SizedBox(height: 500, child: CustomTwoDraggable()),
          ],
        ),
      ),
    );
  }
}
