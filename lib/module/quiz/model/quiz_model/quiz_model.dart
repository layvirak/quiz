import 'package:freezed_annotation/freezed_annotation.dart';

import '../quiz_item_model/quiz_item_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  factory QuizModel({
    @Default('A1212') final String? name,
    @Default('Open') final String? status,
    @Default('') final String? quizTitle,
    final List<QuizItemModel>? items,
    @Default(false) final bool? isQuizTitle,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
