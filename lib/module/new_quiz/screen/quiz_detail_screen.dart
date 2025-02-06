import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/constrants/set_widget.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../../utils/widget/custom_title.dart';
import '../widget/new_quiz/custom_quiz_detail.dart';
import 'new_quiz/create_new_quiz.dart';

class QuizDetailScreen extends StatefulWidget {
  final String id;
  const QuizDetailScreen({super.key, required this.id});

  @override
  State<QuizDetailScreen> createState() => _QuizDetailScreenState();
}

class _QuizDetailScreenState extends State<QuizDetailScreen> {
  @override
  void initState() {
    Injection.newQuizController.onGetQuizDetails(context, widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(widget.id),
            ),
            body: Column(
              children: [
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: Row(
                    children: [
                      const CustomTitle(
                        title: "Quiz Details",
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateNewQuizScreen(
                                id: widget.id,
                                updateQuestionList: Injection.newQuizController
                                    .quizDetatilModel.value.questions,
                              ),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.border_color,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: CustomQuizDetatilData(
                    label: 'Quiz Title',
                    value: Injection
                        .newQuizController.quizDetatilModel.value.quizTitle,
                  ),
                ),
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: CustomQuizDetatilData(
                    label: 'Quiz Duration',
                    value: Injection
                        .newQuizController.quizDetatilModel.value.quizDuration
                        .toString(),
                  ),
                ),
                const Gap(10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withValues(alpha: 0.08),
                        child: Row(
                          children: [
                            const Gap(10),
                            SizedBox(
                              width: 50,
                              child: Text(
                                "No.".toString(),
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Question",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 150,
                              child: Text(
                                'Duration',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(10),
                          ],
                        ),
                      ),
                      ...Injection
                          .newQuizController.quizDetatilModel.value.questions!
                          .asMap()
                          .entries
                          .map(
                            (e) => Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: e.key.isOdd
                                    ? Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withValues(alpha: 0.08)
                                    : Theme.of(context).colorScheme.surface,
                              ),
                              child: Row(
                                children: [
                                  const Gap(10),
                                  SizedBox(
                                    width: 50,
                                    child: Text('${e.key + 1}.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(fontSize: 14)),
                                  ),
                                  const Gap(5),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      e.value.question ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ),
                                  const Gap(5),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      e.value.duration.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ),
                                  const Gap(10),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (Injection.newQuizController.isLoadingDetails.value)
            const CustomLoading()
        ],
      ),
    );
  }
}
