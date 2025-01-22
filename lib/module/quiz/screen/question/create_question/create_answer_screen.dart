import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/utils/widget/custom_empty_state.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_validate.dart';

import '../../../../../constrants/injection.dart';
import '../../../../../constrants/set_widget.dart';
import '../../../../../utils/widget/custom_add_item.dart';
import '../../../../../utils/widget/custom_alert_repoonse.dart';
import '../../../../../utils/widget/custom_button.dart';
import '../../../../../utils/widget/custom_divider.dart';
import '../../../../../utils/widget/custom_textfield.dart';
import '../../../model/answers/answer_model.dart';

class CreateAnswerScreen extends StatefulWidget {
  final String? name;
  const CreateAnswerScreen({
    super.key,
    this.name,
  });

  @override
  State<CreateAnswerScreen> createState() => _CreateAnswerScreenState();
}

class _CreateAnswerScreenState extends State<CreateAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Answer'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: CustomAddItem(
                            title: "Add Question",
                            onPress: () {
                              final questions = <AnswerModel>[];
                              if (Injection.quizController.questionModel.value
                                      .answers !=
                                  null) {
                                questions.addAll(Injection.quizController
                                    .questionModel.value.answers!);
                              }
                              questions.add(
                                AnswerModel(),
                              );
                              Injection.quizController.questionModel.value =
                                  Injection.quizController.questionModel.value
                                      .copyWith(answers: questions);
                            },
                          ),
                        ),
                        if (Injection.quizController.questionModel.value
                                    .answers ==
                                null ||
                            Injection.quizController.questionModel.value
                                .answers!.isEmpty)
                          const CustomEmptyState(),
                        if (Injection
                                .quizController.questionModel.value.answers !=
                            null)
                          ...List.generate(
                            Injection.quizController.questionModel.value
                                .answers!.length,
                            (index) {
                              return Injection
                                      .quizController.isReloadAnswer.value
                                  ? const SizedBox()
                                  : Column(
                                      children: [
                                        Container(
                                          margin: SetWidget.paddingForm(),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .disabledColor
                                                  .withOpacity(0.5),
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
                                                          isRequired: true,
                                                          initialValue: Injection
                                                              .quizController
                                                              .questionModel
                                                              .value
                                                              .answers![index]
                                                              .answer!,
                                                          noBorder: true,
                                                          hintText: 'Answer',
                                                          onChange: (v) {
                                                            var setValue =
                                                                <AnswerModel>[];
                                                            setValue.addAll(Injection
                                                                .quizController
                                                                .questionModel
                                                                .value
                                                                .answers!);

                                                            setValue[index] =
                                                                setValue[index]
                                                                    .copyWith(
                                                              answer: v,
                                                              isValidate: false,
                                                            );
                                                            Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value
                                                                    .copyWith(
                                                                        isAnswers:
                                                                            false,
                                                                        answers:
                                                                            setValue);
                                                          },
                                                        ),
                                                      ),
                                                      const CustomVerticalDivider(),
                                                      IconButton(
                                                        icon: const Icon(
                                                            Icons.delete),
                                                        iconSize: 20,
                                                        color: Colors.red,
                                                        onPressed: () {
                                                          Injection
                                                              .quizController
                                                              .isReloadAnswer(
                                                                  true);
                                                          var setValue =
                                                              <AnswerModel>[];
                                                          setValue.addAll(
                                                              Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value
                                                                  .answers!);

                                                          setValue
                                                              .removeAt(index);

                                                          Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value =
                                                              Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value
                                                                  .copyWith(
                                                                      isAnswers:
                                                                          false,
                                                                      answers:
                                                                          setValue);
                                                          Timer(
                                                              const Duration(
                                                                  milliseconds:
                                                                      200), () {
                                                            Injection
                                                                .quizController
                                                                .isReloadAnswer(
                                                                    false);
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const CustomDivider(),
                                                IntrinsicHeight(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomTextField(
                                                          noBorder: true,
                                                          hintText:
                                                              'Match answer',
                                                          initialValue: Injection
                                                              .quizController
                                                              .questionModel
                                                              .value
                                                              .answers![index]
                                                              .matchAnswer!,
                                                          onChange: (v) {
                                                            var setValue =
                                                                <AnswerModel>[];
                                                            setValue.addAll(Injection
                                                                .quizController
                                                                .questionModel
                                                                .value
                                                                .answers!);

                                                            setValue[
                                                                index] = setValue[
                                                                    index]
                                                                .copyWith(
                                                                    matchAnswer:
                                                                        v);
                                                            Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value
                                                                    .copyWith(
                                                                        isAnswers:
                                                                            false,
                                                                        answers:
                                                                            setValue);
                                                          },
                                                        ),
                                                      ),
                                                      const CustomVerticalDivider(),
                                                      Expanded(
                                                        child: CustomTextField(
                                                          initialValue: Injection
                                                              .quizController
                                                              .questionModel
                                                              .value
                                                              .answers![index]
                                                              .explanation!,
                                                          noBorder: true,
                                                          hintText:
                                                              'Explanation',
                                                          onChange: (v) {
                                                            var setValue =
                                                                <AnswerModel>[];
                                                            setValue.addAll(Injection
                                                                .quizController
                                                                .questionModel
                                                                .value
                                                                .answers!);

                                                            setValue[
                                                                index] = setValue[
                                                                    index]
                                                                .copyWith(
                                                                    explanation:
                                                                        v);
                                                            Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value
                                                                    .copyWith(
                                                                        isAnswers:
                                                                            false,
                                                                        answers:
                                                                            setValue);
                                                          },
                                                        ),
                                                      ),
                                                      const CustomVerticalDivider(),
                                                      IconButton(
                                                        icon: Icon(Injection
                                                                    .quizController
                                                                    .questionModel
                                                                    .value
                                                                    .answers![
                                                                        index]
                                                                    .isCorrect ==
                                                                1
                                                            ? Icons.check_box
                                                            : Icons
                                                                .check_box_outline_blank),
                                                        iconSize: 20,
                                                        onPressed: () {
                                                          var setValue =
                                                              <AnswerModel>[];
                                                          setValue.addAll(
                                                              Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value
                                                                  .answers!);

                                                          setValue[
                                                              index] = setValue[
                                                                  index]
                                                              .copyWith(
                                                                  isCorrect:
                                                                      setValue[index].isCorrect ==
                                                                              1
                                                                          ? 0
                                                                          : 1);
                                                          Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value =
                                                              Injection
                                                                  .quizController
                                                                  .questionModel
                                                                  .value
                                                                  .copyWith(
                                                                      isAnswers:
                                                                          false,
                                                                      answers:
                                                                          setValue);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (Injection
                                            .quizController
                                            .questionModel
                                            .value
                                            .answers![index]
                                            .isValidate!)
                                          const CustomValidate(
                                            padding: EdgeInsets.only(left: 15),
                                            validateText: 'Please enter answer',
                                          ),
                                      ],
                                    );
                            },
                          ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                const CustomDivider(),
                Padding(
                  padding: SetWidget.paddingBottomWidget(),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          title: "Back",
                          isOutline: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomButton(
                          title: "Create",
                          onPressed: () {
                            if (Injection.quizController.questionModel.value
                                .answers!.isEmpty) {
                              CustomAlertResponse.showWarning(
                                  context: context,
                                  message: "Please add answer");
                            } else {
                              Injection
                                  .quizController.questionModel.value.answers!
                                  .asMap()
                                  .entries
                                  .map((value) {
                                if (value.value.answer == '') {
                                  var setValue = <AnswerModel>[];
                                  setValue.addAll(Injection.quizController
                                      .questionModel.value.answers!);
                                  setValue[value.key] = setValue[value.key]
                                      .copyWith(isValidate: true);
                                  Injection.quizController.questionModel.value =
                                      Injection
                                          .quizController.questionModel.value
                                          .copyWith(
                                    isAnswers: true,
                                    answers: setValue,
                                  );
                                }
                              }).toList();
                            }
                            if (!Injection.quizController.questionModel.value
                                .isAnswers!) {
                              if (widget.name == null) {
                                Injection.quizController
                                    .onCreateQuestion(context);
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (Injection.quizController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
