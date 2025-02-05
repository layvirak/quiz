// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewQuizModelImpl _$$NewQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$NewQuizModelImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      quizTitle: json['quiz_title'] as String?,
      quizDuration: (json['quiz_duration'] as num?)?.toInt(),
      isRandom: (json['is_random'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NewQuizModelImplToJson(_$NewQuizModelImpl instance) =>
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
    };
