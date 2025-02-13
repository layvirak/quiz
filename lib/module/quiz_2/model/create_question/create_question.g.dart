// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionModelImpl _$$CreateQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionModelImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      question: json['question'] as String?,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      parent: json['parent'] as String?,
      parentfield: json['parentfield'] as String?,
      parenttype: json['parenttype'] as String?,
      doctype: json['doctype'] as String?,
    );

Map<String, dynamic> _$$CreateQuestionModelImplToJson(
        _$CreateQuestionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'question': instance.question,
      'duration': instance.duration,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'doctype': instance.doctype,
    };
