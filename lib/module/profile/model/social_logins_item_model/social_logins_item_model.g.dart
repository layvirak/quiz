// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_logins_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialLoginsItemModelImpl _$$SocialLoginsItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginsItemModelImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['last_login'] as String?,
      docstatus: json['docstatus'] as int?,
      idx: json['idx'] as int?,
      role: json['role'] as String?,
      parent: json['parent'] as String?,
      parentfield: json['parentfield'] as String?,
      parenttype: json['parenttype'] as String?,
      doctype: json['doctype'] as String?,
    );

Map<String, dynamic> _$$SocialLoginsItemModelImplToJson(
        _$SocialLoginsItemModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'last_login': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'role': instance.role,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'doctype': instance.doctype,
    };
