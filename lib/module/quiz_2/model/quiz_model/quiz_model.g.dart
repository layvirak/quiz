// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      creation: json['creation'] as String? ?? '',
      docstatus: (json['docstatus'] as num?)?.toInt() ?? 0,
      doctype: (json['doctype'] as num?)?.toInt() ?? 0,
      idx: (json['idx'] as num?)?.toInt() ?? 0,
      isRandom: (json['isRandom'] as num?)?.toInt() ?? 0,
      modified: json['modified'] as String? ?? '',
      modifiedBy: json['modified_by'] as String? ?? '',
      name: json['name'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      quizDuration: (json['quiz_duration'] as num?)?.toInt() ?? 0,
      quizTitle: json['quiz_title'] as String? ?? '',
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuizQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'creation': instance.creation,
      'docstatus': instance.docstatus,
      'doctype': instance.doctype,
      'idx': instance.idx,
      'isRandom': instance.isRandom,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'name': instance.name,
      'owner': instance.owner,
      'quiz_duration': instance.quizDuration,
      'quiz_title': instance.quizTitle,
      'questions': instance.questions,
    };
