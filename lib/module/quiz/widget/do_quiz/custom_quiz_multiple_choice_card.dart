import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/utils/widget/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomQuizMultipleChoiceCard extends StatelessWidget {
  final int mainIndex;
  final int subIndex;
  const CustomQuizMultipleChoiceCard({
    super.key,
    this.mainIndex = 0,
    this.subIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Injection.quizController.quizList[mainIndex].items![subIndex]
                      .question ??
                  '',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Column(
              children: Injection
                  .quizController.quizList[mainIndex].items![subIndex].options!
                  .asMap()
                  .entries
                  .map((value) {
                return CustomCheckBox(
                  isSelect: value.value.isSelect == 1,
                  onTap: () {
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
                                : Injection.quizController.quizList[mainIndex]
                                    .items![subIndex].options![value.key]
                                    .copyWith(
                                    isSelect: 0,
                                  ),
                          ),
                        )
                        .values
                        .toList();

                    final updatedItem = Injection
                        .quizController.quizList[mainIndex].items![subIndex]
                        .copyWith(options: updatedOptions);

                    final updatedItems = Injection
                        .quizController.quizList[mainIndex].items!
                        .asMap()
                        .map((index, item) => MapEntry(
                            index, index == subIndex ? updatedItem : item))
                        .values
                        .toList();

                    final updatedQuiz = Injection
                        .quizController.quizList[mainIndex]
                        .copyWith(items: updatedItems);

                    final updatedQuizList = Injection.quizController.quizList
                        .asMap()
                        .map((index, quiz) => MapEntry(
                            index, index == mainIndex ? updatedQuiz : quiz))
                        .values
                        .toList();
                    Injection.quizController.quizList.value = [];
                    Injection.quizController.quizList.addAll(updatedQuizList);
                  },
                  text: value.value.answer!,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
