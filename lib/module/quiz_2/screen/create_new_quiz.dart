import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/module/quiz_2/model/quiz_details/quiz_details_model.dart';
import 'package:lomhat/utils/widget/custom_add_item.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../constrants/set_widget.dart';
import '../../../utils/widget/custom_check_box.dart';
import '../../../utils/widget/custom_dropdown.dart';
import '../model/quiz_question_model/quiz_question_model.dart';

class CreateNewQuizScreen extends StatefulWidget {
  final String? id;
  final List<QuizQuestionModel>? updateQuestionList;

  const CreateNewQuizScreen({super.key, this.id = '', this.updateQuestionList});

  @override
  State<CreateNewQuizScreen> createState() => _CreateNewQuizScreenState();
}

var quizTitle = TextEditingController();
var duration = TextEditingController(text: '0');

class _CreateNewQuizScreenState extends State<CreateNewQuizScreen> {
  @override
  void initState() {
    if (widget.id == '' || widget.id == null) {
      Injection.quiz2Controller.quizDetatilModel.value = QuizDetailsModel();
      Injection.quiz2Controller.questionDataList.value = <QuizQuestionModel>[];
    }
    if (widget.updateQuestionList != [] && widget.updateQuestionList != null) {
      Injection.quiz2Controller.questionDataList.value = [];
      Injection.quiz2Controller.questionDataList
          .addAll(widget.updateQuestionList!);
    }
    quizTitle.text =
        Injection.quiz2Controller.quizDetatilModel.value.quizTitle ?? "";
    duration.text = Injection
        .quiz2Controller.quizDetatilModel.value.quizDuration
        .toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(widget.id == '' || widget.id == null
                  ? "Create Quiz"
                  : "Update Quiz"),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomTextField(
                            title: "Quiz Title",
                            isRequired: true,
                            hintText: "Enter quiz title",
                            isValidate: Injection.quiz2Controller
                                .quizDetatilModel.value.isQuizTitle,
                            validateText: "Please input the quiz title",
                            controller: quizTitle,
                            onChange: (value) {
                              Injection.quiz2Controller.quizDetatilModel.value =
                                  Injection
                                      .quiz2Controller.quizDetatilModel.value
                                      .copyWith(
                                          quizTitle: value, isQuizTitle: false);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomTextField(
                            title: "Quiz Duration",
                            isRequired: true,
                            hintText: "Enter quiz duration",
                            isValidate: Injection.quiz2Controller
                                .quizDetatilModel.value.isQuizDuration,
                            validateText: "Please input the quiz duration",
                            controller: duration,
                            onChange: (value) {
                              var duration =
                                  value == "" ? 0 : double.parse(value);
                              Injection.quiz2Controller.quizDetatilModel.value =
                                  Injection
                                      .quiz2Controller.quizDetatilModel.value
                                      .copyWith(
                                          quizDuration: duration.toInt(),
                                          isQuizDuration: false);
                            },
                          ),
                        ),
                        Padding(
                          padding: SetWidget.paddingForm(),
                          child: CustomCheckBox(
                            isSelect: Injection.quiz2Controller.quizDetatilModel
                                    .value.isRandom ==
                                1,
                            text: 'Random Questions',
                            onTap: () {
                              Injection.quiz2Controller.quizDetatilModel.value =
                                  Injection
                                      .quiz2Controller.quizDetatilModel.value
                                      .copyWith(
                                          isRandom: Injection
                                                      .quiz2Controller
                                                      .quizDetatilModel
                                                      .value
                                                      .isRandom ==
                                                  1
                                              ? 0
                                              : 1);
                            },
                          ),
                        ),

                        /**********************Add Question */
                        ...Injection.quiz2Controller.questionDataList
                            .asMap()
                            .entries
                            .map((item) {
                          return Container(
                            margin: const EdgeInsets.only(
                                left: 15, right: 15, top: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0.5,
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: CustomDropDown(
                                        title: "Question",
                                        hintText: "Enter question",
                                        isRequire: true,
                                        initValue: Injection
                                            .quiz2Controller
                                            .questionDataList[item.key]
                                            .question,
                                        item: Injection
                                            .questionController.questionList
                                            .map((e) {
                                          return e.name!;
                                        }).toList(),
                                        itemDescription: Injection
                                            .questionController.questionList
                                            .map((e) {
                                          return e.question!;
                                        }).toList(),
                                        onTap: (value) {
                                          Injection.quiz2Controller
                                                  .questionDataList[item.key] =
                                              Injection.quiz2Controller
                                                  .questionDataList[item.key]
                                                  .copyWith(
                                            question: value.value,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomTextField(
                                  title: "Duration",
                                  hintText: "Select duration",
                                  isRequired: true,
                                  initialValue: Injection.quiz2Controller
                                      .questionDataList[item.key].duration
                                      .toString(),
                                  onChange: (value) {
                                    var duration =
                                        value == "" ? 0 : double.parse(value);
                                    Injection.quiz2Controller
                                            .questionDataList[item.key] =
                                        Injection.quiz2Controller
                                            .questionDataList[item.key]
                                            .copyWith(
                                                duration: duration.toInt());
                                  },
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: CustomAddItem(
                            title: "Add Question",
                            onPress: () {
                              Injection.quiz2Controller.questionDataList.add(
                                QuizQuestionModel(question: ''),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: SetWidget.paddingBottomWidget(),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isOutline: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          title: "Back",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomButton(
                          onPressed: () {
                            if (Injection.quiz2Controller.quizDetatilModel.value
                                        .quizTitle ==
                                    '' ||
                                Injection.quiz2Controller.quizDetatilModel.value
                                        .quizTitle ==
                                    null) {
                              Injection.quiz2Controller.quizDetatilModel.value =
                                  Injection
                                      .quiz2Controller.quizDetatilModel.value
                                      .copyWith(isQuizTitle: true);
                            }
                            if (Injection.quiz2Controller.quizDetatilModel.value
                                        .quizDuration
                                        .toString() ==
                                    '' ||
                                Injection.quiz2Controller.quizDetatilModel.value
                                        .quizDuration ==
                                    null) {
                              Injection.quiz2Controller.quizDetatilModel.value =
                                  Injection
                                      .quiz2Controller.quizDetatilModel.value
                                      .copyWith(isQuizDuration: true);
                            }

                            //*************submit */
                            if (!Injection.quiz2Controller.quizDetatilModel
                                    .value.isQuizTitle! &&
                                !Injection.quiz2Controller.quizDetatilModel
                                    .value.isQuizDuration!) {
                              if (widget.id == '' || widget.id == null) {
                                Injection.quiz2Controller.onCreateQuiz(context);
                              } else {
                                Injection.quiz2Controller
                                    .onUpdateQuiz(context, '2502QZ-0000046');
                              }
                            }
                          },
                          title: widget.id == '' || widget.id == null
                              ? "Submit"
                              : "Update",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (Injection.quiz2Controller.isLoadingCreate.value)
            const CustomLoading(),
        ],
      ),
    );
  }
}
