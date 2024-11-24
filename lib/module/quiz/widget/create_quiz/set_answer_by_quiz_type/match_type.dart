import 'dart:async';

import 'package:ditech_crm/constrants/injection.dart';
import 'package:ditech_crm/utils/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchType extends StatelessWidget {
  final int subIndex, mainIndex;
  const MatchType({
    super.key,
    this.mainIndex = 0,
    this.subIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextField(
              hintText: "answer",
              initialValue: Injection.quizController.quiz.value
                  .items![mainIndex].options![subIndex].answer,
              onChange: (value) {
                final updatedOptions = Injection
                    .quizController.quiz.value.items![mainIndex].options!
                    .asMap()
                    .entries
                    .map((entry) {
                  final index = entry.key;
                  final option = entry.value;
                  // Update the specific `subIndex` option
                  return index == subIndex
                      ? option.copyWith(
                          answer: value,
                        ) // Toggle `isCorrect`
                      : option; // Keep other options unchanged
                }).toList(); // Convert to a mutable list

                // Step 2: Update the specific item in `items`
                final updatedItem = Injection
                    .quizController.quiz.value.items![mainIndex]
                    .copyWith(options: updatedOptions);

                // Step 3: Clone the `items` list with the updated item
                final updatedItems = Injection.quizController.quiz.value.items!
                    .asMap()
                    .entries
                    .map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  return index == mainIndex
                      ? updatedItem
                      : item; // Update only the target item
                }).toList();

                // Step 4: Replace the entire `items` list in the controller
                Injection.quizController.quiz.value =
                    Injection.quizController.quiz.value.copyWith(
                  items: updatedItems,
                );
              },
            ),
          ),
          const Icon(
            Icons.sync_alt,
            size: 15,
          ),
          Expanded(
            child: CustomTextField(
              hintText: "answer",
              initialValue: Injection.quizController.quiz.value
                  .items![mainIndex].options![subIndex].answerMatch,
              onChange: (value) {
                final updatedOptions = Injection
                    .quizController.quiz.value.items![mainIndex].options!
                    .asMap()
                    .entries
                    .map((entry) {
                  final index = entry.key;
                  final option = entry.value;
                  // Update the specific `subIndex` option
                  return index == subIndex
                      ? option.copyWith(
                          answerMatch: value,
                        ) // Toggle `isCorrect`
                      : option; // Keep other options unchanged
                }).toList(); // Convert to a mutable list

                // Step 2: Update the specific item in `items`
                final updatedItem = Injection
                    .quizController.quiz.value.items![mainIndex]
                    .copyWith(options: updatedOptions);

                // Step 3: Clone the `items` list with the updated item
                final updatedItems = Injection.quizController.quiz.value.items!
                    .asMap()
                    .entries
                    .map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  return index == mainIndex
                      ? updatedItem
                      : item; // Update only the target item
                }).toList();

                // Step 4: Replace the entire `items` list in the controller
                Injection.quizController.quiz.value =
                    Injection.quizController.quiz.value.copyWith(
                  items: updatedItems,
                );
              },
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Injection.quizController.isReloadSub(true);

              // Step 1: Create a new list of `options` excluding the `subIndex` element
              final updatedOptions = Injection
                  .quizController.quiz.value.items![mainIndex].options!
                  .asMap()
                  .entries
                  .where((entry) =>
                      entry.key != subIndex) // Exclude the target index
                  .map((entry) => entry.value) // Keep the remaining options
                  .toList(); // Convert back to a list

              // Step 2: Update the specific `QuizItemModel` with the new `options` list
              final updatedItem = Injection
                  .quizController.quiz.value.items![mainIndex]
                  .copyWith(options: updatedOptions);

              // Step 3: Create a new list of `items` with the updated item
              final updatedItems = Injection.quizController.quiz.value.items!
                  .asMap()
                  .entries
                  .map((entry) {
                final index = entry.key;
                final item = entry.value;

                return index == mainIndex
                    ? updatedItem
                    : item; // Replace the updated item
              }).toList();

              // Step 4: Update the entire `items` list in the state
              Injection.quizController.quiz.value =
                  Injection.quizController.quiz.value.copyWith(
                items: updatedItems,
              );
              Timer(const Duration(milliseconds: 100), () {
                Injection.quizController.isReloadSub(false);
              });
            },
            child: const Icon(
              Icons.delete_rounded,
              size: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
