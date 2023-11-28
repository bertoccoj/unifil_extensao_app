// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wrongCredentials,
    required TResult Function() unexpected,
    required TResult Function(String? reason) registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wrongCredentials,
    TResult? Function()? unexpected,
    TResult? Function(String? reason)? registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wrongCredentials,
    TResult Function()? unexpected,
    TResult Function(String? reason)? registrationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WrongCredentials value) wrongCredentials,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WrongCredentials value)? wrongCredentials,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WrongCredentials value)? wrongCredentials,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WrongCredentialsCopyWith<$Res> {
  factory _$$WrongCredentialsCopyWith(
          _$WrongCredentials value, $Res Function(_$WrongCredentials) then) =
      __$$WrongCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$WrongCredentials>
    implements _$$WrongCredentialsCopyWith<$Res> {
  __$$WrongCredentialsCopyWithImpl(
      _$WrongCredentials _value, $Res Function(_$WrongCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongCredentials extends WrongCredentials {
  _$WrongCredentials() : super._();

  @override
  String toString() {
    return 'AuthFailure.wrongCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wrongCredentials,
    required TResult Function() unexpected,
    required TResult Function(String? reason) registrationFailed,
  }) {
    return wrongCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wrongCredentials,
    TResult? Function()? unexpected,
    TResult? Function(String? reason)? registrationFailed,
  }) {
    return wrongCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wrongCredentials,
    TResult Function()? unexpected,
    TResult Function(String? reason)? registrationFailed,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WrongCredentials value) wrongCredentials,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) {
    return wrongCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WrongCredentials value)? wrongCredentials,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) {
    return wrongCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WrongCredentials value)? wrongCredentials,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials(this);
    }
    return orElse();
  }
}

abstract class WrongCredentials extends AuthFailure {
  factory WrongCredentials() = _$WrongCredentials;
  WrongCredentials._() : super._();
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$Unexpected>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unexpected extends Unexpected {
  _$Unexpected() : super._();

  @override
  String toString() {
    return 'AuthFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wrongCredentials,
    required TResult Function() unexpected,
    required TResult Function(String? reason) registrationFailed,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wrongCredentials,
    TResult? Function()? unexpected,
    TResult? Function(String? reason)? registrationFailed,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wrongCredentials,
    TResult Function()? unexpected,
    TResult Function(String? reason)? registrationFailed,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WrongCredentials value) wrongCredentials,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WrongCredentials value)? wrongCredentials,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WrongCredentials value)? wrongCredentials,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected extends AuthFailure {
  factory Unexpected() = _$Unexpected;
  Unexpected._() : super._();
}

/// @nodoc
abstract class _$$RegistrationFailedCopyWith<$Res> {
  factory _$$RegistrationFailedCopyWith(_$RegistrationFailed value,
          $Res Function(_$RegistrationFailed) then) =
      __$$RegistrationFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$RegistrationFailedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$RegistrationFailed>
    implements _$$RegistrationFailedCopyWith<$Res> {
  __$$RegistrationFailedCopyWithImpl(
      _$RegistrationFailed _value, $Res Function(_$RegistrationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$RegistrationFailed(
      freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegistrationFailed extends RegistrationFailed {
  _$RegistrationFailed([this.reason]) : super._();

  @override
  final String? reason;

  @override
  String toString() {
    return 'AuthFailure.registrationFailed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationFailed &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationFailedCopyWith<_$RegistrationFailed> get copyWith =>
      __$$RegistrationFailedCopyWithImpl<_$RegistrationFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wrongCredentials,
    required TResult Function() unexpected,
    required TResult Function(String? reason) registrationFailed,
  }) {
    return registrationFailed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wrongCredentials,
    TResult? Function()? unexpected,
    TResult? Function(String? reason)? registrationFailed,
  }) {
    return registrationFailed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wrongCredentials,
    TResult Function()? unexpected,
    TResult Function(String? reason)? registrationFailed,
    required TResult orElse(),
  }) {
    if (registrationFailed != null) {
      return registrationFailed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WrongCredentials value) wrongCredentials,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) {
    return registrationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WrongCredentials value)? wrongCredentials,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) {
    return registrationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WrongCredentials value)? wrongCredentials,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) {
    if (registrationFailed != null) {
      return registrationFailed(this);
    }
    return orElse();
  }
}

abstract class RegistrationFailed extends AuthFailure {
  factory RegistrationFailed([final String? reason]) = _$RegistrationFailed;
  RegistrationFailed._() : super._();

  String? get reason;
  @JsonKey(ignore: true)
  _$$RegistrationFailedCopyWith<_$RegistrationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
