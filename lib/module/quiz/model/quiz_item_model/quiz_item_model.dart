import 'package:freezed_annotation/freezed_annotation.dart';

import '../quiz_option_model/quiz_option_model.dart';

part 'quiz_item_model.freezed.dart';
part 'quiz_item_model.g.dart';

@freezed
class QuizItemModel with _$QuizItemModel {
  factory QuizItemModel({
    @Default('') final String? question,
    @Default('') final String? type,
    final List<QuizOptionModel>? options,
    @Default(false) final bool? isquestion,
    @Default(false) final bool? istype,
  }) = _QuizItemModel;

  factory QuizItemModel.fromJson(Map<String, dynamic> json) =>
      _$QuizItemModelFromJson(json);
}
