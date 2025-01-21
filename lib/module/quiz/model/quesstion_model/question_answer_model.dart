import 'package:freezed_annotation/freezed_annotation.dart';

import '../answers/answer_model.dart';

part 'question_answer_model.freezed.dart';
part 'question_answer_model.g.dart';

@freezed
class QuestionAnswerModel with _$QuestionAnswerModel {
  factory QuestionAnswerModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') @Default(0) final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'question') final String? question,
    @JsonKey(name: 'question_type') final String? questionType,
    @JsonKey(name: 'subject') final String? subject,
    @JsonKey(name: 'class') final String? classs,
    @JsonKey(name: 'match_answer') final String? matchAnswer,
    @JsonKey(name: 'explanation') final String? explanation,
    @JsonKey(name: 'visibility') final String? visibility,
    @JsonKey(name: 'number_of_used') final String? numberOfUsed,
    @JsonKey(name: 'difficulty_level')
    @Default(0)
    final double? difficultyLevel,
    @JsonKey(name: 'disabled') @Default(0) final int? disabled,
    final List<AnswerModel>? answers,
  }) = _QuestionAnswerModel;

  factory QuestionAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerModelFromJson(json);
}
