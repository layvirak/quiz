import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_workflow_state.freezed.dart';
part 'color_workflow_state.g.dart';

@freezed
class ColorWorkflowState with _$ColorWorkflowState {
  factory ColorWorkflowState({
    final String? name,
    @JsonKey(name: "custom_color") final String? textColor,
    @JsonKey(name: "custom_background_color") final String? backgroundColor,
  }) = _ColorWorkflowState;

  factory ColorWorkflowState.fromJson(Map<String, dynamic> json) =>
      _$ColorWorkflowStateFromJson(json);
}
