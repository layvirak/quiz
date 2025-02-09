import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/utils/widget/custom_icon_back.dart';
import 'package:lomhat/utils/widget/custom_textfield.dart';

import '../../../constrants/set_widget.dart';
import '../../../utils/helper/debouncer.dart';
import '../../../utils/widget/custom_button.dart';
import '../../../utils/widget/custom_divider.dart';
import '../model/filter_quiz_model/filter_quiz_model.dart';

class FilterQuizScreen extends StatefulWidget {
  const FilterQuizScreen({super.key});

  @override
  State<FilterQuizScreen> createState() => _FilterQuizScreenState();
}

class _FilterQuizScreenState extends State<FilterQuizScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Injection.quiz2Controller.onGetFilterQuiz(context);
      filterQuizModel =
          Injection.quiz2Controller.filterQuizModel.value.copyWith();
    });

    nameCon.text = Injection.quiz2Controller.filterQuizModel.value.name;
    titleCon.text = Injection.quiz2Controller.filterQuizModel.value.title;
    super.initState();
  }

  var filterQuizModel = FilterQuizModel();
  final nameCon = TextEditingController();
  final titleCon = TextEditingController();
  final deb = Debouncer(
    const Duration(milliseconds: 500),
  );
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Filter'),
          leading: CustomIconBack(
            onTap: () {
              Injection.quiz2Controller.filterQuizModel.value =
                  filterQuizModel.copyWith();
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: SetWidget.paddingForm(),
                    child: CustomTextField(
                      title: "ID",
                      hintText: "Enter id",
                      controller: nameCon,
                      onChange: (value) {
                        Injection.quiz2Controller.filterQuizModel.value =
                            Injection.quiz2Controller.filterQuizModel.value
                                .copyWith(
                          name: value,
                        );
                        deb.bounce(() {
                          Injection.quiz2Controller.onGetFilterQuiz(context);
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: SetWidget.paddingForm(),
                    child: CustomTextField(
                      title: "Title",
                      hintText: "Enter title",
                      controller: titleCon,
                      onChange: (value) {
                        Injection.quiz2Controller.filterQuizModel.value =
                            Injection.quiz2Controller.filterQuizModel.value
                                .copyWith(
                          title: value,
                        );
                        deb.bounce(() {
                          Injection.quiz2Controller.onGetFilterQuiz(context);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: SetWidget.paddingBottomWidget(),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      isOutline: true,
                      title: "clear",
                      onPressed: () {
                        Injection.quiz2Controller.filterQuizModel.value =
                            FilterQuizModel();
                        nameCon.clear();
                        titleCon.clear();

                        Injection.quiz2Controller.onGetFilterQuiz(
                          context,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      title:
                          "Apply (${Injection.quiz2Controller.filterQuizList.length})",
                      onPressed: () {
                        Injection.quiz2Controller.quizLength.value = 0;
                        Injection.quiz2Controller
                            .onGetQuiz(
                          context,
                        )
                            .then((value) {
                          Navigator.pop(context);
                        });
                      },
                    ),
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
