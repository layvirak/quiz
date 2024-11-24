// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      quizTitle: json['quizTitle'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => QuizItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isQuizTitle: json['isQuizTitle'] as bool? ?? false,
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'quizTitle': instance.quizTitle,
      'items': instance.items,
      'isQuizTitle': instance.isQuizTitle,
    };
