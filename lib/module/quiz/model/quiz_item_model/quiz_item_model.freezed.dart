// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizItemModel _$QuizItemModelFromJson(Map<String, dynamic> json) {
  return _QuizItemModel.fromJson(json);
}

/// @nodoc
mixin _$QuizItemModel {
  String? get name => throw _privateConstructorUsedError;
  @FileConverter()
  File? get image => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<QuizOptionModel>? get options => throw _privateConstructorUsedError;
  bool? get isquestion => throw _privateConstructorUsedError;
  bool? get istype => throw _privateConstructorUsedError;

  /// Serializes this QuizItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizItemModelCopyWith<QuizItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizItemModelCopyWith<$Res> {
  factory $QuizItemModelCopyWith(
          QuizItemModel value, $Res Function(QuizItemModel) then) =
      _$QuizItemModelCopyWithImpl<$Res, QuizItemModel>;
  @useResult
  $Res call(
      {String? name,
      @FileConverter() File? image,
      String? question,
      String? type,
      List<QuizOptionModel>? options,
      bool? isquestion,
      bool? istype});
}

/// @nodoc
class _$QuizItemModelCopyWithImpl<$Res, $Val extends QuizItemModel>
    implements $QuizItemModelCopyWith<$Res> {
  _$QuizItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? question = freezed,
    Object? type = freezed,
    Object? options = freezed,
    Object? isquestion = freezed,
    Object? istype = freezed,
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
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOptionModel>?,
      isquestion: freezed == isquestion
          ? _value.isquestion
          : isquestion // ignore: cast_nullable_to_non_nullable
              as bool?,
      istype: freezed == istype
          ? _value.istype
          : istype // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizItemModelImplCopyWith<$Res>
    implements $QuizItemModelCopyWith<$Res> {
  factory _$$QuizItemModelImplCopyWith(
          _$QuizItemModelImpl value, $Res Function(_$QuizItemModelImpl) then) =
      __$$QuizItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @FileConverter() File? image,
      String? question,
      String? type,
      List<QuizOptionModel>? options,
      bool? isquestion,
      bool? istype});
}

/// @nodoc
class __$$QuizItemModelImplCopyWithImpl<$Res>
    extends _$QuizItemModelCopyWithImpl<$Res, _$QuizItemModelImpl>
    implements _$$QuizItemModelImplCopyWith<$Res> {
  __$$QuizItemModelImplCopyWithImpl(
      _$QuizItemModelImpl _value, $Res Function(_$QuizItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? question = freezed,
    Object? type = freezed,
    Object? options = freezed,
    Object? isquestion = freezed,
    Object? istype = freezed,
  }) {
    return _then(_$QuizItemModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOptionModel>?,
      isquestion: freezed == isquestion
          ? _value.isquestion
          : isquestion // ignore: cast_nullable_to_non_nullable
              as bool?,
      istype: freezed == istype
          ? _value.istype
          : istype // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizItemModelImpl implements _QuizItemModel {
  _$QuizItemModelImpl(
      {this.name = '',
      @FileConverter() this.image,
      this.question = '',
      this.type = '',
      final List<QuizOptionModel>? options,
      this.isquestion = false,
      this.istype = false})
      : _options = options;

  factory _$QuizItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizItemModelImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @FileConverter()
  final File? image;
  @override
  @JsonKey()
  final String? question;
  @override
  @JsonKey()
  final String? type;
  final List<QuizOptionModel>? _options;
  @override
  List<QuizOptionModel>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? isquestion;
  @override
  @JsonKey()
  final bool? istype;

  @override
  String toString() {
    return 'QuizItemModel(name: $name, image: $image, question: $question, type: $type, options: $options, isquestion: $isquestion, istype: $istype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.isquestion, isquestion) ||
                other.isquestion == isquestion) &&
            (identical(other.istype, istype) || other.istype == istype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, question, type,
      const DeepCollectionEquality().hash(_options), isquestion, istype);

  /// Create a copy of QuizItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizItemModelImplCopyWith<_$QuizItemModelImpl> get copyWith =>
      __$$QuizItemModelImplCopyWithImpl<_$QuizItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizItemModelImplToJson(
      this,
    );
  }
}

abstract class _QuizItemModel implements QuizItemModel {
  factory _QuizItemModel(
      {final String? name,
      @FileConverter() final File? image,
      final String? question,
      final String? type,
      final List<QuizOptionModel>? options,
      final bool? isquestion,
      final bool? istype}) = _$QuizItemModelImpl;

  factory _QuizItemModel.fromJson(Map<String, dynamic> json) =
      _$QuizItemModelImpl.fromJson;

  @override
  String? get name;
  @override
  @FileConverter()
  File? get image;
  @override
  String? get question;
  @override
  String? get type;
  @override
  List<QuizOptionModel>? get options;
  @override
  bool? get isquestion;
  @override
  bool? get istype;

  /// Create a copy of QuizItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizItemModelImplCopyWith<_$QuizItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
