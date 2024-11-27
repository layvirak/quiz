import 'package:ditech_crm/constrants/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:get/get.dart';

import 'custom_match_type_card.dart';

class CustomQuizMatchType extends StatelessWidget {
  final int mainIndex;
  final int subIndex;
  const CustomQuizMatchType({
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
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: DraggableGridViewBuilder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    dragCompletion: (list, beforeIndex, afterIndex) {},
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3.5),
                      mainAxisSpacing: 10,
                    ),
                    children: Injection.quizController.quizList[mainIndex]
                        .items![subIndex].options!
                        .asMap()
                        .entries
                        .map((option) {
                      return DraggableGridItem(
                        isDraggable: true,
                        child: CustomMatchTypeCard(
                            answer: Injection.quizController.quizList[mainIndex]
                                .items![subIndex].options![option.key].answer!),
                      );
                    }).toList(),
                    dragPlaceHolder: (List<DraggableGridItem> list, int index) {
                      return PlaceHolderWidget(
                        child: Container(
                            // color: Colors.black,
                            ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: DraggableGridViewBuilder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    dragCompletion: (list, beforeIndex, afterIndex) {},
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3.5),
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                    ),
                    children: Injection.quizController.quizList[mainIndex]
                        .items![subIndex].options!
                        .asMap()
                        .entries
                        .map((option) {
                      return DraggableGridItem(
                        isDraggable: true,
                        child: CustomMatchTypeCard(
                            answer: Injection
                                .quizController
                                .quizList[mainIndex]
                                .items![subIndex]
                                .options![option.key]
                                .answerMatch!),
                      );
                    }).toList(),
                    dragChildWhenDragging: (list, index) => list[index].child,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
