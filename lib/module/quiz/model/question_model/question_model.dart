import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lomhat/module/question/model/answers/answer_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    @Default('') @JsonKey(name: 'name') final String? name,
    @Default('') @JsonKey(name: 'owner') final String? owner,
    @Default('') @JsonKey(name: 'creation') final String? creation,
    @Default('') @JsonKey(name: 'modified') final String? modified,
    @Default('') @JsonKey(name: 'modified_by') final String? modifiedBy,
    @Default(0) @JsonKey(name: 'docstatus') final int? docstatus,
    @Default(0) @JsonKey(name: 'idx') final int? idx,
    @Default('') @JsonKey(name: 'question') final String? question,
    @Default('') @JsonKey(name: 'question_type') final String? questionType,
    @Default('') @JsonKey(name: 'subject') final String? subject,
    @Default('') @JsonKey(name: 'class') final String? classs,
    @Default('') @JsonKey(name: 'visibility') final String? visibility,
    @Default('') @JsonKey(name: 'number_of_used') final String? numberOfUsed,
    @JsonKey(name: 'difficulty_level') final int? difficultyLevel,
    @Default(0) @JsonKey(name: 'disabled') final int? disabled,
    @Default('') @JsonKey(name: 'doctype') final String? doctype,
    @JsonKey(name: 'answers') final List<AnswerModel>? answers,
    @Default(false) final bool? isQuestion,
    @Default(false) final bool? isQuestionType,
    @Default(false) final bool? isSubject,
    @Default(false) final bool? isClass,
    @Default(false) final bool? isVisibility,
    @Default(false) final bool? isAnswers,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
