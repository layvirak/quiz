import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/module/quiz/screen/do_quiz/do_quiz_screen.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import '../../../utils/widget/screen_responsive.dart';
import '../widget/custom_my_quiz_card.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Quiz"),
      // ),
      body: DynamicHeightGridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Injection.quizController.quizList.length,
        crossAxisCount: ScreenResponsive.isSmallScreen(context)
            ? 1
            : ScreenResponsive.isMediumScreen(context)
                ? 2
                : 3,
        builder: (context, index) => CustomMyQuizCard(
          quizModel: Injection.quizController.quizList[index],
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoQuizScreen(
                    index: index,
                  ),
                ));
          },
        ),
      ),
    );
  }
}
