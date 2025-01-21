// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionAnswerModel _$QuestionAnswerModelFromJson(Map<String, dynamic> json) {
  return _QuestionAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerModel {
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
  @JsonKey(name: 'question')
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get classs => throw _privateConstructorUsedError;
  @JsonKey(name: 'match_answer')
  String? get matchAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'explanation')
  String? get explanation => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  String? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_used')
  String? get numberOfUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_level')
  double? get difficultyLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'disabled')
  int? get disabled => throw _privateConstructorUsedError;
  List<AnswerModel>? get answers => throw _privateConstructorUsedError;

  /// Serializes this QuestionAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionAnswerModelCopyWith<QuestionAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerModelCopyWith<$Res> {
  factory $QuestionAnswerModelCopyWith(
          QuestionAnswerModel value, $Res Function(QuestionAnswerModel) then) =
      _$QuestionAnswerModelCopyWithImpl<$Res, QuestionAnswerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'creation') String? creation,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      @JsonKey(name: 'docstatus') int? docstatus,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'question') String? question,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'class') String? classs,
      @JsonKey(name: 'match_answer') String? matchAnswer,
      @JsonKey(name: 'explanation') String? explanation,
      @JsonKey(name: 'visibility') String? visibility,
      @JsonKey(name: 'number_of_used') String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') double? difficultyLevel,
      @JsonKey(name: 'disabled') int? disabled,
      List<AnswerModel>? answers});
}

/// @nodoc
class _$QuestionAnswerModelCopyWithImpl<$Res, $Val extends QuestionAnswerModel>
    implements $QuestionAnswerModelCopyWith<$Res> {
  _$QuestionAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionAnswerModel
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
    Object? question = freezed,
    Object? questionType = freezed,
    Object? subject = freezed,
    Object? classs = freezed,
    Object? matchAnswer = freezed,
    Object? explanation = freezed,
    Object? visibility = freezed,
    Object? numberOfUsed = freezed,
    Object? difficultyLevel = freezed,
    Object? disabled = freezed,
    Object? answers = freezed,
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
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      matchAnswer: freezed == matchAnswer
          ? _value.matchAnswer
          : matchAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUsed: freezed == numberOfUsed
          ? _value.numberOfUsed
          : numberOfUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyLevel: freezed == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionAnswerModelImplCopyWith<$Res>
    implements $QuestionAnswerModelCopyWith<$Res> {
  factory _$$QuestionAnswerModelImplCopyWith(_$QuestionAnswerModelImpl value,
          $Res Function(_$QuestionAnswerModelImpl) then) =
      __$$QuestionAnswerModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'question') String? question,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'class') String? classs,
      @JsonKey(name: 'match_answer') String? matchAnswer,
      @JsonKey(name: 'explanation') String? explanation,
      @JsonKey(name: 'visibility') String? visibility,
      @JsonKey(name: 'number_of_used') String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') double? difficultyLevel,
      @JsonKey(name: 'disabled') int? disabled,
      List<AnswerModel>? answers});
}

