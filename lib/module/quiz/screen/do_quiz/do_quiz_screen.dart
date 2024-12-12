import 'package:lomhat/constrants/injection.dart';
import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constrants/set_widget.dart';
import '../../../../utils/widget/custom_button.dart';
import '../../widget/do_quiz/custom_quiz_checkbox_card.dart';
import '../../widget/do_quiz/custom_quiz_match_type.dart';
import '../../widget/do_quiz/custom_quiz_multiple_choice_card.dart';

class DoQuizScreen extends StatefulWidget {
  final int index;
  const DoQuizScreen({
    super.key,
    this.index = 0,
  });

  @override
  State<DoQuizScreen> createState() => _DoQuizScreenState();
}

class _DoQuizScreenState extends State<DoQuizScreen> {
  final PageController pageController = PageController();
  final PageController intPageController = PageController(
    viewportFraction: 0.15,
  );
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(Injection.quizController.quizList[widget.index].name!),
          actions: [
            FlipClockPlus.countdown(
              duration: const Duration(seconds: 200),
              digitColor: Colors.white,
              height: 15,
              width: 15,
              backgroundColor: Colors.blue,
              digitSize: 10.0,
              borderRadius: const BorderRadius.all(Radius.circular(3.0)),
              onDone: () {
                debugPrint('OnDone');
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: Injection.quizController.quizList[widget.index].items!
                    .asMap()
                    .entries
                    .map((item) {
                  if (item.value.type == "Multiple Choice" ||
                      item.value.type == "True/False") {
                    return CustomQuizMultipleChoiceCard(
                      number: item.key + 1,
                      mainIndex: widget.index,
                      subIndex: item.key,
                    );
                  } else if (item.value.type == "Match Answers") {
                    return CustomQuizMatchType(
                      mainIndex: widget.index,
                      index: item.key + 1,
                      subIndex: item.key,
                    );
                  } else {
                    return CustomQuizCheckBoxCard(
                      index: item.key + 1,
                      mainIndex: widget.index,
                      subIndex: item.key,
                    );
                  }
                }).toList(),
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                  intPageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            Padding(
              padding: SetWidget.paddingBottomWidget(),
              child: Column(
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          pageController.animateToPage(
                            (currentPage - 1),
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 35,
                          child: PageView(
                            padEnds: true,
                            controller: intPageController,
                            children: Injection
                                .quizController.quizList[widget.index].items!
                                .asMap()
                                .entries
                                .map((item) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentPage = item.key;
                                  });
                                  pageController.animateToPage(
                                    item.key,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut,
                                  );
                                  intPageController.animateToPage(
                                    item.key,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Center(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    // margin: const EdgeInsets.only(right: ),
                                    decoration: BoxDecoration(
                                      color: currentPage == item.key
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context).disabledColor,
                                      borderRadius: BorderRadius.circular(1000),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 0.5,
                                          color: Colors.black12,
                                        )
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Text(
                                        "${item.key + 1}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          pageController.animateToPage(
                            (currentPage + 1),
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onPressed: () {},
                    title: "Submit",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
