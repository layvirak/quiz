// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizDetailsModel _$QuizDetailsModelFromJson(Map<String, dynamic> json) {
  return _QuizDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$QuizDetailsModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation')
  String? get creation => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified')
  String? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_by')
  String? get modifiedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'docstatus')
  int? get docstatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'idx')
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_title')
  String? get quizTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_duration')
  int? get quizDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_random')
  int? get isRandom => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctype')
  String? get doctype => throw _privateConstructorUsedError;
  @JsonKey(name: 'questions')
  List<QuestionModel>? get questions => throw _privateConstructorUsedError;

  /// Serializes this QuizDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizDetailsModelCopyWith<QuizDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailsModelCopyWith<$Res> {
  factory $QuizDetailsModelCopyWith(
          QuizDetailsModel value, $Res Function(QuizDetailsModel) then) =
      _$QuizDetailsModelCopyWithImpl<$Res, QuizDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'creation') String? creation,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      @JsonKey(name: 'docstatus') int? docstatus,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'quiz_title') String? quizTitle,
      @JsonKey(name: 'quiz_duration') int? quizDuration,
      @JsonKey(name: 'is_random') int? isRandom,
      @JsonKey(name: 'doctype') String? doctype,
      @JsonKey(name: 'questions') List<QuestionModel>? questions});
}

/// @nodoc
class _$QuizDetailsModelCopyWithImpl<$Res, $Val extends QuizDetailsModel>
    implements $QuizDetailsModelCopyWith<$Res> {
  _$QuizDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? quizTitle = freezed,
    Object? quizDuration = freezed,
    Object? isRandom = freezed,
    Object? doctype = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      quizTitle: freezed == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      quizDuration: freezed == quizDuration
          ? _value.quizDuration
          : quizDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      isRandom: freezed == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as int?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizDetailsModelImplCopyWith<$Res>
    implements $QuizDetailsModelCopyWith<$Res> {
  factory _$$QuizDetailsModelImplCopyWith(_$QuizDetailsModelImpl value,
          $Res Function(_$QuizDetailsModelImpl) then) =
      __$$QuizDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'creation') String? creation,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      @JsonKey(name: 'docstatus') int? docstatus,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'quiz_title') String? quizTitle,
      @JsonKey(name: 'quiz_duration') int? quizDuration,
      @JsonKey(name: 'is_random') int? isRandom,
      @JsonKey(name: 'doctype') String? doctype,
      @JsonKey(name: 'questions') List<QuestionModel>? questions});
}

/// @nodoc
class __$$QuizDetailsModelImplCopyWithImpl<$Res>
    extends _$QuizDetailsModelCopyWithImpl<$Res, _$QuizDetailsModelImpl>
    implements _$$QuizDetailsModelImplCopyWith<$Res> {
  __$$QuizDetailsModelImplCopyWithImpl(_$QuizDetailsModelImpl _value,
      $Res Function(_$QuizDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? quizTitle = freezed,
    Object? quizDuration = freezed,
    Object? isRandom = freezed,
    Object? doctype = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$QuizDetailsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      quizTitle: freezed == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      quizDuration: freezed == quizDuration
          ? _value.quizDuration
          : quizDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      isRandom: freezed == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as int?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizDetailsModelImpl implements _QuizDetailsModel {
  _$QuizDetailsModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'creation') this.creation,
      @JsonKey(name: 'modified') this.modified,
      @JsonKey(name: 'modified_by') this.modifiedBy,
      @JsonKey(name: 'docstatus') this.docstatus,
      @JsonKey(name: 'idx') this.idx,
      @JsonKey(name: 'quiz_title') this.quizTitle,
      @JsonKey(name: 'quiz_duration') this.quizDuration = 0,
      @JsonKey(name: 'is_random') this.isRandom,
      @JsonKey(name: 'doctype') this.doctype,
      @JsonKey(name: 'questions')
      final List<QuestionModel>? questions = const []})
      : _questions = questions;

  factory _$QuizDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'owner')
  final String? owner;
  @override
  @JsonKey(name: 'creation')
  final String? creation;
  @override
  @JsonKey(name: 'modified')
  final String? modified;
  @override
  @JsonKey(name: 'modified_by')
  final String? modifiedBy;
  @override
  @JsonKey(name: 'docstatus')
  final int? docstatus;
  @override
  @JsonKey(name: 'idx')
  final int? idx;
  @override
  @JsonKey(name: 'quiz_title')
  final String? quizTitle;
  @override
  @JsonKey(name: 'quiz_duration')
  final int? quizDuration;
  @override
  @JsonKey(name: 'is_random')
  final int? isRandom;
  @override
  @JsonKey(name: 'doctype')
  final String? doctype;
  final List<QuestionModel>? _questions;
  @override
  @JsonKey(name: 'questions')
  List<QuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizDetailsModel(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, quizTitle: $quizTitle, quizDuration: $quizDuration, isRandom: $isRandom, doctype: $doctype, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.quizTitle, quizTitle) ||
                other.quizTitle == quizTitle) &&
            (identical(other.quizDuration, quizDuration) ||
                other.quizDuration == quizDuration) &&
            (identical(other.isRandom, isRandom) ||
                other.isRandom == isRandom) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      owner,
      creation,
      modified,
      modifiedBy,
      docstatus,
      idx,
      quizTitle,
      quizDuration,
      isRandom,
      doctype,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizDetailsModelImplCopyWith<_$QuizDetailsModelImpl> get copyWith =>
      __$$QuizDetailsModelImplCopyWithImpl<_$QuizDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _QuizDetailsModel implements QuizDetailsModel {
  factory _QuizDetailsModel(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'owner') final String? owner,
          @JsonKey(name: 'creation') final String? creation,
          @JsonKey(name: 'modified') final String? modified,
          @JsonKey(name: 'modified_by') final String? modifiedBy,
          @JsonKey(name: 'docstatus') final int? docstatus,
          @JsonKey(name: 'idx') final int? idx,
          @JsonKey(name: 'quiz_title') final String? quizTitle,
          @JsonKey(name: 'quiz_duration') final int? quizDuration,
          @JsonKey(name: 'is_random') final int? isRandom,
          @JsonKey(name: 'doctype') final String? doctype,
          @JsonKey(name: 'questions') final List<QuestionModel>? questions}) =
      _$QuizDetailsModelImpl;

  factory _QuizDetailsModel.fromJson(Map<String, dynamic> json) =
      _$QuizDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'owner')
  String? get owner;
  @override
  @JsonKey(name: 'creation')
  String? get creation;
  @override
  @JsonKey(name: 'modified')
  String? get modified;
  @override
  @JsonKey(name: 'modified_by')
  String? get modifiedBy;
  @override
  @JsonKey(name: 'docstatus')
  int? get docstatus;
  @override
  @JsonKey(name: 'idx')
  int? get idx;
  @override
  @JsonKey(name: 'quiz_title')
  String? get quizTitle;
  @override
  @JsonKey(name: 'quiz_duration')
  int? get quizDuration;
  @override
  @JsonKey(name: 'is_random')
  int? get isRandom;
  @override
  @JsonKey(name: 'doctype')
  String? get doctype;
  @override
  @JsonKey(name: 'questions')
  List<QuestionModel>? get questions;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizDetailsModelImplCopyWith<_$QuizDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
