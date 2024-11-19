import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
class GenderModel with _$GenderModel {
  factory GenderModel({
    @JsonKey(name: 'name') final String? name,
  }) = _GenderModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}
