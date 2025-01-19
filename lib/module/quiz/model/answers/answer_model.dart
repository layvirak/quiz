import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel {
  factory AnswerModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'answer') final String? answer,
    @JsonKey(name: 'is_correct') final int? isCorrect,
    @JsonKey(name: 'parent') final String? parent,
    @JsonKey(name: 'parentfield') final String? parentfield,
    @JsonKey(name: 'parenttype') final String? parenttype,
    @JsonKey(name: 'doctype') final String? doctype,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}
