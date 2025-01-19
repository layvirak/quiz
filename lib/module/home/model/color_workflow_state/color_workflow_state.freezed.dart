// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_workflow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorWorkflowState _$ColorWorkflowStateFromJson(Map<String, dynamic> json) {
  return _ColorWorkflowState.fromJson(json);
}

/// @nodoc
mixin _$ColorWorkflowState {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_color")
  String? get textColor => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_background_color")
  String? get backgroundColor => throw _privateConstructorUsedError;

  /// Serializes this ColorWorkflowState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorWorkflowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorWorkflowStateCopyWith<ColorWorkflowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorWorkflowStateCopyWith<$Res> {
  factory $ColorWorkflowStateCopyWith(
          ColorWorkflowState value, $Res Function(ColorWorkflowState) then) =
      _$ColorWorkflowStateCopyWithImpl<$Res, ColorWorkflowState>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "custom_color") String? textColor,
      @JsonKey(name: "custom_background_color") String? backgroundColor});
}

/// @nodoc
class _$ColorWorkflowStateCopyWithImpl<$Res, $Val extends ColorWorkflowState>
    implements $ColorWorkflowStateCopyWith<$Res> {
  _$ColorWorkflowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorWorkflowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorWorkflowStateImplCopyWith<$Res>
    implements $ColorWorkflowStateCopyWith<$Res> {
  factory _$$ColorWorkflowStateImplCopyWith(_$ColorWorkflowStateImpl value,
          $Res Function(_$ColorWorkflowStateImpl) then) =
      __$$ColorWorkflowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "custom_color") String? textColor,
      @JsonKey(name: "custom_background_color") String? backgroundColor});
}

/// @nodoc
class __$$ColorWorkflowStateImplCopyWithImpl<$Res>
    extends _$ColorWorkflowStateCopyWithImpl<$Res, _$ColorWorkflowStateImpl>
    implements _$$ColorWorkflowStateImplCopyWith<$Res> {
  __$$ColorWorkflowStateImplCopyWithImpl(_$ColorWorkflowStateImpl _value,
      $Res Function(_$ColorWorkflowStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorWorkflowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$ColorWorkflowStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorWorkflowStateImpl implements _ColorWorkflowState {
  _$ColorWorkflowStateImpl(
      {this.name,
      @JsonKey(name: "custom_color") this.textColor,
      @JsonKey(name: "custom_background_color") this.backgroundColor});

  factory _$ColorWorkflowStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorWorkflowStateImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "custom_color")
  final String? textColor;
  @override
  @JsonKey(name: "custom_background_color")
  final String? backgroundColor;

  @override
  String toString() {
    return 'ColorWorkflowState(name: $name, textColor: $textColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorWorkflowStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, textColor, backgroundColor);

  /// Create a copy of ColorWorkflowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorWorkflowStateImplCopyWith<_$ColorWorkflowStateImpl> get copyWith =>
      __$$ColorWorkflowStateImplCopyWithImpl<_$ColorWorkflowStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorWorkflowStateImplToJson(
      this,
    );
  }
}

abstract class _ColorWorkflowState implements ColorWorkflowState {
  factory _ColorWorkflowState(
      {final String? name,
      @JsonKey(name: "custom_color") final String? textColor,
      @JsonKey(name: "custom_background_color")
      final String? backgroundColor}) = _$ColorWorkflowStateImpl;

  factory _ColorWorkflowState.fromJson(Map<String, dynamic> json) =
      _$ColorWorkflowStateImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "custom_color")
  String? get textColor;
  @override
  @JsonKey(name: "custom_background_color")
  String? get backgroundColor;

  /// Create a copy of ColorWorkflowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorWorkflowStateImplCopyWith<_$ColorWorkflowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
