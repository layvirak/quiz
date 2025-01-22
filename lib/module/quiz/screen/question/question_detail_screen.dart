import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/app_logo.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/constrants/set_widget.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_show_detail_info.dart';
import 'package:lomhat/utils/widget/custom_title.dart';

import 'create_question/create_answer_screen.dart';
import 'create_question/create_question_screen.dart';

class QuestionDetailScreen extends StatefulWidget {
  final String? name;
  const QuestionDetailScreen({
    super.key,
    this.name,
  });

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  @override
  void initState() {
    Injection.quizController.onGetQuestionDetails(
      context,
      id: widget.name,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(widget.name!),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: Row(
                    children: [
                      const CustomTitle(
                        title: "Questions Details",
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateQuestionScreen(
                                name: widget.name,
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
                  child: CustomShowDetailInfo(
                    label: "Question",
                    value:
                        Injection.quizController.questionModel.value.question,
                  ),
                ),
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: CustomShowDetailInfo(
                    label: "Question Type",
                    value: Injection
                        .quizController.questionModel.value.questionType,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: SetWidget.paddingForm(),
                        child: CustomShowDetailInfo(
                          suffixIcon: Image.asset(AppImage.classes),
                          isVertical: true,
                          label: "Class",
                          value: Injection
                              .quizController.questionModel.value.classs,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: SetWidget.paddingForm(),
                        child: CustomShowDetailInfo(
                          isVertical: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              AppImage.subject,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          label: "Subject",
                          value: Injection
                              .quizController.questionModel.value.subject,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: SetWidget.paddingForm(),
                        child: CustomShowDetailInfo(
                          isVertical: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              AppImage.subject,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          label: "Visibility",
                          value: Injection
                              .quizController.questionModel.value.visibility,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: SetWidget.paddingForm(),
                  child: Row(
                    children: [
                      const CustomTitle(
                        title: "Answer Details",
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAnswerScreen(
                                name: widget.name,
                              ),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.border_color,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
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
                            const SizedBox(
                              width: 40,
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 150,
                              child: Text(
                                'Answer',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 150,
                              child: Text(
                                'matchAnswer',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "explanation",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(5),
                            SizedBox(
                              width: 100,
                              child: Text(
                                'is Correct',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            const Gap(10),
                          ],
                        ),
                      ),
                      ...Injection.quizController.questionModel.value.answers!
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
                                    width: 30,
                                    child: Text('${e.key + 1}.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(fontSize: 14)),
                                  ),
                                  const Gap(5),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      '${e.value.answer}',
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
                                      e.value.matchAnswer ?? '---',
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
                                      e.value.explanation ?? '---',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ),
                                  const Gap(5),
                                  SizedBox(
                                      width: 100,
                                      child: Center(
                                        child: e.value.isCorrect == 1
                                            ? const Icon(
                                                Icons.check_box_outlined)
                                            : const Icon(Icons
                                                .check_box_outline_blank_rounded),
                                      )),
                                  const Gap(10),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (Injection.quizController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
