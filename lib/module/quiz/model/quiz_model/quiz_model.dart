import 'package:freezed_annotation/freezed_annotation.dart';

import '../quiz_item_model/quiz_item_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  factory QuizModel({
    final String? quizTitle,
    final List<QuizItemModel>? items,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
