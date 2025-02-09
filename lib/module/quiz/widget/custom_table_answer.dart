import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/question/model/answers/answer_model.dart';

import '../../../utils/widget/custom_add_item.dart';
import '../../../utils/widget/custom_divider.dart';
import '../../../utils/widget/custom_textfield.dart';
import '../../question/model/quesstion_model/question_model.dart';

class CustomTableAnswer extends StatefulWidget {
  final String? name, customer, currency, doc;

  // final List<ItemModel>? upDateItemList; 
  final GestureTapCallback? onTap;
  final bool? isPaid;
  const CustomTableAnswer(
      {super.key,
      this.name,
      this.customer,
      this.currency,
      this.doc,
      this.onTap,
      this.isPaid});

  @override
  State<CustomTableAnswer> createState() => _CustomTableAnswerState();
}

class _CustomTableAnswerState extends State<CustomTableAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Theme.of(context)
                            .disabledColor
                            .withValues(alpha: 0.5),
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                    noBorder: true,
                                    hintText: 'Enter answer',
                                    onChange: (v) {},
                                  ),
                                ),
                                const CustomVerticalDivider(),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  iconSize: 20,
                                  color: Colors.red,
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          const CustomDivider(),
                          ...List.generate(
                              Injection.quizController.question.value.answers!
                                  .length, (indexItem) {
                            return IntrinsicHeight(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      isRequired: true,
                                      noBorder: true,
                                      hintText: 'Match answer',
                                      onChange: (v) {},
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      isRequired: true,
                                      initialValue: '',
                                      noBorder: true,
                                      hintText: 'Explanation',
                                      onChange: (v) {},
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: CustomAddItem(
                      title: "Add Question",
                      onPress: () {
                        final questions = <AnswerModel>[];
                        if (Injection.quizController.question.value !=
                                QuestionModel() &&
                            Injection.quizController.question.value.answers!
                                .isNotEmpty) {
                          questions.addAll(
                              Injection.quizController.question.value.answers!);
                        }
                        questions.add(
                          AnswerModel(),
                        );
                        Injection.quizController.question.value = Injection
                            .quizController.question.value
                            .copyWith(answers: questions);
                      },
                    ),
                  ),
                ],
              ),
              const Gap(20),
            ],
          ),
        ),
      ],
    );
  }
}
