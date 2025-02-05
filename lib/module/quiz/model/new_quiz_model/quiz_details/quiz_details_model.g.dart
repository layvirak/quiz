// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizDetailsModelImpl _$$QuizDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizDetailsModelImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      quizTitle: json['quiz_title'] as String?,
      quizDuration: (json['quiz_duration'] as num?)?.toInt() ?? 0,
      isRandom: (json['is_random'] as num?)?.toInt(),
      doctype: json['doctype'] as String?,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuizDetailsModelImplToJson(
        _$QuizDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'quiz_title': instance.quizTitle,
      'quiz_duration': instance.quizDuration,
      'is_random': instance.isRandom,
      'doctype': instance.doctype,
      'questions': instance.questions,
    };
