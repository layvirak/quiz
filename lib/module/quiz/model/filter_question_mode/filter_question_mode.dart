import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_question_mode.freezed.dart';
part 'filter_question_mode.g.dart';

@freezed
class FilterQuestionMode with _$FilterQuestionMode {
  factory FilterQuestionMode({
    @Default('') final String? name,
    @Default('') final String? question,
    @Default('') final String? questionType,
    @Default('') final String? classs,
    @Default('') final String? subject,
  }) = _FilterQuestionMode;

  factory FilterQuestionMode.fromJson(Map<String, dynamic> json) =>
      _$FilterQuestionModeFromJson(json);
}
