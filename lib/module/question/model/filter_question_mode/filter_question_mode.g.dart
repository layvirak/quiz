// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_question_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterQuestionModeImpl _$$FilterQuestionModeImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterQuestionModeImpl(
      name: json['name'] as String? ?? '',
      question: json['question'] as String? ?? '',
      questionType: json['questionType'] as String? ?? '',
      classs: json['classs'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
    );

Map<String, dynamic> _$$FilterQuestionModeImplToJson(
        _$FilterQuestionModeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'question': instance.question,
      'questionType': instance.questionType,
      'classs': instance.classs,
      'subject': instance.subject,
    };
