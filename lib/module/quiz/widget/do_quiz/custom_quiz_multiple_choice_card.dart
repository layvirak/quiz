import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/utils/widget/custom_button.dart';
import 'package:lomhat/utils/widget/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomQuizMultipleChoiceCard extends StatelessWidget {
  final int mainIndex;
  final int subIndex;
  final int? number;
  const CustomQuizMultipleChoiceCard({
    super.key,
    this.mainIndex = 0,
    this.subIndex = 0,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Question ${subIndex + 1}",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
            child: Text(
              Injection.quizController.quizList[mainIndex].items![subIndex]
                      .question ??
                  '',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomDivider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: Injection.quizController.quizList[mainIndex]
                      .items![subIndex].options!
                      .asMap()
                      .entries
                      .map((value) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CustomButton(
                        color: value.value.isSelect == 1
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                        isDisable: value.value.isSelect == 1 ? false : true,
                        isDisableCanTap: true,
                        onPressed: () {
                          final updatedOptionToSelect = Injection
                              .quizController
                              .quizList[mainIndex]
                              .items![subIndex]
                              .options![value.key]
                              .copyWith(
                            isSelect: 1,
                          );

                          final updatedOptions = Injection.quizController
                              .quizList[mainIndex].items![subIndex].options!
                              .asMap()
                              .map(
                                (index, opt) => MapEntry(
                                  index,
                                  index == value.key
                                      ? updatedOptionToSelect
                                      : Injection
                                          .quizController
                                          .quizList[mainIndex]
                                          .items![subIndex]
                                          .options![index]
                                          .copyWith(
                                          isSelect: 0,
                                        ),
                                ),
                              )
                              .values
                              .toList();

                          final updatedItem = Injection.quizController
                              .quizList[mainIndex].items![subIndex]
                              .copyWith(options: updatedOptions);

                          final updatedItems = Injection
                              .quizController.quizList[mainIndex].items!
                              .asMap()
                              .map((index, item) => MapEntry(index,
                                  index == subIndex ? updatedItem : item))
                              .values
                              .toList();

                          final updatedQuiz = Injection
                              .quizController.quizList[mainIndex]
                              .copyWith(items: updatedItems);

                          final updatedQuizList = Injection
                              .quizController.quizList
                              .asMap()
                              .map((index, quiz) => MapEntry(index,
                                  index == mainIndex ? updatedQuiz : quiz))
                              .values
                              .toList();
                          Injection.quizController.quizList.value = [];
                          Injection.quizController.quizList
                              .addAll(updatedQuizList);
                        },
                        title: value.value.answer!,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
