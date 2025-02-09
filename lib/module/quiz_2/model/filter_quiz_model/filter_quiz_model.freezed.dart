// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterQuizModel _$FilterQuizModelFromJson(Map<String, dynamic> json) {
  return _FilterQuizModel.fromJson(json);
}

/// @nodoc
mixin _$FilterQuizModel {
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this FilterQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterQuizModelCopyWith<FilterQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterQuizModelCopyWith<$Res> {
  factory $FilterQuizModelCopyWith(
          FilterQuizModel value, $Res Function(FilterQuizModel) then) =
      _$FilterQuizModelCopyWithImpl<$Res, FilterQuizModel>;
  @useResult
  $Res call({String name, String title});
}

/// @nodoc
class _$FilterQuizModelCopyWithImpl<$Res, $Val extends FilterQuizModel>
    implements $FilterQuizModelCopyWith<$Res> {
  _$FilterQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterQuizModelImplCopyWith<$Res>
    implements $FilterQuizModelCopyWith<$Res> {
  factory _$$FilterQuizModelImplCopyWith(_$FilterQuizModelImpl value,
          $Res Function(_$FilterQuizModelImpl) then) =
      __$$FilterQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String title});
}

/// @nodoc
class __$$FilterQuizModelImplCopyWithImpl<$Res>
    extends _$FilterQuizModelCopyWithImpl<$Res, _$FilterQuizModelImpl>
    implements _$$FilterQuizModelImplCopyWith<$Res> {
  __$$FilterQuizModelImplCopyWithImpl(
      _$FilterQuizModelImpl _value, $Res Function(_$FilterQuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
  }) {
    return _then(_$FilterQuizModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterQuizModelImpl implements _FilterQuizModel {
  _$FilterQuizModelImpl({this.name = '', this.title = ''});

  factory _$FilterQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterQuizModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'FilterQuizModel(name: $name, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterQuizModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, title);

  /// Create a copy of FilterQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterQuizModelImplCopyWith<_$FilterQuizModelImpl> get copyWith =>
      __$$FilterQuizModelImplCopyWithImpl<_$FilterQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterQuizModelImplToJson(
      this,
    );
  }
}

abstract class _FilterQuizModel implements FilterQuizModel {
  factory _FilterQuizModel({final String name, final String title}) =
      _$FilterQuizModelImpl;

  factory _FilterQuizModel.fromJson(Map<String, dynamic> json) =
      _$FilterQuizModelImpl.fromJson;

  @override
  String get name;
  @override
  String get title;

  /// Create a copy of FilterQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterQuizModelImplCopyWith<_$FilterQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
