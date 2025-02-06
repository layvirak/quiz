import 'package:freezed_annotation/freezed_annotation.dart';

import '../create_question/create_question.dart';

part 'quiz_details_model.freezed.dart';
part 'quiz_details_model.g.dart';

@freezed
class QuizDetailsModel with _$QuizDetailsModel {
  factory QuizDetailsModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'quiz_title') final String? quizTitle,
    @JsonKey(name: 'quiz_duration') @Default(0) final int? quizDuration,
    @JsonKey(name: 'is_random') final int? isRandom,
    @JsonKey(name: 'doctype') final String? doctype,
    @JsonKey(name: 'questions')
    @Default([])
    final List<CreateQuestionModel>? questions,
    @Default(false) final bool? isQuizDuration,
    @Default(false) final bool? isQuizTitle,
    @Default(false) final bool? isQuestion,
  }) = _QuizDetailsModel;

  factory QuizDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$QuizDetailsModelFromJson(json);
}
