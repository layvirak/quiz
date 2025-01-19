import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/utils/widget/custom_dropdown.dart';
import 'package:lomhat/utils/widget/custom_icon_back.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../../constrants/set_widget.dart';
import '../../../../utils/helper/debouncer.dart';
import '../../../../utils/widget/custom_button.dart';
import '../../../../utils/widget/custom_divider.dart';
import '../../../../utils/widget/custom_loading.dart';
import '../../model/filter_question_mode/filter_question_mode.dart';

class FilterQuestionScreen extends StatefulWidget {
  final FilterQuestionMode? filterQuestionMode;
  const FilterQuestionScreen({
    super.key,
    this.filterQuestionMode,
  });

  @override
  State<FilterQuestionScreen> createState() => _FilterQuestionScreenState();
}

class _FilterQuestionScreenState extends State<FilterQuestionScreen> {
  var filterQuestion = FilterQuestionMode();
  final nameCon = TextEditingController();
  final questionCon = TextEditingController();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.quizController.onGetFilterQuestion(context);
      Injection.optionController.onGetSubjectOption();
      Injection.optionController.onGetClassesOption();
    });
    nameCon.text = widget.filterQuestionMode!.name!;
    questionCon.text = widget.filterQuestionMode!.question!;
    super.initState();
  }

  final deb = Debouncer(
    const Duration(milliseconds: 500),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              leading: CustomIconBack(
                onTap: () {
                  Injection.quizController.filterQuestion.value =
                      widget.filterQuestionMode!.copyWith();
                  Navigator.pop(context);
                },
              ),
              title: const Text('Filters'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomTextField(
                            title: "ID",
                            hintText: "Enter ID",
                            controller: nameCon,
                            onChange: (value) {
                              deb.bounce(() {
                                Injection.quizController.filterQuestion.value =
                                    Injection
                                        .quizController.filterQuestion.value
                                        .copyWith(name: value);
                                Injection.quizController
                                    .onGetFilterQuestion(context);
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomTextField(
                            title: "Question",
                            hintText: "Enter question",
                            controller: questionCon,
                            onChange: (value) {
                              deb.bounce(() {
                                Injection.quizController.filterQuestion.value =
                                    Injection
                                        .quizController.filterQuestion.value
                                        .copyWith(question: value);
                                Injection.quizController
                                    .onGetFilterQuestion(context);
                              });
                            },
                          ),
                        ),
                        CustomDropDown(
                          margin: SetWidget.paddingForm(),
                          title: "Subject",
                          hintText: 'Select subject',
                          item: Injection.optionController.subjectGroupOption
                              .map((value) => value.name!)
                              .toList(),
                          itemDescription: Injection
                              .optionController.subjectGroupOption
                              .map((value) => value.description!)
                              .toList(),
                          initValue: Injection
                              .quizController.filterQuestion.value.subject,
                          onTap: (value) {
                            Injection.quizController.filterQuestion.value =
                                Injection.quizController.filterQuestion.value
                                    .copyWith(subject: value.value);
                            Injection.quizController
                                .onGetFilterQuestion(context);
                          },
                          onCancel: () {
                            Injection.quizController.filterQuestion.value =
                                Injection.quizController.filterQuestion.value
                                    .copyWith(subject: '');
                            Injection.quizController
                                .onGetFilterQuestion(context);
                          },
                        ),
                        CustomDropDown(
                          margin: SetWidget.paddingForm(),
                          title: "Class",
                          hintText: 'Select class',
                          item: Injection.optionController.classesGroupOpction
                              .map((value) => value.name!)
                              .toList(),
                          itemDescription: Injection
                              .optionController.classesGroupOpction
                              .map((value) => value.description!)
                              .toList(),
                          initValue: Injection
                              .quizController.filterQuestion.value.classs,
                          onTap: (value) {
                            Injection.quizController.filterQuestion.value =
                                Injection.quizController.filterQuestion.value
                                    .copyWith(classs: value.value);
                            Injection.quizController
                                .onGetFilterQuestion(context);
                          },
                          onCancel: () {
                            Injection.quizController.filterQuestion.value =
                                Injection.quizController.filterQuestion.value
                                    .copyWith(classs: '');
                            Injection.quizController
                                .onGetFilterQuestion(context);
                          },
                        ),
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
                          isOutline: true,
                          title: "clear",
                          onPressed: () {
                            Injection.quizController.filterQuestion.value =
                                FilterQuestionMode();
                            nameCon.clear();
                            questionCon.clear();
                            Injection.quizController.onGetFilterQuestion(
                              context,
                            );
                          },
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: CustomButton(
                          title:
                              "Apply (${Injection.quizController.filterQuestionList.length})",
                          onPressed: () {
                            Injection.quizController.questionLength.value = 0;
                            Injection.quizController
                                .onGetQuestion(
                              context,
                            )
                                .then((value) {
                              context.pop();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (Injection.quizController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
