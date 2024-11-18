import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
  factory MetaModel({
    @JsonKey(name: "current_page") int? currentPage,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    String? path,
    @JsonKey(name: "per_page") int? perPage,
    int? to,
    int? total,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
