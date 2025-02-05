import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz2_model.freezed.dart';
part 'quiz2_model.g.dart';

@freezed
class NewQuizModel with _$NewQuizModel {
  factory NewQuizModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'quiz_title') final String? quizTitle,
    @JsonKey(name: 'quiz_duration') final int? quizDuration,
    @JsonKey(name: 'is_random') final int? isRandom,
  }) = _NewQuizModel;

  factory NewQuizModel.fromJson(Map<String, dynamic> json) =>
      _$NewQuizModelFromJson(json);
}
