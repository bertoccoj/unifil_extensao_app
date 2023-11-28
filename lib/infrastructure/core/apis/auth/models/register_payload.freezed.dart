// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterPayload _$RegisterPayloadFromJson(Map<String, dynamic> json) {
  return _RegisterPayload.fromJson(json);
}

/// @nodoc
mixin _$RegisterPayload {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterPayloadCopyWith<RegisterPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPayloadCopyWith<$Res> {
  factory $RegisterPayloadCopyWith(
          RegisterPayload value, $Res Function(RegisterPayload) then) =
      _$RegisterPayloadCopyWithImpl<$Res, RegisterPayload>;
  @useResult
  $Res call({String email, String password, String displayName});
}

/// @nodoc
class _$RegisterPayloadCopyWithImpl<$Res, $Val extends RegisterPayload>
    implements $RegisterPayloadCopyWith<$Res> {
  _$RegisterPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterPayloadCopyWith<$Res>
    implements $RegisterPayloadCopyWith<$Res> {
  factory _$$_RegisterPayloadCopyWith(
          _$_RegisterPayload value, $Res Function(_$_RegisterPayload) then) =
      __$$_RegisterPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String displayName});
}

/// @nodoc
class __$$_RegisterPayloadCopyWithImpl<$Res>
    extends _$RegisterPayloadCopyWithImpl<$Res, _$_RegisterPayload>
    implements _$$_RegisterPayloadCopyWith<$Res> {
  __$$_RegisterPayloadCopyWithImpl(
      _$_RegisterPayload _value, $Res Function(_$_RegisterPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_$_RegisterPayload(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$_RegisterPayload implements _RegisterPayload {
  const _$_RegisterPayload(
      {required this.email, required this.password, required this.displayName});

  factory _$_RegisterPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterPayloadFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;

  @override
  String toString() {
    return 'RegisterPayload(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterPayload &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterPayloadCopyWith<_$_RegisterPayload> get copyWith =>
      __$$_RegisterPayloadCopyWithImpl<_$_RegisterPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterPayloadToJson(
      this,
    );
  }
}

abstract class _RegisterPayload implements RegisterPayload {
  const factory _RegisterPayload(
      {required final String email,
      required final String password,
      required final String displayName}) = _$_RegisterPayload;

  factory _RegisterPayload.fromJson(Map<String, dynamic> json) =
      _$_RegisterPayload.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterPayloadCopyWith<_$_RegisterPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
