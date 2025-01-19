// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_question_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterQuestionMode _$FilterQuestionModeFromJson(Map<String, dynamic> json) {
  return _FilterQuestionMode.fromJson(json);
}

/// @nodoc
mixin _$FilterQuestionMode {
  String? get name => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get questionType => throw _privateConstructorUsedError;
  String? get classs => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;

  /// Serializes this FilterQuestionMode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterQuestionMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterQuestionModeCopyWith<FilterQuestionMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterQuestionModeCopyWith<$Res> {
  factory $FilterQuestionModeCopyWith(
          FilterQuestionMode value, $Res Function(FilterQuestionMode) then) =
      _$FilterQuestionModeCopyWithImpl<$Res, FilterQuestionMode>;
  @useResult
  $Res call(
      {String? name,
      String? question,
      String? questionType,
      String? classs,
      String? subject});
}

/// @nodoc
class _$FilterQuestionModeCopyWithImpl<$Res, $Val extends FilterQuestionMode>
    implements $FilterQuestionModeCopyWith<$Res> {
  _$FilterQuestionModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterQuestionMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? question = freezed,
    Object? questionType = freezed,
    Object? classs = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterQuestionModeImplCopyWith<$Res>
    implements $FilterQuestionModeCopyWith<$Res> {
  factory _$$FilterQuestionModeImplCopyWith(_$FilterQuestionModeImpl value,
          $Res Function(_$FilterQuestionModeImpl) then) =
      __$$FilterQuestionModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? question,
      String? questionType,
      String? classs,
      String? subject});
}

/// @nodoc
class __$$FilterQuestionModeImplCopyWithImpl<$Res>
    extends _$FilterQuestionModeCopyWithImpl<$Res, _$FilterQuestionModeImpl>
    implements _$$FilterQuestionModeImplCopyWith<$Res> {
  __$$FilterQuestionModeImplCopyWithImpl(_$FilterQuestionModeImpl _value,
      $Res Function(_$FilterQuestionModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterQuestionMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? question = freezed,
    Object? questionType = freezed,
    Object? classs = freezed,
    Object? subject = freezed,
  }) {
    return _then(_$FilterQuestionModeImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterQuestionModeImpl implements _FilterQuestionMode {
  _$FilterQuestionModeImpl(
      {this.name = '',
      this.question = '',
      this.questionType = '',
      this.classs = '',
      this.subject = ''});

  factory _$FilterQuestionModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterQuestionModeImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? question;
  @override
  @JsonKey()
  final String? questionType;
  @override
  @JsonKey()
  final String? classs;
  @override
  @JsonKey()
  final String? subject;

  @override
  String toString() {
    return 'FilterQuestionMode(name: $name, question: $question, questionType: $questionType, classs: $classs, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterQuestionModeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.classs, classs) || other.classs == classs) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, question, questionType, classs, subject);

  /// Create a copy of FilterQuestionMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterQuestionModeImplCopyWith<_$FilterQuestionModeImpl> get copyWith =>
      __$$FilterQuestionModeImplCopyWithImpl<_$FilterQuestionModeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterQuestionModeImplToJson(
      this,
    );
  }
}

abstract class _FilterQuestionMode implements FilterQuestionMode {
  factory _FilterQuestionMode(
      {final String? name,
      final String? question,
      final String? questionType,
      final String? classs,
      final String? subject}) = _$FilterQuestionModeImpl;

  factory _FilterQuestionMode.fromJson(Map<String, dynamic> json) =
      _$FilterQuestionModeImpl.fromJson;

  @override
  String? get name;
  @override
  String? get question;
  @override
  String? get questionType;
  @override
  String? get classs;
  @override
  String? get subject;

  /// Create a copy of FilterQuestionMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterQuestionModeImplCopyWith<_$FilterQuestionModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
