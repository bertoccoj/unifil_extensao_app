// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Login(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String email, required final String password}) = _$_Login;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(_$_Register(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) {
    return register(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) {
    return register?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String email,
      required final String password,
      required final String name}) = _$_Register;

  String get email;
  String get password;
  String get name;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordCopyWith<$Res> {
  factory _$$_ResetPasswordCopyWith(
          _$_ResetPassword value, $Res Function(_$_ResetPassword) then) =
      __$$_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResetPassword>
    implements _$$_ResetPasswordCopyWith<$Res> {
  __$$_ResetPasswordCopyWithImpl(
      _$_ResetPassword _value, $Res Function(_$_ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ResetPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      __$$_ResetPasswordCopyWithImpl<_$_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword({required final String email}) =
      _$_ResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_AuthenticateCopyWith<$Res> {
  factory _$$_AuthenticateCopyWith(
          _$_Authenticate value, $Res Function(_$_Authenticate) then) =
      __$$_AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Authenticate>
    implements _$$_AuthenticateCopyWith<$Res> {
  __$$_AuthenticateCopyWithImpl(
      _$_Authenticate _value, $Res Function(_$_Authenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticate implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String name)? register,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
    TResult? Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String name)? register,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoginSuccessCopyWith<$Res> {
  factory _$$_LoginSuccessCopyWith(
          _$_LoginSuccess value, $Res Function(_$_LoginSuccess) then) =
      __$$_LoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginSuccess>
    implements _$$_LoginSuccessCopyWith<$Res> {
  __$$_LoginSuccessCopyWithImpl(
      _$_LoginSuccess _value, $Res Function(_$_LoginSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginSuccess implements _LoginSuccess {
  const _$_LoginSuccess();

  @override
  String toString() {
    return 'AuthState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess() = _$_LoginSuccess;
}

/// @nodoc
abstract class _$$_LoginFailedCopyWith<$Res> {
  factory _$$_LoginFailedCopyWith(
          _$_LoginFailed value, $Res Function(_$_LoginFailed) then) =
      __$$_LoginFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({IFailure failure});
}

/// @nodoc
class __$$_LoginFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginFailed>
    implements _$$_LoginFailedCopyWith<$Res> {
  __$$_LoginFailedCopyWithImpl(
      _$_LoginFailed _value, $Res Function(_$_LoginFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoginFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_LoginFailed implements _LoginFailed {
  const _$_LoginFailed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'AuthState.loginFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailedCopyWith<_$_LoginFailed> get copyWith =>
      __$$_LoginFailedCopyWithImpl<_$_LoginFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return loginFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return loginFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements AuthState {
  const factory _LoginFailed(final IFailure failure) = _$_LoginFailed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$_LoginFailedCopyWith<_$_LoginFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterSuccessCopyWith<$Res> {
  factory _$$_RegisterSuccessCopyWith(
          _$_RegisterSuccess value, $Res Function(_$_RegisterSuccess) then) =
      __$$_RegisterSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterSuccess>
    implements _$$_RegisterSuccessCopyWith<$Res> {
  __$$_RegisterSuccessCopyWithImpl(
      _$_RegisterSuccess _value, $Res Function(_$_RegisterSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterSuccess implements _RegisterSuccess {
  const _$_RegisterSuccess();

  @override
  String toString() {
    return 'AuthState.registerSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess() = _$_RegisterSuccess;
}

/// @nodoc
abstract class _$$_RegisterFailedCopyWith<$Res> {
  factory _$$_RegisterFailedCopyWith(
          _$_RegisterFailed value, $Res Function(_$_RegisterFailed) then) =
      __$$_RegisterFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({IFailure failure});
}

/// @nodoc
class __$$_RegisterFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterFailed>
    implements _$$_RegisterFailedCopyWith<$Res> {
  __$$_RegisterFailedCopyWithImpl(
      _$_RegisterFailed _value, $Res Function(_$_RegisterFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_RegisterFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_RegisterFailed implements _RegisterFailed {
  const _$_RegisterFailed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'AuthState.registerFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFailedCopyWith<_$_RegisterFailed> get copyWith =>
      __$$_RegisterFailedCopyWithImpl<_$_RegisterFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return registerFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return registerFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return registerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return registerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailed implements AuthState {
  const factory _RegisterFailed(final IFailure failure) = _$_RegisterFailed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$_RegisterFailedCopyWith<_$_RegisterFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordSuccessCopyWith<$Res> {
  factory _$$_ResetPasswordSuccessCopyWith(_$_ResetPasswordSuccess value,
          $Res Function(_$_ResetPasswordSuccess) then) =
      __$$_ResetPasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPasswordSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResetPasswordSuccess>
    implements _$$_ResetPasswordSuccessCopyWith<$Res> {
  __$$_ResetPasswordSuccessCopyWithImpl(_$_ResetPasswordSuccess _value,
      $Res Function(_$_ResetPasswordSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetPasswordSuccess implements _ResetPasswordSuccess {
  const _$_ResetPasswordSuccess();

  @override
  String toString() {
    return 'AuthState.resetPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetPasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return resetPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return resetPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordSuccess implements AuthState {
  const factory _ResetPasswordSuccess() = _$_ResetPasswordSuccess;
}

/// @nodoc
abstract class _$$_ResetPasswordFailedCopyWith<$Res> {
  factory _$$_ResetPasswordFailedCopyWith(_$_ResetPasswordFailed value,
          $Res Function(_$_ResetPasswordFailed) then) =
      __$$_ResetPasswordFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({IFailure failure});
}

/// @nodoc
class __$$_ResetPasswordFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResetPasswordFailed>
    implements _$$_ResetPasswordFailedCopyWith<$Res> {
  __$$_ResetPasswordFailedCopyWithImpl(_$_ResetPasswordFailed _value,
      $Res Function(_$_ResetPasswordFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ResetPasswordFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordFailed implements _ResetPasswordFailed {
  const _$_ResetPasswordFailed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'AuthState.resetPasswordFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordFailedCopyWith<_$_ResetPasswordFailed> get copyWith =>
      __$$_ResetPasswordFailedCopyWithImpl<_$_ResetPasswordFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return resetPasswordFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return resetPasswordFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordFailed != null) {
      return resetPasswordFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return resetPasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return resetPasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordFailed != null) {
      return resetPasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordFailed implements AuthState {
  const factory _ResetPasswordFailed(final IFailure failure) =
      _$_ResetPasswordFailed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$_ResetPasswordFailedCopyWith<_$_ResetPasswordFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutSuccessCopyWith<$Res> {
  factory _$$_LogoutSuccessCopyWith(
          _$_LogoutSuccess value, $Res Function(_$_LogoutSuccess) then) =
      __$$_LogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LogoutSuccess>
    implements _$$_LogoutSuccessCopyWith<$Res> {
  __$$_LogoutSuccessCopyWithImpl(
      _$_LogoutSuccess _value, $Res Function(_$_LogoutSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutSuccess implements _LogoutSuccess {
  const _$_LogoutSuccess();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess() = _$_LogoutSuccess;
}

/// @nodoc
abstract class _$$_LogoutFailedCopyWith<$Res> {
  factory _$$_LogoutFailedCopyWith(
          _$_LogoutFailed value, $Res Function(_$_LogoutFailed) then) =
      __$$_LogoutFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({IFailure failure});
}

/// @nodoc
class __$$_LogoutFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LogoutFailed>
    implements _$$_LogoutFailedCopyWith<$Res> {
  __$$_LogoutFailedCopyWithImpl(
      _$_LogoutFailed _value, $Res Function(_$_LogoutFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LogoutFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_LogoutFailed implements _LogoutFailed {
  const _$_LogoutFailed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'AuthState.logoutFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoutFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoutFailedCopyWith<_$_LogoutFailed> get copyWith =>
      __$$_LogoutFailedCopyWithImpl<_$_LogoutFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return logoutFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return logoutFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (logoutFailed != null) {
      return logoutFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return logoutFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return logoutFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (logoutFailed != null) {
      return logoutFailed(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailed implements AuthState {
  const factory _LogoutFailed(final IFailure failure) = _$_LogoutFailed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$_LogoutFailedCopyWith<_$_LogoutFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticateuccessCopyWith<$Res> {
  factory _$$_AuthenticateuccessCopyWith(_$_Authenticateuccess value,
          $Res Function(_$_Authenticateuccess) then) =
      __$$_AuthenticateuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticateuccess>
    implements _$$_AuthenticateuccessCopyWith<$Res> {
  __$$_AuthenticateuccessCopyWithImpl(
      _$_Authenticateuccess _value, $Res Function(_$_Authenticateuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticateuccess implements _Authenticateuccess {
  const _$_Authenticateuccess();

  @override
  String toString() {
    return 'AuthState.authenticateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticateuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return authenticateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return authenticateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateSuccess != null) {
      return authenticateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return authenticateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return authenticateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateSuccess != null) {
      return authenticateSuccess(this);
    }
    return orElse();
  }
}

abstract class _Authenticateuccess implements AuthState {
  const factory _Authenticateuccess() = _$_Authenticateuccess;
}

/// @nodoc
abstract class _$$_AuthenticateFailedCopyWith<$Res> {
  factory _$$_AuthenticateFailedCopyWith(_$_AuthenticateFailed value,
          $Res Function(_$_AuthenticateFailed) then) =
      __$$_AuthenticateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({IFailure failure});
}

/// @nodoc
class __$$_AuthenticateFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthenticateFailed>
    implements _$$_AuthenticateFailedCopyWith<$Res> {
  __$$_AuthenticateFailedCopyWithImpl(
      _$_AuthenticateFailed _value, $Res Function(_$_AuthenticateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_AuthenticateFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_AuthenticateFailed implements _AuthenticateFailed {
  const _$_AuthenticateFailed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'AuthState.authenticateFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateFailedCopyWith<_$_AuthenticateFailed> get copyWith =>
      __$$_AuthenticateFailedCopyWithImpl<_$_AuthenticateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(IFailure failure) loginFailed,
    required TResult Function() registerSuccess,
    required TResult Function(IFailure failure) registerFailed,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(IFailure failure) resetPasswordFailed,
    required TResult Function() logoutSuccess,
    required TResult Function(IFailure failure) logoutFailed,
    required TResult Function() authenticateSuccess,
    required TResult Function(IFailure failure) authenticateFailed,
  }) {
    return authenticateFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(IFailure failure)? loginFailed,
    TResult? Function()? registerSuccess,
    TResult? Function(IFailure failure)? registerFailed,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(IFailure failure)? resetPasswordFailed,
    TResult? Function()? logoutSuccess,
    TResult? Function(IFailure failure)? logoutFailed,
    TResult? Function()? authenticateSuccess,
    TResult? Function(IFailure failure)? authenticateFailed,
  }) {
    return authenticateFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(IFailure failure)? loginFailed,
    TResult Function()? registerSuccess,
    TResult Function(IFailure failure)? registerFailed,
    TResult Function()? resetPasswordSuccess,
    TResult Function(IFailure failure)? resetPasswordFailed,
    TResult Function()? logoutSuccess,
    TResult Function(IFailure failure)? logoutFailed,
    TResult Function()? authenticateSuccess,
    TResult Function(IFailure failure)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateFailed != null) {
      return authenticateFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(_ResetPasswordFailed value) resetPasswordFailed,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailed value) logoutFailed,
    required TResult Function(_Authenticateuccess value) authenticateSuccess,
    required TResult Function(_AuthenticateFailed value) authenticateFailed,
  }) {
    return authenticateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailed value)? logoutFailed,
    TResult? Function(_Authenticateuccess value)? authenticateSuccess,
    TResult? Function(_AuthenticateFailed value)? authenticateFailed,
  }) {
    return authenticateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(_ResetPasswordFailed value)? resetPasswordFailed,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailed value)? logoutFailed,
    TResult Function(_Authenticateuccess value)? authenticateSuccess,
    TResult Function(_AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateFailed != null) {
      return authenticateFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateFailed implements AuthState {
  const factory _AuthenticateFailed(final IFailure failure) =
      _$_AuthenticateFailed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$_AuthenticateFailedCopyWith<_$_AuthenticateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
