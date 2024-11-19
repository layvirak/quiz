import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_logins_item_model.freezed.dart';
part 'social_logins_item_model.g.dart';

@freezed
class SocialLoginsItemModel with _$SocialLoginsItemModel {
  factory SocialLoginsItemModel({
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
  }) = _SocialLoginsItemModel;

  factory SocialLoginsItemModel.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginsItemModelFromJson(json);
}
