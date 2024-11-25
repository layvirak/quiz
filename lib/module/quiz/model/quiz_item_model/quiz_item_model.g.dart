// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizItemModelImpl _$$QuizItemModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizItemModelImpl(
      image: const FileConverter().fromJson(json['image'] as String?),
      question: json['question'] as String? ?? '',
      type: json['type'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => QuizOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isquestion: json['isquestion'] as bool? ?? false,
      istype: json['istype'] as bool? ?? false,
    );

Map<String, dynamic> _$$QuizItemModelImplToJson(_$QuizItemModelImpl instance) =>
    <String, dynamic>{
      'image': const FileConverter().toJson(instance.image),
      'question': instance.question,
      'type': instance.type,
      'options': instance.options,
      'isquestion': instance.isquestion,
      'istype': instance.istype,
    };
