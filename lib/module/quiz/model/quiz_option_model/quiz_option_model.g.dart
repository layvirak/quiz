// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizOptionModelImpl _$$QuizOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizOptionModelImpl(
      name: json['name'] as String? ?? '',
      image: const FileConverter().fromJson(json['image'] as String?),
      answer: json['answer'] as String? ?? '',
      answerMatch: json['answerMatch'] as String? ?? '',
      isCorrect: (json['isCorrect'] as num?)?.toInt() ?? 0,
      isSelect: (json['isSelect'] as num?)?.toInt() ?? 0,
      score: (json['score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuizOptionModelImplToJson(
        _$QuizOptionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': const FileConverter().toJson(instance.image),
      'answer': instance.answer,
      'answerMatch': instance.answerMatch,
      'isCorrect': instance.isCorrect,
      'isSelect': instance.isSelect,
      'score': instance.score,
    };
