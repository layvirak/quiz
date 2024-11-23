// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizOptionModelImpl _$$QuizOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizOptionModelImpl(
      answer: json['answer'] as String?,
      isCorrect: (json['isCorrect'] as num?)?.toInt() ?? 0,
      isSelect: (json['isSelect'] as num?)?.toInt() ?? 0,
      score: (json['score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuizOptionModelImplToJson(
        _$QuizOptionModelImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'isCorrect': instance.isCorrect,
      'isSelect': instance.isSelect,
      'score': instance.score,
    };
