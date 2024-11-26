import 'package:ditech_crm/constrants/injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constrants/set_widget.dart';
import '../../../../utils/widget/custom_button.dart';
import '../../widget/do_quiz/custom_quiz_checkbox_card.dart';
import '../../widget/do_quiz/custom_quiz_multiple_choice_card.dart';
import '../../widget/do_quiz/custom_two_draggable.dart';

class DoQuizScreen extends StatelessWidget {
  final int index;
  const DoQuizScreen({
    super.key,
    this.index = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(Injection.quizController.quizList[index].name!),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: Injection.quizController.quizList[index].items!
                      .asMap()
                      .entries
                      .map((item) {
                    if (item.value.type == "Multiple Choice" ||
                        item.value.type == "True/False") {
                      return CustomQuizMultipleChoiceCard(
                        mainIndex: index,
                        subIndex: item.key,
                      );
                    } else if (item.value.type == "Match Answers") {
                      const SizedBox(height: 500, child: CustomTwoDraggable());
                    } else {
                      return CustomQuizCheckBoxCard(
                        mainIndex: index,
                        subIndex: item.key,
                      );
                    }
                    return Container(
                      height: 20,
                      color: Colors.red,
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: SetWidget.paddingBottomWidget(),
              child: CustomButton(
                onPressed: () {},
                title: "Submit",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
