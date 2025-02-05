import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lomhat/constrants/set_widget.dart';
import 'package:lomhat/module/quiz/model/quiz2/quiz2_model.dart';

class CustomQuizCard extends StatelessWidget {
  const CustomQuizCard({
    super.key,
    this.ontap,
    this.quizModel,
  });

  final NewQuizModel? quizModel;
  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: SetWidget.paddingForm(),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
              color: Colors.black12,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  quizModel!.name!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            const Gap(5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Quiz Title: ",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    quizModel!.quizTitle ?? '__',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ],
            ),
            const Gap(5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Duration: ",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    quizModel!.quizDuration.toString(),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ],
            ),
            const Gap(5),
          ],
        ),
      ),
    );
  }
}
