// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  String get creation => throw _privateConstructorUsedError;
  int get docstatus => throw _privateConstructorUsedError;
  int get doctype => throw _privateConstructorUsedError;
  int get idx => throw _privateConstructorUsedError;
  int get isRandom => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_by")
  String get modifiedBy => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "quiz_duration")
  int get quizDuration => throw _privateConstructorUsedError;
  @JsonKey(name: "quiz_title")
  String get quizTitle => throw _privateConstructorUsedError;
  List<QuizQuestionModel>? get questions => throw _privateConstructorUsedError;

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call(
      {String creation,
      int docstatus,
      int doctype,
      int idx,
      int isRandom,
      String modified,
      @JsonKey(name: "modified_by") String modifiedBy,
      String name,
      String owner,
      @JsonKey(name: "quiz_duration") int quizDuration,
      @JsonKey(name: "quiz_title") String quizTitle,
      List<QuizQuestionModel>? questions});
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creation = null,
    Object? docstatus = null,
    Object? doctype = null,
    Object? idx = null,
    Object? isRandom = null,
    Object? modified = null,
    Object? modifiedBy = null,
    Object? name = null,
    Object? owner = null,
    Object? quizDuration = null,
    Object? quizTitle = null,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      creation: null == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String,
      docstatus: null == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int,
      doctype: null == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as int,
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      isRandom: null == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as int,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedBy: null == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      quizDuration: null == quizDuration
          ? _value.quizDuration
          : quizDuration // ignore: cast_nullable_to_non_nullable
              as int,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizModelImplCopyWith<$Res>
    implements $QuizModelCopyWith<$Res> {
  factory _$$QuizModelImplCopyWith(
          _$QuizModelImpl value, $Res Function(_$QuizModelImpl) then) =
      __$$QuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String creation,
      int docstatus,
      int doctype,
      int idx,
      int isRandom,
      String modified,
      @JsonKey(name: "modified_by") String modifiedBy,
      String name,
      String owner,
      @JsonKey(name: "quiz_duration") int quizDuration,
      @JsonKey(name: "quiz_title") String quizTitle,
      List<QuizQuestionModel>? questions});
}

/// @nodoc
class __$$QuizModelImplCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$QuizModelImpl>
    implements _$$QuizModelImplCopyWith<$Res> {
  __$$QuizModelImplCopyWithImpl(
      _$QuizModelImpl _value, $Res Function(_$QuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creation = null,
    Object? docstatus = null,
    Object? doctype = null,
    Object? idx = null,
    Object? isRandom = null,
    Object? modified = null,
    Object? modifiedBy = null,
    Object? name = null,
    Object? owner = null,
    Object? quizDuration = null,
    Object? quizTitle = null,
    Object? questions = freezed,
  }) {
    return _then(_$QuizModelImpl(
      creation: null == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String,
      docstatus: null == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int,
      doctype: null == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as int,
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      isRandom: null == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as int,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedBy: null == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      quizDuration: null == quizDuration
          ? _value.quizDuration
          : quizDuration // ignore: cast_nullable_to_non_nullable
              as int,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelImpl implements _QuizModel {
  _$QuizModelImpl(
      {this.creation = '',
      this.docstatus = 0,
      this.doctype = 0,
      this.idx = 0,
      this.isRandom = 0,
      this.modified = '',
      @JsonKey(name: "modified_by") this.modifiedBy = '',
      this.name = '',
      this.owner = '',
      @JsonKey(name: "quiz_duration") this.quizDuration = 0,
      @JsonKey(name: "quiz_title") this.quizTitle = '',
      final List<QuizQuestionModel>? questions})
      : _questions = questions;

  factory _$QuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelImplFromJson(json);

  @override
  @JsonKey()
  final String creation;
  @override
  @JsonKey()
  final int docstatus;
  @override
  @JsonKey()
  final int doctype;
  @override
  @JsonKey()
  final int idx;
  @override
  @JsonKey()
  final int isRandom;
  @override
  @JsonKey()
  final String modified;
  @override
  @JsonKey(name: "modified_by")
  final String modifiedBy;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String owner;
  @override
  @JsonKey(name: "quiz_duration")
  final int quizDuration;
  @override
  @JsonKey(name: "quiz_title")
  final String quizTitle;
  final List<QuizQuestionModel>? _questions;
  @override
  List<QuizQuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizModel(creation: $creation, docstatus: $docstatus, doctype: $doctype, idx: $idx, isRandom: $isRandom, modified: $modified, modifiedBy: $modifiedBy, name: $name, owner: $owner, quizDuration: $quizDuration, quizTitle: $quizTitle, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelImpl &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.isRandom, isRandom) ||
                other.isRandom == isRandom) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.quizDuration, quizDuration) ||
                other.quizDuration == quizDuration) &&
            (identical(other.quizTitle, quizTitle) ||
                other.quizTitle == quizTitle) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creation,
      docstatus,
      doctype,
      idx,
      isRandom,
      modified,
      modifiedBy,
      name,
      owner,
      quizDuration,
      quizTitle,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      __$$QuizModelImplCopyWithImpl<_$QuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelImplToJson(
      this,
    );
  }
}

abstract class _QuizModel implements QuizModel {
  factory _QuizModel(
      {final String creation,
      final int docstatus,
      final int doctype,
      final int idx,
      final int isRandom,
      final String modified,
      @JsonKey(name: "modified_by") final String modifiedBy,
      final String name,
      final String owner,
      @JsonKey(name: "quiz_duration") final int quizDuration,
      @JsonKey(name: "quiz_title") final String quizTitle,
      final List<QuizQuestionModel>? questions}) = _$QuizModelImpl;

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$QuizModelImpl.fromJson;

  @override
  String get creation;
  @override
  int get docstatus;
  @override
  int get doctype;
  @override
  int get idx;
  @override
  int get isRandom;
  @override
  String get modified;
  @override
  @JsonKey(name: "modified_by")
  String get modifiedBy;
  @override
  String get name;
  @override
  String get owner;
  @override
  @JsonKey(name: "quiz_duration")
  int get quizDuration;
  @override
  @JsonKey(name: "quiz_title")
  String get quizTitle;
  @override
  List<QuizQuestionModel>? get questions;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
