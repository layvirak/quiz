// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String?,
      idx: (json['idx'] as num?)?.toInt(),
      enabled: (json['enabled'] as num?)?.toInt(),
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      language: json['language'] as String?,
      timeZone: json['time_zone'] as String?,
      userImage: json['user_image'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String? ?? "",
      userType: json['user_type'] as String?,
      lastLogin: json['last_login'] as String?,
      blockModules: (json['block_modules'] as List<dynamic>?)
          ?.map((e) => RoleItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userEmails: (json['user_emails'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      employeeId: json['employee_id'] as String?,
      customerId: json['customer_id'] as String?,
      mobileNo: json['mobile_no'] as String?,
      company:
          (json['company'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'idx': instance.idx,
      'enabled': instance.enabled,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'language': instance.language,
      'time_zone': instance.timeZone,
      'user_image': instance.userImage,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'user_type': instance.userType,
      'last_login': instance.lastLogin,
      'block_modules': instance.blockModules,
      'roles': instance.roles,
      'user_emails': instance.userEmails,
      'employee_id': instance.employeeId,
      'customer_id': instance.customerId,
      'mobile_no': instance.mobileNo,
      'company': instance.company,
    };
