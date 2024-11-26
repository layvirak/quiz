// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      name: json['name'] as String? ?? 'A1212',
      status: json['status'] as String? ?? 'Open',
      quizTitle: json['quizTitle'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => QuizItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isQuizTitle: json['isQuizTitle'] as bool? ?? false,
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'quizTitle': instance.quizTitle,
      'items': instance.items,
      'isQuizTitle': instance.isQuizTitle,
    };
