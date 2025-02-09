// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizQuestionModelImpl _$$QuizQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizQuestionModelImpl(
      creation: json['creation'] as String? ?? '',
      docstatus: (json['docstatus'] as num?)?.toInt() ?? 0,
      doctype: json['doctype'] as String? ?? '',
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      idx: (json['idx'] as num?)?.toInt() ?? 0,
      modified: json['modified'] as String? ?? '',
      modifiedBy: json['modified_by'] as String? ?? '',
      name: json['name'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      parent: json['parent'] as String? ?? '',
      parentfield: json['parentfield'] as String? ?? '',
      parenttype: json['parenttype'] as String? ?? '',
      question: json['question'] as String? ?? '',
    );

Map<String, dynamic> _$$QuizQuestionModelImplToJson(
        _$QuizQuestionModelImpl instance) =>
    <String, dynamic>{
      'creation': instance.creation,
      'docstatus': instance.docstatus,
      'doctype': instance.doctype,
      'duration': instance.duration,
      'idx': instance.idx,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'name': instance.name,
      'owner': instance.owner,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'question': instance.question,
    };
