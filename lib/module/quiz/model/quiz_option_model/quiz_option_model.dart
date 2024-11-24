import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_option_model.freezed.dart';
part 'quiz_option_model.g.dart';

@freezed
class QuizOptionModel with _$QuizOptionModel {
  factory QuizOptionModel({
    @Default('') final String? answer,
    @Default('') final String? answerMatch,
    @Default(0) final int? isCorrect,
    @Default(0) final int? isSelect,
    @Default(0) final int? score,
  }) = _QuizOptionModel;

  factory QuizOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionModelFromJson(json);
}
