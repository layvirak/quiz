import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_quiz_model.freezed.dart';
part 'filter_quiz_model.g.dart';

@freezed
class FilterQuizModel with _$FilterQuizModel {
  factory FilterQuizModel({
    @Default('') final String name,
    @Default('') final String title,
  }) = _FilterQuizModel;

  factory FilterQuizModel.fromJson(Map<String, dynamic> json) =>
      _$FilterQuizModelFromJson(json);
}
