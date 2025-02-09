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
  String? get name => throw _privateConstructorUsedError;
  @FileConverter()
  File? get image => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  String? get answerMatch => throw _privateConstructorUsedError;
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
  $Res call(
      {String? name,
      @FileConverter() File? image,
      String? answer,
      String? answerMatch,
      int? isCorrect,
      int? isSelect,
      int? score});
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
    Object? name = freezed,
    Object? image = freezed,
    Object? answer = freezed,
    Object? answerMatch = freezed,
    Object? isCorrect = freezed,
    Object? isSelect = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      answerMatch: freezed == answerMatch
          ? _value.answerMatch
          : answerMatch // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String? name,
      @FileConverter() File? image,
      String? answer,
      String? answerMatch,
      int? isCorrect,
      int? isSelect,
      int? score});
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
    Object? name = freezed,
    Object? image = freezed,
    Object? answer = freezed,
    Object? answerMatch = freezed,
    Object? isCorrect = freezed,
    Object? isSelect = freezed,
    Object? score = freezed,
  }) {
    return _then(_$QuizOptionModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      answerMatch: freezed == answerMatch
          ? _value.answerMatch
          : answerMatch // ignore: cast_nullable_to_non_nullable
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
      {this.name = '',
      @FileConverter() this.image,
      this.answer = '',
      this.answerMatch = '',
      this.isCorrect = 0,
      this.isSelect = 0,
      this.score = 0});

  factory _$QuizOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizOptionModelImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @FileConverter()
  final File? image;
  @override
  @JsonKey()
  final String? answer;
  @override
  @JsonKey()
  final String? answerMatch;
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
    return 'QuizOptionModel(name: $name, image: $image, answer: $answer, answerMatch: $answerMatch, isCorrect: $isCorrect, isSelect: $isSelect, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizOptionModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.answerMatch, answerMatch) ||
                other.answerMatch == answerMatch) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.isSelect, isSelect) ||
                other.isSelect == isSelect) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, answer, answerMatch,
      isCorrect, isSelect, score);

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
      {final String? name,
      @FileConverter() final File? image,
      final String? answer,
      final String? answerMatch,
      final int? isCorrect,
      final int? isSelect,
      final int? score}) = _$QuizOptionModelImpl;

  factory _QuizOptionModel.fromJson(Map<String, dynamic> json) =
      _$QuizOptionModelImpl.fromJson;

  @override
  String? get name;
  @override
  @FileConverter()
  File? get image;
  @override
  String? get answer;
  @override
  String? get answerMatch;
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
