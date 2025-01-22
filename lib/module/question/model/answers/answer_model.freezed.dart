// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
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
  @JsonKey(name: 'answer')
  String? get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  int? get isCorrect => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  String? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentfield')
  String? get parentfield => throw _privateConstructorUsedError;
  @JsonKey(name: 'parenttype')
  String? get parenttype => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctype')
  String? get doctype => throw _privateConstructorUsedError; //add new
  String? get explanation => throw _privateConstructorUsedError;
  @JsonKey(name: 'match_answer')
  String? get matchAnswer => throw _privateConstructorUsedError;
  bool? get isValidate => throw _privateConstructorUsedError;

  /// Serializes this AnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res, AnswerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'creation') String? creation,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      @JsonKey(name: 'docstatus') int? docstatus,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'answer') String? answer,
      @JsonKey(name: 'is_correct') int? isCorrect,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'parentfield') String? parentfield,
      @JsonKey(name: 'parenttype') String? parenttype,
      @JsonKey(name: 'doctype') String? doctype,
      String? explanation,
      @JsonKey(name: 'match_answer') String? matchAnswer,
      bool? isValidate});
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res, $Val extends AnswerModel>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerModel
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
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? parent = freezed,
    Object? parentfield = freezed,
    Object? parenttype = freezed,
    Object? doctype = freezed,
    Object? explanation = freezed,
    Object? matchAnswer = freezed,
    Object? isValidate = freezed,
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
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      parentfield: freezed == parentfield
          ? _value.parentfield
          : parentfield // ignore: cast_nullable_to_non_nullable
              as String?,
      parenttype: freezed == parenttype
          ? _value.parenttype
          : parenttype // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      matchAnswer: freezed == matchAnswer
          ? _value.matchAnswer
          : matchAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidate: freezed == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerModelImplCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$AnswerModelImplCopyWith(
          _$AnswerModelImpl value, $Res Function(_$AnswerModelImpl) then) =
      __$$AnswerModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'answer') String? answer,
      @JsonKey(name: 'is_correct') int? isCorrect,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'parentfield') String? parentfield,
      @JsonKey(name: 'parenttype') String? parenttype,
      @JsonKey(name: 'doctype') String? doctype,
      String? explanation,
      @JsonKey(name: 'match_answer') String? matchAnswer,
      bool? isValidate});
}

/// @nodoc
class __$$AnswerModelImplCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$AnswerModelImpl>
    implements _$$AnswerModelImplCopyWith<$Res> {
  __$$AnswerModelImplCopyWithImpl(
      _$AnswerModelImpl _value, $Res Function(_$AnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerModel
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
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? parent = freezed,
    Object? parentfield = freezed,
    Object? parenttype = freezed,
    Object? doctype = freezed,
    Object? explanation = freezed,
    Object? matchAnswer = freezed,
    Object? isValidate = freezed,
  }) {
    return _then(_$AnswerModelImpl(
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
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      parentfield: freezed == parentfield
          ? _value.parentfield
          : parentfield // ignore: cast_nullable_to_non_nullable
              as String?,
      parenttype: freezed == parenttype
          ? _value.parenttype
          : parenttype // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      matchAnswer: freezed == matchAnswer
          ? _value.matchAnswer
          : matchAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidate: freezed == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerModelImpl implements _AnswerModel {
  _$AnswerModelImpl(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'owner') this.owner = '',
      @JsonKey(name: 'creation') this.creation = '',
      @JsonKey(name: 'modified') this.modified = '',
      @JsonKey(name: 'modified_by') this.modifiedBy = '',
      @JsonKey(name: 'docstatus') this.docstatus,
      @JsonKey(name: 'idx') this.idx = 0,
      @JsonKey(name: 'answer') this.answer = '',
      @JsonKey(name: 'is_correct') this.isCorrect = 0,
      @JsonKey(name: 'parent') this.parent = '',
      @JsonKey(name: 'parentfield') this.parentfield = '',
      @JsonKey(name: 'parenttype') this.parenttype = '',
      @JsonKey(name: 'doctype') this.doctype = '',
      this.explanation = '',
      @JsonKey(name: 'match_answer') this.matchAnswer = '',
      this.isValidate = false});

  factory _$AnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerModelImplFromJson(json);

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
  @JsonKey(name: 'answer')
  final String? answer;
  @override
  @JsonKey(name: 'is_correct')
  final int? isCorrect;
  @override
  @JsonKey(name: 'parent')
  final String? parent;
  @override
  @JsonKey(name: 'parentfield')
  final String? parentfield;
  @override
  @JsonKey(name: 'parenttype')
  final String? parenttype;
  @override
  @JsonKey(name: 'doctype')
  final String? doctype;
//add new
  @override
  @JsonKey()
  final String? explanation;
  @override
  @JsonKey(name: 'match_answer')
  final String? matchAnswer;
  @override
  @JsonKey()
  final bool? isValidate;

  @override
  String toString() {
    return 'AnswerModel(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, answer: $answer, isCorrect: $isCorrect, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, doctype: $doctype, explanation: $explanation, matchAnswer: $matchAnswer, isValidate: $isValidate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerModelImpl &&
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
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.parentfield, parentfield) ||
                other.parentfield == parentfield) &&
            (identical(other.parenttype, parenttype) ||
                other.parenttype == parenttype) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.matchAnswer, matchAnswer) ||
                other.matchAnswer == matchAnswer) &&
            (identical(other.isValidate, isValidate) ||
                other.isValidate == isValidate));
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
      answer,
      isCorrect,
      parent,
      parentfield,
      parenttype,
      doctype,
      explanation,
      matchAnswer,
      isValidate);

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      __$$AnswerModelImplCopyWithImpl<_$AnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerModel implements AnswerModel {
  factory _AnswerModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'owner') final String? owner,
      @JsonKey(name: 'creation') final String? creation,
      @JsonKey(name: 'modified') final String? modified,
      @JsonKey(name: 'modified_by') final String? modifiedBy,
      @JsonKey(name: 'docstatus') final int? docstatus,
      @JsonKey(name: 'idx') final int? idx,
      @JsonKey(name: 'answer') final String? answer,
      @JsonKey(name: 'is_correct') final int? isCorrect,
      @JsonKey(name: 'parent') final String? parent,
      @JsonKey(name: 'parentfield') final String? parentfield,
      @JsonKey(name: 'parenttype') final String? parenttype,
      @JsonKey(name: 'doctype') final String? doctype,
      final String? explanation,
      @JsonKey(name: 'match_answer') final String? matchAnswer,
      final bool? isValidate}) = _$AnswerModelImpl;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$AnswerModelImpl.fromJson;

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
  @JsonKey(name: 'answer')
  String? get answer;
  @override
  @JsonKey(name: 'is_correct')
  int? get isCorrect;
  @override
  @JsonKey(name: 'parent')
  String? get parent;
  @override
  @JsonKey(name: 'parentfield')
  String? get parentfield;
  @override
  @JsonKey(name: 'parenttype')
  String? get parenttype;
  @override
  @JsonKey(name: 'doctype')
  String? get doctype; //add new
  @override
  String? get explanation;
  @override
  @JsonKey(name: 'match_answer')
  String? get matchAnswer;
  @override
  bool? get isValidate;

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
