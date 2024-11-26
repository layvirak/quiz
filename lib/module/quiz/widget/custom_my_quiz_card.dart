import 'package:ditech_crm/utils/widget/custom_status.dart';
import 'package:flutter/material.dart';

import '../../../utils/widget/custom_show_detail_info.dart';
import '../model/quiz_model/quiz_model.dart';

class CustomMyQuizCard extends StatelessWidget {
  final QuizModel? quizModel;
  final GestureTapCallback? onTap;
  const CustomMyQuizCard({
    super.key,
    this.quizModel,
    this.onTap,
  });

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
                  quizModel!.name!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const Spacer(),
                CustomStatus(status: quizModel!.status),
              ],
            ),
            CustomShowDetailInfo(
              label: "Title :",
              value: quizModel!.quizTitle,
            ),
            CustomShowDetailInfo(
              label: "Total Questions :",
              value: quizModel!.items!.length.toString(),
            )
          ],
        ),
      ),
    );
  }
}
