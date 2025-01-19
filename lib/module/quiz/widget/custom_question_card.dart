import 'package:flutter/material.dart';
import 'package:lomhat/module/quiz/model/quesstion_model/question_answer_model.dart';

import '../../../utils/widget/custom_show_detail_info.dart';
import '../../../utils/widget/custom_status.dart';

class CustomQuestionCard extends StatelessWidget {
  final Function()? onTap;
  final QuestionAnswerModel? questionModel;
  const CustomQuestionCard({super.key, this.onTap, this.questionModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
        padding: const EdgeInsets.all(10),
        // height: 100,
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
          children: [
            Row(
              children: [
                Text(
                  questionModel!.name!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const Spacer(),
                CustomStatus(
                    status:
                        questionModel!.disabled == 0 ? "Enbled" : "Disable"),
              ],
            ),
            CustomShowDetailInfo(
              label: "Question :",
              value: questionModel!.question,
            ),
            CustomShowDetailInfo(
              label: "Question Type :",
              value: questionModel!.questionType,
            ),
          ],
        ),
      ),
    );
  }
}
