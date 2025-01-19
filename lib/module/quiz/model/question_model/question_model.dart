import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lomhat/module/quiz/model/answers/answer_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'question') final String? question,
    @JsonKey(name: 'question_type') final String? questionType,
    @JsonKey(name: 'subject') final String? subject,
    @JsonKey(name: 'class') final String? classs,
    @JsonKey(name: 'visibility') final String? visibility,
    @JsonKey(name: 'number_of_used') final String? numberOfUsed,
    @JsonKey(name: 'difficulty_level') final int? difficultyLevel,
    @JsonKey(name: 'disabled') final int? disabled,
    @JsonKey(name: 'doctype') final String? doctype,
    @JsonKey(name: 'answers') final List<AnswerModel>? answers,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
