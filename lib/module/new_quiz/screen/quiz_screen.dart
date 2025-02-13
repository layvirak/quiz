// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lomhat/module/quiz_2/screen/create_new_quiz.dart';
// import 'package:lomhat/utils/widget/custom_loading.dart';

// import '../../../constrants/injection.dart';
// import '../widget/new_quiz/custom_quiz_card.dart';
// import '../../quiz_2/screen/quiz_detail_screen.dart';

// class Quiz1Screen extends StatefulWidget {
//   const Quiz1Screen({super.key});

//   @override
//   State<Quiz1Screen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<Quiz1Screen> {
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Injection.quiz2Controller.onGetQuiz(context);
//       Injection.questionController.onGetQuestion(context);
//       Injection.quiz2Controller.onGetQuizDetails(context, '2502QZ-0000046');
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Stack(
//         children: [
//           Scaffold(
//             appBar: AppBar(
//               title: const Text('Quiz'),
//             ),
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ...Injection.newQuizController.quizNewList
//                       .asMap()
//                       .entries
//                       .map((e) {
//                     return CustomQuizCard(
//                       quizModel: e.value,
//                       ontap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => QuizDetailScreen(
//                                       id: e.value.name!,
//                                     )));
//                       },
//                     );
//                   })
//                 ],
//               ),
//             ),
//             floatingActionButton: FloatingActionButton(
//               elevation: 0.0,
//               backgroundColor: Theme.of(context).primaryColor,
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CreateNewQuizScreen(),
//                     ));
//               },
//               child: const Icon(
//                 Icons.add,
//                 color: Colors.white,
//                 size: 30,
//               ),
//             ),
//           ),
//           if (Injection.homeController.isLoading.value) const CustomLoading()
//         ],
//       ),
//     );
//   }
// }
