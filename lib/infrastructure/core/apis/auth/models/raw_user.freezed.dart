// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawUser _$RawUserFromJson(Map<String, dynamic> json) {
  return _RawUser.fromJson(json);
}

/// @nodoc
mixin _$RawUser {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawUserCopyWith<RawUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawUserCopyWith<$Res> {
  factory $RawUserCopyWith(RawUser value, $Res Function(RawUser) then) =
      _$RawUserCopyWithImpl<$Res, RawUser>;
  @useResult
  $Res call({int id, DateTime createdAt, String email, String displayName});
}

/// @nodoc
class _$RawUserCopyWithImpl<$Res, $Val extends RawUser>
    implements $RawUserCopyWith<$Res> {
  _$RawUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? email = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RawUserCopyWith<$Res> implements $RawUserCopyWith<$Res> {
  factory _$$_RawUserCopyWith(
          _$_RawUser value, $Res Function(_$_RawUser) then) =
      __$$_RawUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime createdAt, String email, String displayName});
}

/// @nodoc
class __$$_RawUserCopyWithImpl<$Res>
    extends _$RawUserCopyWithImpl<$Res, _$_RawUser>
    implements _$$_RawUserCopyWith<$Res> {
  __$$_RawUserCopyWithImpl(_$_RawUser _value, $Res Function(_$_RawUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? email = null,
    Object? displayName = null,
  }) {
    return _then(_$_RawUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawUser implements _RawUser {
  _$_RawUser(
      {required this.id,
      required this.createdAt,
      required this.email,
      required this.displayName});

  factory _$_RawUser.fromJson(Map<String, dynamic> json) =>
      _$$_RawUserFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String email;
  @override
  final String displayName;

  @override
  String toString() {
    return 'RawUser(id: $id, createdAt: $createdAt, email: $email, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, email, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RawUserCopyWith<_$_RawUser> get copyWith =>
      __$$_RawUserCopyWithImpl<_$_RawUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawUserToJson(
      this,
    );
  }
}

abstract class _RawUser implements RawUser {
  factory _RawUser(
      {required final int id,
      required final DateTime createdAt,
      required final String email,
      required final String displayName}) = _$_RawUser;

  factory _RawUser.fromJson(Map<String, dynamic> json) = _$_RawUser.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get email;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_RawUserCopyWith<_$_RawUser> get copyWith =>
      throw _privateConstructorUsedError;
}
