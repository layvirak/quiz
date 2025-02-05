import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_question.freezed.dart';
part 'create_question.g.dart';

@freezed
class CreateQuestionModel with _$CreateQuestionModel {
  factory CreateQuestionModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'owner') final String? owner,
    @JsonKey(name: 'creation') final String? creation,
    @JsonKey(name: 'modified') final String? modified,
    @JsonKey(name: 'modified_by') final String? modifiedBy,
    @JsonKey(name: 'docstatus') final int? docstatus,
    @JsonKey(name: 'idx') final int? idx,
    @JsonKey(name: 'question') final String? question,
    @JsonKey(name: 'duration') @Default(0) final int? duration,
    @JsonKey(name: 'parent') final String? parent,
    @JsonKey(name: 'parentfield') final String? parentfield,
    @JsonKey(name: 'parenttype') final String? parenttype,
    @JsonKey(name: 'doctype') final String? doctype,
  }) = _CreateQuestionModel;

  factory CreateQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$CreateQuestionModelFromJson(json);
}
