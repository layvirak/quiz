import 'package:freezed_annotation/freezed_annotation.dart';

import '../role_item_model/role_item_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'idx') final int? idx,
      @JsonKey(name: 'enabled') final int? enabled,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'time_zone') final String? timeZone,
      @JsonKey(name: 'user_image') final String? userImage,
      @JsonKey(name: 'gender') final String? gender,
      @Default("") @JsonKey(name: 'birth_date') final String? birthDate,
      @JsonKey(name: 'user_type') final String? userType,
      @JsonKey(name: 'last_login') final String? lastLogin,
      @JsonKey(name: 'block_modules') final List<RoleItemModel>? blockModules,
      @JsonKey(name: 'roles') final List<RoleItemModel>? roles,
      @JsonKey(name: 'user_emails') final List<String>? userEmails,
      @JsonKey(name: 'employee_id') final String? employeeId,
      @JsonKey(name: 'customer_id') final String? customerId,
      @JsonKey(name: 'mobile_no') final String? mobileNo,
      final List<String>? company}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
