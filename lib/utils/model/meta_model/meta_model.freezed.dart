// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this MetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaModelImplCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$$MetaModelImplCopyWith(
          _$MetaModelImpl value, $Res Function(_$MetaModelImpl) then) =
      __$$MetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class __$$MetaModelImplCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$MetaModelImpl>
    implements _$$MetaModelImplCopyWith<$Res> {
  __$$MetaModelImplCopyWithImpl(
      _$MetaModelImpl _value, $Res Function(_$MetaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$MetaModelImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaModelImpl implements _MetaModel {
  _$MetaModelImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      this.from,
      @JsonKey(name: "last_page") this.lastPage,
      this.path,
      @JsonKey(name: "per_page") this.perPage,
      this.to,
      this.total});

  factory _$MetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaModelImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'MetaModel(currentPage: $currentPage, from: $from, lastPage: $lastPage, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, from, lastPage, path, perPage, to, total);

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      __$$MetaModelImplCopyWithImpl<_$MetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaModelImplToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  factory _MetaModel(
      {@JsonKey(name: "current_page") final int? currentPage,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      final int? to,
      final int? total}) = _$MetaModelImpl;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$MetaModelImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  int? get to;
  @override
  int? get total;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
