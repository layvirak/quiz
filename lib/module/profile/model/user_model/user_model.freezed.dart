// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'idx')
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'enabled')
  int? get enabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String? get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login')
  String? get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_modules')
  List<RoleItemModel>? get blockModules => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<RoleItemModel>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_emails')
  List<String>? get userEmails => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;
  List<String>? get company => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'enabled') int? enabled,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'last_login') String? lastLogin,
      @JsonKey(name: 'block_modules') List<RoleItemModel>? blockModules,
      @JsonKey(name: 'roles') List<RoleItemModel>? roles,
      @JsonKey(name: 'user_emails') List<String>? userEmails,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      List<String>? company});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? idx = freezed,
    Object? enabled = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? timeZone = freezed,
    Object? userImage = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? userType = freezed,
    Object? lastLogin = freezed,
    Object? blockModules = freezed,
    Object? roles = freezed,
    Object? userEmails = freezed,
    Object? employeeId = freezed,
    Object? customerId = freezed,
    Object? mobileNo = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      blockModules: freezed == blockModules
          ? _value.blockModules
          : blockModules // ignore: cast_nullable_to_non_nullable
              as List<RoleItemModel>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleItemModel>?,
      userEmails: freezed == userEmails
          ? _value.userEmails
          : userEmails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'enabled') int? enabled,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'last_login') String? lastLogin,
      @JsonKey(name: 'block_modules') List<RoleItemModel>? blockModules,
      @JsonKey(name: 'roles') List<RoleItemModel>? roles,
      @JsonKey(name: 'user_emails') List<String>? userEmails,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      List<String>? company});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? idx = freezed,
    Object? enabled = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? timeZone = freezed,
    Object? userImage = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? userType = freezed,
    Object? lastLogin = freezed,
    Object? blockModules = freezed,
    Object? roles = freezed,
    Object? userEmails = freezed,
    Object? employeeId = freezed,
    Object? customerId = freezed,
    Object? mobileNo = freezed,
    Object? company = freezed,
  }) {
    return _then(_$UserModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      blockModules: freezed == blockModules
          ? _value._blockModules
          : blockModules // ignore: cast_nullable_to_non_nullable
              as List<RoleItemModel>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleItemModel>?,
      userEmails: freezed == userEmails
          ? _value._userEmails
          : userEmails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value._company
          : company // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'idx') this.idx,
      @JsonKey(name: 'enabled') this.enabled,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'time_zone') this.timeZone,
      @JsonKey(name: 'user_image') this.userImage,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'birth_date') this.birthDate = "",
      @JsonKey(name: 'user_type') this.userType,
      @JsonKey(name: 'last_login') this.lastLogin,
      @JsonKey(name: 'block_modules') final List<RoleItemModel>? blockModules,
      @JsonKey(name: 'roles') final List<RoleItemModel>? roles,
      @JsonKey(name: 'user_emails') final List<String>? userEmails,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      final List<String>? company})
      : _blockModules = blockModules,
        _roles = roles,
        _userEmails = userEmails,
        _company = company;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'idx')
  final int? idx;
  @override
  @JsonKey(name: 'enabled')
  final int? enabled;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'time_zone')
  final String? timeZone;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'last_login')
  final String? lastLogin;
  final List<RoleItemModel>? _blockModules;
  @override
  @JsonKey(name: 'block_modules')
  List<RoleItemModel>? get blockModules {
    final value = _blockModules;
    if (value == null) return null;
    if (_blockModules is EqualUnmodifiableListView) return _blockModules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RoleItemModel>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<RoleItemModel>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _userEmails;
  @override
  @JsonKey(name: 'user_emails')
  List<String>? get userEmails {
    final value = _userEmails;
    if (value == null) return null;
    if (_userEmails is EqualUnmodifiableListView) return _userEmails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @override
  @JsonKey(name: 'customer_id')
  final String? customerId;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;
  final List<String>? _company;
  @override
  List<String>? get company {
    final value = _company;
    if (value == null) return null;
    if (_company is EqualUnmodifiableListView) return _company;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(name: $name, idx: $idx, enabled: $enabled, email: $email, firstName: $firstName, lastName: $lastName, fullName: $fullName, language: $language, timeZone: $timeZone, userImage: $userImage, gender: $gender, birthDate: $birthDate, userType: $userType, lastLogin: $lastLogin, blockModules: $blockModules, roles: $roles, userEmails: $userEmails, employeeId: $employeeId, customerId: $customerId, mobileNo: $mobileNo, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            const DeepCollectionEquality()
                .equals(other._blockModules, _blockModules) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._userEmails, _userEmails) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            const DeepCollectionEquality().equals(other._company, _company));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        idx,
        enabled,
        email,
        firstName,
        lastName,
        fullName,
        language,
        timeZone,
        userImage,
        gender,
        birthDate,
        userType,
        lastLogin,
        const DeepCollectionEquality().hash(_blockModules),
        const DeepCollectionEquality().hash(_roles),
        const DeepCollectionEquality().hash(_userEmails),
        employeeId,
        customerId,
        mobileNo,
        const DeepCollectionEquality().hash(_company)
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'idx') final int? idx,
      @JsonKey(name: 'enabled') final int? enabled,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'time_zone') final String? timeZone,
      @JsonKey(name: 'user_image') final String? userImage,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'birth_date') final String? birthDate,
      @JsonKey(name: 'user_type') final String? userType,
      @JsonKey(name: 'last_login') final String? lastLogin,
      @JsonKey(name: 'block_modules') final List<RoleItemModel>? blockModules,
      @JsonKey(name: 'roles') final List<RoleItemModel>? roles,
      @JsonKey(name: 'user_emails') final List<String>? userEmails,
      @JsonKey(name: 'employee_id') final String? employeeId,
      @JsonKey(name: 'customer_id') final String? customerId,
      @JsonKey(name: 'mobile_no') final String? mobileNo,
      final List<String>? company}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'idx')
  int? get idx;
  @override
  @JsonKey(name: 'enabled')
  int? get enabled;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'time_zone')
  String? get timeZone;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'last_login')
  String? get lastLogin;
  @override
  @JsonKey(name: 'block_modules')
  List<RoleItemModel>? get blockModules;
  @override
  @JsonKey(name: 'roles')
  List<RoleItemModel>? get roles;
  @override
  @JsonKey(name: 'user_emails')
  List<String>? get userEmails;
  @override
  @JsonKey(name: 'employee_id')
  String? get employeeId;
  @override
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @override
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;
  @override
  List<String>? get company;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
