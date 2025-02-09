import 'package:flutter/material.dart';

import '../../../utils/widget/custom_show_detail_info.dart';
import '../model/quiz_model/quiz_model.dart';

class CustomQuizCard extends StatelessWidget {
  final QuizModel? quizModel;
  final GestureTapCallback? ontap;
  const CustomQuizCard({
    super.key,
    this.quizModel,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            quizModel!.name,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          CustomShowDetailInfo(
            label: "Duration",
            value: quizModel!.quizDuration.toString(),
          ),
          CustomShowDetailInfo(
            label: "Title",
            value: quizModel!.quizTitle,
          ),
        ],
      ),
    );
  }
}
