import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_model.freezed.dart';
part 'option_model.g.dart';

@freezed
class OptionModel with _$OptionModel {
  factory OptionModel({
    @Default('') final String? name,
    @Default('') final String? value,
    @Default('') final String? description,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}
