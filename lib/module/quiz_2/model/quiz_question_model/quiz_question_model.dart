import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_question_model.freezed.dart';
part 'quiz_question_model.g.dart';

@freezed
class QuizQuestionModel with _$QuizQuestionModel {
  factory QuizQuestionModel({
    @Default('') final String creation,
    @Default(0) final int docstatus,
    @Default('') final String doctype,
    @Default(0) final int duration,
    @Default(0) final int idx,
    @Default('') final String modified,
    @Default('') @JsonKey(name: "modified_by") final String modifiedBy,
    @Default('') final String name,
    @Default('') final String owner,
    @Default('') final String parent,
    @Default('') final String parentfield,
    @Default('') final String parenttype,
    @Default('') final String question,
  }) = _QuizQuestionModel;

  factory QuizQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionModelFromJson(json);
}
