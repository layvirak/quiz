import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_item_model.freezed.dart';
part 'role_item_model.g.dart';

@freezed
class RoleItemModel with _$RoleItemModel {
  factory RoleItemModel({
    final String? name,
    final String? owner,
    final String? creation,
    final String? modified,
    @JsonKey(name: 'last_login') final String? modifiedBy,
    final int? docstatus,
    final int? idx,
    final String? role,
    final String? parent,
    final String? parentfield,
    final String? parenttype,
    final String? doctype,
  }) = _RoleItemModel;

  factory RoleItemModel.fromJson(Map<String, dynamic> json) =>
      _$RoleItemModelFromJson(json);
}
