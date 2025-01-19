// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionAnswerModelImpl _$$QuestionAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionAnswerModelImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      question: json['question'] as String?,
      questionType: json['question_type'] as String?,
      subject: json['subject'] as String?,
      classs: json['class'] as String?,
      matchAnswer: json['match_answer'] as String?,
      explanation: json['explanation'] as String?,
      visibility: json['visibility'] as String?,
      numberOfUsed: json['number_of_used'] as String?,
      difficultyLevel: (json['difficulty_level'] as num?)?.toDouble(),
      disabled: (json['disabled'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuestionAnswerModelImplToJson(
        _$QuestionAnswerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'question': instance.question,
      'question_type': instance.questionType,
      'subject': instance.subject,
      'class': instance.classs,
      'match_answer': instance.matchAnswer,
      'explanation': instance.explanation,
      'visibility': instance.visibility,
      'number_of_used': instance.numberOfUsed,
      'difficulty_level': instance.difficultyLevel,
      'disabled': instance.disabled,
    };
