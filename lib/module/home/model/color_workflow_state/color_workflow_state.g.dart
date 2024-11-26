// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_workflow_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorWorkflowStateImpl _$$ColorWorkflowStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ColorWorkflowStateImpl(
      name: json['name'] as String?,
      textColor: json['custom_color'] as String?,
      backgroundColor: json['custom_background_color'] as String?,
    );

Map<String, dynamic> _$$ColorWorkflowStateImplToJson(
        _$ColorWorkflowStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'custom_color': instance.textColor,
      'custom_background_color': instance.backgroundColor,
    };
