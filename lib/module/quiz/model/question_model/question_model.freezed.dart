// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
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
  @JsonKey(name: 'visibility')
  String? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_used')
  String? get numberOfUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_level')
  int? get difficultyLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'disabled')
  int? get disabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctype')
  String? get doctype => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<AnswerModel>? get answers => throw _privateConstructorUsedError;
  bool? get isQuestion => throw _privateConstructorUsedError;
  bool? get isQuestionType => throw _privateConstructorUsedError;
  bool? get isSubject => throw _privateConstructorUsedError;
  bool? get isClass => throw _privateConstructorUsedError;
  bool? get isVisibility => throw _privateConstructorUsedError;
  bool? get isAnswers => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
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
      @JsonKey(name: 'visibility') String? visibility,
      @JsonKey(name: 'number_of_used') String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') int? difficultyLevel,
      @JsonKey(name: 'disabled') int? disabled,
      @JsonKey(name: 'doctype') String? doctype,
      @JsonKey(name: 'answers') List<AnswerModel>? answers,
      bool? isQuestion,
      bool? isQuestionType,
      bool? isSubject,
      bool? isClass,
      bool? isVisibility,
      bool? isAnswers});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
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
    Object? visibility = freezed,
    Object? numberOfUsed = freezed,
    Object? difficultyLevel = freezed,
    Object? disabled = freezed,
    Object? doctype = freezed,
    Object? answers = freezed,
    Object? isQuestion = freezed,
    Object? isQuestionType = freezed,
    Object? isSubject = freezed,
    Object? isClass = freezed,
    Object? isVisibility = freezed,
    Object? isAnswers = freezed,
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
              as int?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuestionType: freezed == isQuestionType
          ? _value.isQuestionType
          : isQuestionType // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubject: freezed == isSubject
          ? _value.isSubject
          : isSubject // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClass: freezed == isClass
          ? _value.isClass
          : isClass // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVisibility: freezed == isVisibility
          ? _value.isVisibility
          : isVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAnswers: freezed == isAnswers
          ? _value.isAnswers
          : isAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'visibility') String? visibility,
      @JsonKey(name: 'number_of_used') String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') int? difficultyLevel,
      @JsonKey(name: 'disabled') int? disabled,
      @JsonKey(name: 'doctype') String? doctype,
      @JsonKey(name: 'answers') List<AnswerModel>? answers,
      bool? isQuestion,
      bool? isQuestionType,
      bool? isSubject,
      bool? isClass,
      bool? isVisibility,
      bool? isAnswers});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
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
    Object? visibility = freezed,
    Object? numberOfUsed = freezed,
    Object? difficultyLevel = freezed,
    Object? disabled = freezed,
    Object? doctype = freezed,
    Object? answers = freezed,
    Object? isQuestion = freezed,
    Object? isQuestionType = freezed,
    Object? isSubject = freezed,
    Object? isClass = freezed,
    Object? isVisibility = freezed,
    Object? isAnswers = freezed,
  }) {
    return _then(_$QuestionModelImpl(
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
              as int?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuestionType: freezed == isQuestionType
          ? _value.isQuestionType
          : isQuestionType // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubject: freezed == isSubject
          ? _value.isSubject
          : isSubject // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClass: freezed == isClass
          ? _value.isClass
          : isClass // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVisibility: freezed == isVisibility
          ? _value.isVisibility
          : isVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAnswers: freezed == isAnswers
          ? _value.isAnswers
          : isAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  _$QuestionModelImpl(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'owner') this.owner = '',
      @JsonKey(name: 'creation') this.creation = '',
      @JsonKey(name: 'modified') this.modified = '',
      @JsonKey(name: 'modified_by') this.modifiedBy = '',
      @JsonKey(name: 'docstatus') this.docstatus = 0,
      @JsonKey(name: 'idx') this.idx = 0,
      @JsonKey(name: 'question') this.question = '',
      @JsonKey(name: 'question_type') this.questionType = '',
      @JsonKey(name: 'subject') this.subject = '',
      @JsonKey(name: 'class') this.classs = '',
      @JsonKey(name: 'visibility') this.visibility = '',
      @JsonKey(name: 'number_of_used') this.numberOfUsed = '',
      @JsonKey(name: 'difficulty_level') this.difficultyLevel,
      @JsonKey(name: 'disabled') this.disabled = 0,
      @JsonKey(name: 'doctype') this.doctype = '',
      @JsonKey(name: 'answers') final List<AnswerModel>? answers,
      this.isQuestion = false,
      this.isQuestionType = false,
      this.isSubject = false,
      this.isClass = false,
      this.isVisibility = false,
      this.isAnswers = false})
      : _answers = answers;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

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
  @JsonKey(name: 'visibility')
  final String? visibility;
  @override
  @JsonKey(name: 'number_of_used')
  final String? numberOfUsed;
  @override
  @JsonKey(name: 'difficulty_level')
  final int? difficultyLevel;
  @override
  @JsonKey(name: 'disabled')
  final int? disabled;
  @override
  @JsonKey(name: 'doctype')
  final String? doctype;
  final List<AnswerModel>? _answers;
  @override
  @JsonKey(name: 'answers')
  List<AnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? isQuestion;
  @override
  @JsonKey()
  final bool? isQuestionType;
  @override
  @JsonKey()
  final bool? isSubject;
  @override
  @JsonKey()
  final bool? isClass;
  @override
  @JsonKey()
  final bool? isVisibility;
  @override
  @JsonKey()
  final bool? isAnswers;

  @override
  String toString() {
    return 'QuestionModel(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, question: $question, questionType: $questionType, subject: $subject, classs: $classs, visibility: $visibility, numberOfUsed: $numberOfUsed, difficultyLevel: $difficultyLevel, disabled: $disabled, doctype: $doctype, answers: $answers, isQuestion: $isQuestion, isQuestionType: $isQuestionType, isSubject: $isSubject, isClass: $isClass, isVisibility: $isVisibility, isAnswers: $isAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
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
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.numberOfUsed, numberOfUsed) ||
                other.numberOfUsed == numberOfUsed) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.isQuestion, isQuestion) ||
                other.isQuestion == isQuestion) &&
            (identical(other.isQuestionType, isQuestionType) ||
                other.isQuestionType == isQuestionType) &&
            (identical(other.isSubject, isSubject) ||
                other.isSubject == isSubject) &&
            (identical(other.isClass, isClass) || other.isClass == isClass) &&
            (identical(other.isVisibility, isVisibility) ||
                other.isVisibility == isVisibility) &&
            (identical(other.isAnswers, isAnswers) ||
                other.isAnswers == isAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        visibility,
        numberOfUsed,
        difficultyLevel,
        disabled,
        doctype,
        const DeepCollectionEquality().hash(_answers),
        isQuestion,
        isQuestionType,
        isSubject,
        isClass,
        isVisibility,
        isAnswers
      ]);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
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
      @JsonKey(name: 'visibility') final String? visibility,
      @JsonKey(name: 'number_of_used') final String? numberOfUsed,
      @JsonKey(name: 'difficulty_level') final int? difficultyLevel,
      @JsonKey(name: 'disabled') final int? disabled,
      @JsonKey(name: 'doctype') final String? doctype,
      @JsonKey(name: 'answers') final List<AnswerModel>? answers,
      final bool? isQuestion,
      final bool? isQuestionType,
      final bool? isSubject,
      final bool? isClass,
      final bool? isVisibility,
      final bool? isAnswers}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

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
  @JsonKey(name: 'visibility')
  String? get visibility;
  @override
  @JsonKey(name: 'number_of_used')
  String? get numberOfUsed;
  @override
  @JsonKey(name: 'difficulty_level')
  int? get difficultyLevel;
  @override
  @JsonKey(name: 'disabled')
  int? get disabled;
  @override
  @JsonKey(name: 'doctype')
  String? get doctype;
  @override
  @JsonKey(name: 'answers')
  List<AnswerModel>? get answers;
  @override
  bool? get isQuestion;
  @override
  bool? get isQuestionType;
  @override
  bool? get isSubject;
  @override
  bool? get isClass;
  @override
  bool? get isVisibility;
  @override
  bool? get isAnswers;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