/// @nodoc
class __$$QuestionAnswerModelImplCopyWithImpl<$Res>
    extends _$QuestionAnswerModelCopyWithImpl<$Res, _$QuestionAnswerModelImpl>
    implements _$$QuestionAnswerModelImplCopyWith<$Res> {
  __$$QuestionAnswerModelImplCopyWithImpl(_$QuestionAnswerModelImpl _value,
      $Res Function(_$QuestionAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionAnswerModel
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
    Object? question = freezed,
    Object? questionType = freezed,
    Object? subject = freezed,
    Object? classs = freezed,
    Object? matchAnswer = freezed,
    Object? explanation = freezed,
    Object? visibility = freezed,
    Object? numberOfUsed = freezed,
    Object? difficultyLevel = freezed,
    Object? disabled = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$QuestionAnswerModelImpl(
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
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      matchAnswer: freezed == matchAnswer
          ? _value.matchAnswer
          : matchAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUsed: freezed == numberOfUsed
          ? _value.numberOfUsed
          : numberOfUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyLevel: freezed == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionAnswerModelImpl implements _QuestionAnswerModel {
  _$QuestionAnswerModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'creation') this.creation,
      @JsonKey(name: 'modified') this.modified,
      @JsonKey(name: 'modified_by') this.modifiedBy,
      @JsonKey(name: 'docstatus') this.docstatus = 0,
      @JsonKey(name: 'idx') this.idx,
      @JsonKey(name: 'question') this.question,
      @JsonKey(name: 'question_type') this.questionType,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'class') this.classs,
      @JsonKey(name: 'match_answer') this.matchAnswer,
      @JsonKey(name: 'explanation') this.explanation,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'number_of_used') this.numberOfUsed,
      @JsonKey(name: 'difficulty_level') this.difficultyLevel = 0,
      @JsonKey(name: 'disabled') this.disabled = 0,
      final List<AnswerModel>? answers})
      : _answers = answers;

  factory _$QuestionAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionAnswerModelImplFromJson(json);

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
  @JsonKey(name: 'question')
  final String? question;
  @override
  @JsonKey(name: 'question_type')
  final String? questionType;
  @override
  @JsonKey(name: 'subject')
  final String? subject;
  @override
  @JsonKey(name: 'class')
  final String? classs;
  @override
  @JsonKey(name: 'match_answer')
  final String? matchAnswer;
  @override
  @JsonKey(name: 'explanation')
  final String? explanation;
  @override
  @JsonKey(name: 'visibility')
  final String? visibility;
  @override
  @JsonKey(name: 'number_of_used')
  final String? numberOfUsed;
  @override
  @JsonKey(name: 'difficulty_level')
  final double? difficultyLevel;
  @override
  @JsonKey(name: 'disabled')
  final int? disabled;
  final List<AnswerModel>? _answers;
  @override
  List<AnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionAnswerModel(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, question: $question, questionType: $questionType, subject: $subject, classs: $classs, matchAnswer: $matchAnswer, explanation: $explanation, visibility: $visibility, numberOfUsed: $numberOfUsed, difficultyLevel: $difficultyLevel, disabled: $disabled, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionAnswerModelImpl &&
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
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.classs, classs) || other.classs == classs) &&
            (identical(other.matchAnswer, matchAnswer) ||
                other.matchAnswer == matchAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.numberOfUsed, numberOfUsed) ||
                other.numberOfUsed == numberOfUsed) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
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
      question,
      questionType,
      subject,
      classs,
      matchAnswer,
      explanation,
      visibility,
      numberOfUsed,
      difficultyLevel,
      disabled,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of QuestionAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionAnswerModelImplCopyWith<_$QuestionAnswerModelImpl> get copyWith =>
      __$$QuestionAnswerModelImplCopyWithImpl<_$QuestionAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerModel implements QuestionAnswerModel {
  factory _QuestionAnswerModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'owner') final String? owner,
      @JsonKey(name: 'creation') final String? creation,
      @JsonKey(name: 'modified') final String? modified,
      @JsonKey(name: 'modified_by') final String? modifiedBy,
      @JsonKey(name: 'docstatus') final int? docstatus,
      @JsonKey(name: 'idx') final int? idx,
      @JsonKey(name: 'question') final String? question,
      @JsonKey(name: 'question_type') final String? questionType,
      @JsonKey(name: 'subject') final String? subject,
      @JsonKey(name: 'class') final String? classs,
      @JsonKey(name: 'match_answer') final String? matchAnswer,
      @JsonKey(name: 'explanation') final String? explanation,
      @JsonKey(name: 'visibility') final String? visibility,
      @JsonKey(name: 'number_of_used') final String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') final double? difficultyLevel,
      @JsonKey(name: 'disabled') final int? disabled,
      final List<AnswerModel>? answers}) = _$QuestionAnswerModelImpl;

  factory _QuestionAnswerModel.fromJson(Map<String, dynamic> json) =
      _$QuestionAnswerModelImpl.fromJson;

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
  @JsonKey(name: 'question')
  String? get question;
  @override
  @JsonKey(name: 'question_type')
  String? get questionType;
  @override
  @JsonKey(name: 'subject')
  String? get subject;
  @override
  @JsonKey(name: 'class')
  String? get classs;
  @override
  @JsonKey(name: 'match_answer')
  String? get matchAnswer;
  @override
  @JsonKey(name: 'explanation')
  String? get explanation;
  @override
  @JsonKey(name: 'visibility')
  String? get visibility;
  @override
  @JsonKey(name: 'number_of_used')
  String? get numberOfUsed;
  @override
  @JsonKey(name: 'difficulty_level')
  double? get difficultyLevel;
  @override
  @JsonKey(name: 'disabled')
  int? get disabled;
  @override
  List<AnswerModel>? get answers;

  /// Create a copy of QuestionAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionAnswerModelImplCopyWith<_$QuestionAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
