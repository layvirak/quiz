import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/utils/widget/custom_empty_state.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_validate.dart';

import '../../../../constrants/injection.dart';
import '../../../../constrants/set_widget.dart';
import '../../../../utils/widget/custom_add_item.dart';
import '../../../../utils/widget/custom_alert_repoonse.dart';
import '../../../../utils/widget/custom_button.dart';
import '../../../../utils/widget/custom_divider.dart';
import '../../../../utils/widget/custom_textfield.dart';
import '../../model/answers/answer_model.dart';

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
                              if (Injection.questionController.questionModel.value
                                      .answers !=
                                  null) {
                                questions.addAll(Injection.questionController
                                    .questionModel.value.answers!);
                              }
                              questions.add(
                                AnswerModel(),
                              );
                              Injection.questionController.questionModel.value =
                                  Injection.questionController.questionModel.value
                                      .copyWith(answers: questions);
                            },
                          ),
                        ),
                        if (Injection.questionController.questionModel.value
                                    .answers ==
                                null ||
                            Injection.questionController.questionModel.value
                                .answers!.isEmpty)
                          const CustomEmptyState(),
                        if (Injection
                                .questionController.questionModel.value.answers !=
                            null)
                          ...List.generate(
                            Injection.questionController.questionModel.value
                                .answers!.length,
                            (index) {
                              return Injection
                                      .questionController.isReloadAnswer.value
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
                                                          isRequired: true,
                                                          initialValue: Injection
                                                              .questionController
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
                                                                .questionController
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
                                                                    .questionController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .questionController
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
                                                              .questionController
                                                              .isReloadAnswer(
                                                                  true);
                                                          var setValue =
                                                              <AnswerModel>[];
                                                          setValue.addAll(
                                                              Injection
                                                                  .questionController
                                                                  .questionModel
                                                                  .value
                                                                  .answers!);

                                                          setValue
                                                              .removeAt(index);

                                                          Injection
                                                                  .questionController
                                                                  .questionModel
                                                                  .value =
                                                              Injection
                                                                  .questionController
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
                                                                .questionController
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
                                                              .questionController
                                                              .questionModel
                                                              .value
                                                              .answers![index]
                                                              .matchAnswer!,
                                                          onChange: (v) {
                                                            var setValue =
                                                                <AnswerModel>[];
                                                            setValue.addAll(Injection
                                                                .questionController
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
                                                                    .questionController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .questionController
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
                                                              .questionController
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
                                                                .questionController
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
                                                                    .questionController
                                                                    .questionModel
                                                                    .value =
                                                                Injection
                                                                    .questionController
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
                                                                    .questionController
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
                                                                  .questionController
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
                                                                  .questionController
                                                                  .questionModel
                                                                  .value =
                                                              Injection
                                                                  .questionController
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
                                            .questionController
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
                          title: widget.name == null ? "Create" : "Save",
                          onPressed: () {
                            if (Injection.questionController.questionModel.value
                                .answers!.isEmpty) {
                              CustomAlertResponse.showWarning(
                                  context: context,
                                  message: "Please add answer");
                            } else {
                              Injection
                                  .questionController.questionModel.value.answers!
                                  .asMap()
                                  .entries
                                  .map((value) {
                                if (value.value.answer == '') {
                                  var setValue = <AnswerModel>[];
                                  setValue.addAll(Injection.questionController
                                      .questionModel.value.answers!);
                                  setValue[value.key] = setValue[value.key]
                                      .copyWith(isValidate: true);
                                  Injection.questionController.questionModel.value =
                                      Injection
                                          .questionController.questionModel.value
                                          .copyWith(
                                    isAnswers: true,
                                    answers: setValue,
                                  );
                                }
                              }).toList();
                            }
                            if (!Injection.questionController.questionModel.value
                                .isAnswers!) {
                              if (widget.name == null) {
                                Injection.questionController
                                    .onCreateQuestion(context);
                              } else {
                                Injection.questionController.onUpdateAnswerDetail(
                                    context,
                                    name: widget.name);
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
          if (Injection.questionController.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
