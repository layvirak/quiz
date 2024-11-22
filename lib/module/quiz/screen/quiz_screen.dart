import 'package:ditech_crm/module/quiz/widget/custom_four_draggable.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: const CustomTwoDraggable(),
      // const CustomFourDraggable(),
      // const SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       CustomQuizCard(
      //         question: "Phnom Penh is in Cambodia",
      //       ),
      //       CustomQuizCard(
      //         question: "The sun is a star.",
      //       ),
      //       CustomQuizCard(
      //         question: "Penguins can fly.",
      //         isMultipleSelect: true,
      //       ),
      //       CustomQuizCard(
      //         question: "Fish breathe underwater using their lungs.",
      //       ),
      //       CustomQuizTrueFalseCard(
      //         question: "Bananas grow on trees.",
      //       ),
      //       CustomQuizCard(
      //         question: "Elephants are the largest land animals on Earth.",
      //       ),
      //       Gap(20),
      //     ],
      //   ),
      // ),
    );
  }
}
