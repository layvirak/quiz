import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constrants/injection.dart';
import '../../../../../utils/widget/custom_dropdown.dart';
import '../../../../../utils/widget/custom_textfield.dart';

class CustomCreateQuestionCard extends StatelessWidget {
  final int index;
  const CustomCreateQuestionCard({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                            .newQuizController.questionDataList[index].question,
                        item:
                            Injection.questionController.questionList.map((e) {
                          return e.question!;
                        }).toList(),
                        onTap: (value) {
                          Injection.newQuizController.questionDataList[index] =
                              Injection
                                  .newQuizController.questionDataList[index]
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
                  initialValue: '',
                  onChange: (value) {
                    Injection.newQuizController.questionDataList[index] =
                        Injection.newQuizController.questionDataList[index]
                            .copyWith(duration: 0);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
