// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
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
      visibility: json['visibility'] as String?,
      numberOfUsed: json['number_of_used'] as String?,
      difficultyLevel: (json['difficulty_level'] as num?)?.toInt(),
      disabled: (json['disabled'] as num?)?.toInt(),
      doctype: json['doctype'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
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
      'visibility': instance.visibility,
      'number_of_used': instance.numberOfUsed,
      'difficulty_level': instance.difficultyLevel,
      'disabled': instance.disabled,
      'doctype': instance.doctype,
      'answers': instance.answers,
    };
