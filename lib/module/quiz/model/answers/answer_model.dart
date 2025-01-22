import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel {
  factory AnswerModel({
    @Default('') @JsonKey(name: 'name') final String? name,
    @Default('') @JsonKey(name: 'owner') final String? owner,
    @Default('') @JsonKey(name: 'creation') final String? creation,
    @Default('') @JsonKey(name: 'modified') final String? modified,
    @Default('') @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @Default(0) @JsonKey(name: 'idx') final int? idx,
    @Default('') @JsonKey(name: 'answer') final String? answer,
    @Default(0) @JsonKey(name: 'is_correct') final int? isCorrect,
    @Default('') @JsonKey(name: 'parent') final String? parent,
    @Default('')
    @JsonKey(name: 'parentfield')
    @Default('')
    final String? parentfield,
    @Default('') @JsonKey(name: 'parenttype') final String? parenttype,
    @Default('') @JsonKey(name: 'doctype') final String? doctype,
    //add new
    @Default('') final String? explanation,
    @Default('') @JsonKey(name: 'match_answer') final String? matchAnswer,
    @Default(false) final bool? isValidate,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}
