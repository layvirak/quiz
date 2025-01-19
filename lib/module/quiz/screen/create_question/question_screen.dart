import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomhat/constrants/injection.dart';
import 'package:lomhat/utils/widget/custom_loading.dart';

import '../../widget/custom_question_card.dart';
import 'create_question_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    Injection.quizController.onGetQuestion(context);
    Injection.quizController.onGetQuestionDetails(context, id: "Q25011500003");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text("Question"),
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ...Injection.quizController.questionList
                          .asMap()
                          .entries
                          .map((e) {
                        return CustomQuestionCard(
                          questionModel: e.value,
                          onTap: () {},
                        );
                      })
                    ]),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateQuestionScreen()));
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          if (Injection.quizController.isLoading.value) const CustomLoading(),
        ],
      ),
    );
  }
}
