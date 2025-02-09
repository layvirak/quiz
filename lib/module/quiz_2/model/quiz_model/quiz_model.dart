import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lomhat/module/quiz_2/model/quiz_question_model/quiz_question_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  factory QuizModel({
    @Default('') final String creation,
    @Default(0) final int docstatus,
    @Default(0) final int doctype,
    @Default(0) final int idx,
    @Default(0) final int isRandom,
    @Default('') final String modified,
    @Default('') @JsonKey(name: "modified_by") final String modifiedBy,
    @Default('') final String name,
    @Default('') final String owner,
    @Default(0) @JsonKey(name: "quiz_duration") final int quizDuration,
    @Default('') @JsonKey(name: "quiz_title") final String quizTitle,
    final List<QuizQuestionModel>? questions,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
