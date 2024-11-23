// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizOptionModel _$QuizOptionModelFromJson(Map<String, dynamic> json) {
  return _QuizOptionModel.fromJson(json);
}

/// @nodoc
mixin _$QuizOptionModel {
  String? get answer => throw _privateConstructorUsedError;
  int? get isCorrect => throw _privateConstructorUsedError;
  int? get isSelect => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  /// Serializes this QuizOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizOptionModelCopyWith<QuizOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizOptionModelCopyWith<$Res> {
  factory $QuizOptionModelCopyWith(
          QuizOptionModel value, $Res Function(QuizOptionModel) then) =
      _$QuizOptionModelCopyWithImpl<$Res, QuizOptionModel>;
  @useResult
  $Res call({String? answer, int? isCorrect, int? isSelect, int? score});
}

/// @nodoc
class _$QuizOptionModelCopyWithImpl<$Res, $Val extends QuizOptionModel>
    implements $QuizOptionModelCopyWith<$Res> {
  _$QuizOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? isSelect = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelect: freezed == isSelect
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizOptionModelImplCopyWith<$Res>
    implements $QuizOptionModelCopyWith<$Res> {
  factory _$$QuizOptionModelImplCopyWith(_$QuizOptionModelImpl value,
          $Res Function(_$QuizOptionModelImpl) then) =
      __$$QuizOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? answer, int? isCorrect, int? isSelect, int? score});
}

/// @nodoc
class __$$QuizOptionModelImplCopyWithImpl<$Res>
    extends _$QuizOptionModelCopyWithImpl<$Res, _$QuizOptionModelImpl>
    implements _$$QuizOptionModelImplCopyWith<$Res> {
  __$$QuizOptionModelImplCopyWithImpl(
      _$QuizOptionModelImpl _value, $Res Function(_$QuizOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? isSelect = freezed,
    Object? score = freezed,
  }) {
    return _then(_$QuizOptionModelImpl(
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelect: freezed == isSelect
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizOptionModelImpl implements _QuizOptionModel {
  _$QuizOptionModelImpl(
      {this.answer, this.isCorrect = 0, this.isSelect = 0, this.score = 0});

  factory _$QuizOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizOptionModelImplFromJson(json);

  @override
  final String? answer;
  @override
  @JsonKey()
  final int? isCorrect;
  @override
  @JsonKey()
  final int? isSelect;
  @override
  @JsonKey()
  final int? score;

  @override
  String toString() {
    return 'QuizOptionModel(answer: $answer, isCorrect: $isCorrect, isSelect: $isSelect, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizOptionModelImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.isSelect, isSelect) ||
                other.isSelect == isSelect) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, answer, isCorrect, isSelect, score);

  /// Create a copy of QuizOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizOptionModelImplCopyWith<_$QuizOptionModelImpl> get copyWith =>
      __$$QuizOptionModelImplCopyWithImpl<_$QuizOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizOptionModelImplToJson(
      this,
    );
  }
}

abstract class _QuizOptionModel implements QuizOptionModel {
  factory _QuizOptionModel(
      {final String? answer,
      final int? isCorrect,
      final int? isSelect,
      final int? score}) = _$QuizOptionModelImpl;

  factory _QuizOptionModel.fromJson(Map<String, dynamic> json) =
      _$QuizOptionModelImpl.fromJson;

  @override
  String? get answer;
  @override
  int? get isCorrect;
  @override
  int? get isSelect;
  @override
  int? get score;

  /// Create a copy of QuizOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizOptionModelImplCopyWith<_$QuizOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
