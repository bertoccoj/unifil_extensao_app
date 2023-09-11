// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'solicitacao_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SolicitacaoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Posicao posicao) abrirNoMapa,
    required TResult Function(CriarSolicitacaoPayload payload) criarSolicitacao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Posicao posicao)? abrirNoMapa,
    TResult? Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Posicao posicao)? abrirNoMapa,
    TResult Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AbrirNoMapa value) abrirNoMapa,
    required TResult Function(CriarSolicitacao value) criarSolicitacao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AbrirNoMapa value)? abrirNoMapa,
    TResult? Function(CriarSolicitacao value)? criarSolicitacao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AbrirNoMapa value)? abrirNoMapa,
    TResult Function(CriarSolicitacao value)? criarSolicitacao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolicitacaoActorEventCopyWith<$Res> {
  factory $SolicitacaoActorEventCopyWith(SolicitacaoActorEvent value,
          $Res Function(SolicitacaoActorEvent) then) =
      _$SolicitacaoActorEventCopyWithImpl<$Res, SolicitacaoActorEvent>;
}

/// @nodoc
class _$SolicitacaoActorEventCopyWithImpl<$Res,
        $Val extends SolicitacaoActorEvent>
    implements $SolicitacaoActorEventCopyWith<$Res> {
  _$SolicitacaoActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AbrirNoMapaCopyWith<$Res> {
  factory _$$AbrirNoMapaCopyWith(
          _$AbrirNoMapa value, $Res Function(_$AbrirNoMapa) then) =
      __$$AbrirNoMapaCopyWithImpl<$Res>;
  @useResult
  $Res call({Posicao posicao});

  $PosicaoCopyWith<$Res> get posicao;
}

/// @nodoc
class __$$AbrirNoMapaCopyWithImpl<$Res>
    extends _$SolicitacaoActorEventCopyWithImpl<$Res, _$AbrirNoMapa>
    implements _$$AbrirNoMapaCopyWith<$Res> {
  __$$AbrirNoMapaCopyWithImpl(
      _$AbrirNoMapa _value, $Res Function(_$AbrirNoMapa) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posicao = null,
  }) {
    return _then(_$AbrirNoMapa(
      null == posicao
          ? _value.posicao
          : posicao // ignore: cast_nullable_to_non_nullable
              as Posicao,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PosicaoCopyWith<$Res> get posicao {
    return $PosicaoCopyWith<$Res>(_value.posicao, (value) {
      return _then(_value.copyWith(posicao: value));
    });
  }
}

/// @nodoc

class _$AbrirNoMapa implements AbrirNoMapa {
  const _$AbrirNoMapa(this.posicao);

  @override
  final Posicao posicao;

  @override
  String toString() {
    return 'SolicitacaoActorEvent.abrirNoMapa(posicao: $posicao)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbrirNoMapa &&
            (identical(other.posicao, posicao) || other.posicao == posicao));
  }

  @override
  int get hashCode => Object.hash(runtimeType, posicao);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbrirNoMapaCopyWith<_$AbrirNoMapa> get copyWith =>
      __$$AbrirNoMapaCopyWithImpl<_$AbrirNoMapa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Posicao posicao) abrirNoMapa,
    required TResult Function(CriarSolicitacaoPayload payload) criarSolicitacao,
  }) {
    return abrirNoMapa(posicao);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Posicao posicao)? abrirNoMapa,
    TResult? Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
  }) {
    return abrirNoMapa?.call(posicao);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Posicao posicao)? abrirNoMapa,
    TResult Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
    required TResult orElse(),
  }) {
    if (abrirNoMapa != null) {
      return abrirNoMapa(posicao);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AbrirNoMapa value) abrirNoMapa,
    required TResult Function(CriarSolicitacao value) criarSolicitacao,
  }) {
    return abrirNoMapa(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AbrirNoMapa value)? abrirNoMapa,
    TResult? Function(CriarSolicitacao value)? criarSolicitacao,
  }) {
    return abrirNoMapa?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AbrirNoMapa value)? abrirNoMapa,
    TResult Function(CriarSolicitacao value)? criarSolicitacao,
    required TResult orElse(),
  }) {
    if (abrirNoMapa != null) {
      return abrirNoMapa(this);
    }
    return orElse();
  }
}

abstract class AbrirNoMapa implements SolicitacaoActorEvent {
  const factory AbrirNoMapa(final Posicao posicao) = _$AbrirNoMapa;

  Posicao get posicao;
  @JsonKey(ignore: true)
  _$$AbrirNoMapaCopyWith<_$AbrirNoMapa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CriarSolicitacaoCopyWith<$Res> {
  factory _$$CriarSolicitacaoCopyWith(
          _$CriarSolicitacao value, $Res Function(_$CriarSolicitacao) then) =
      __$$CriarSolicitacaoCopyWithImpl<$Res>;
  @useResult
  $Res call({CriarSolicitacaoPayload payload});

  $CriarSolicitacaoPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CriarSolicitacaoCopyWithImpl<$Res>
    extends _$SolicitacaoActorEventCopyWithImpl<$Res, _$CriarSolicitacao>
    implements _$$CriarSolicitacaoCopyWith<$Res> {
  __$$CriarSolicitacaoCopyWithImpl(
      _$CriarSolicitacao _value, $Res Function(_$CriarSolicitacao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CriarSolicitacao(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as CriarSolicitacaoPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CriarSolicitacaoPayloadCopyWith<$Res> get payload {
    return $CriarSolicitacaoPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$CriarSolicitacao implements CriarSolicitacao {
  const _$CriarSolicitacao(this.payload);

  @override
  final CriarSolicitacaoPayload payload;

  @override
  String toString() {
    return 'SolicitacaoActorEvent.criarSolicitacao(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CriarSolicitacao &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CriarSolicitacaoCopyWith<_$CriarSolicitacao> get copyWith =>
      __$$CriarSolicitacaoCopyWithImpl<_$CriarSolicitacao>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Posicao posicao) abrirNoMapa,
    required TResult Function(CriarSolicitacaoPayload payload) criarSolicitacao,
  }) {
    return criarSolicitacao(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Posicao posicao)? abrirNoMapa,
    TResult? Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
  }) {
    return criarSolicitacao?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Posicao posicao)? abrirNoMapa,
    TResult Function(CriarSolicitacaoPayload payload)? criarSolicitacao,
    required TResult orElse(),
  }) {
    if (criarSolicitacao != null) {
      return criarSolicitacao(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AbrirNoMapa value) abrirNoMapa,
    required TResult Function(CriarSolicitacao value) criarSolicitacao,
  }) {
    return criarSolicitacao(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AbrirNoMapa value)? abrirNoMapa,
    TResult? Function(CriarSolicitacao value)? criarSolicitacao,
  }) {
    return criarSolicitacao?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AbrirNoMapa value)? abrirNoMapa,
    TResult Function(CriarSolicitacao value)? criarSolicitacao,
    required TResult orElse(),
  }) {
    if (criarSolicitacao != null) {
      return criarSolicitacao(this);
    }
    return orElse();
  }
}

abstract class CriarSolicitacao implements SolicitacaoActorEvent {
  const factory CriarSolicitacao(final CriarSolicitacaoPayload payload) =
      _$CriarSolicitacao;

  CriarSolicitacaoPayload get payload;
  @JsonKey(ignore: true)
  _$$CriarSolicitacaoCopyWith<_$CriarSolicitacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SolicitacaoActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolicitacaoActorStateCopyWith<$Res> {
  factory $SolicitacaoActorStateCopyWith(SolicitacaoActorState value,
          $Res Function(SolicitacaoActorState) then) =
      _$SolicitacaoActorStateCopyWithImpl<$Res, SolicitacaoActorState>;
}

/// @nodoc
class _$SolicitacaoActorStateCopyWithImpl<$Res,
        $Val extends SolicitacaoActorState>
    implements $SolicitacaoActorStateCopyWith<$Res> {
  _$SolicitacaoActorStateCopyWithImpl(this._value, this._then);

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
    extends _$SolicitacaoActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SolicitacaoActorState.initial()';
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
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
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
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SolicitacaoActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AcaoEmProgressoCopyWith<$Res> {
  factory _$$_AcaoEmProgressoCopyWith(
          _$_AcaoEmProgresso value, $Res Function(_$_AcaoEmProgresso) then) =
      __$$_AcaoEmProgressoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcaoEmProgressoCopyWithImpl<$Res>
    extends _$SolicitacaoActorStateCopyWithImpl<$Res, _$_AcaoEmProgresso>
    implements _$$_AcaoEmProgressoCopyWith<$Res> {
  __$$_AcaoEmProgressoCopyWithImpl(
      _$_AcaoEmProgresso _value, $Res Function(_$_AcaoEmProgresso) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcaoEmProgresso implements _AcaoEmProgresso {
  const _$_AcaoEmProgresso();

  @override
  String toString() {
    return 'SolicitacaoActorState.acaoEmProgresso()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcaoEmProgresso);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return acaoEmProgresso();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return acaoEmProgresso?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (acaoEmProgresso != null) {
      return acaoEmProgresso();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return acaoEmProgresso(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return acaoEmProgresso?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (acaoEmProgresso != null) {
      return acaoEmProgresso(this);
    }
    return orElse();
  }
}

abstract class _AcaoEmProgresso implements SolicitacaoActorState {
  const factory _AcaoEmProgresso() = _$_AcaoEmProgresso;
}

/// @nodoc
abstract class _$$_VerNoMapaSuccessCopyWith<$Res> {
  factory _$$_VerNoMapaSuccessCopyWith(
          _$_VerNoMapaSuccess value, $Res Function(_$_VerNoMapaSuccess) then) =
      __$$_VerNoMapaSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerNoMapaSuccessCopyWithImpl<$Res>
    extends _$SolicitacaoActorStateCopyWithImpl<$Res, _$_VerNoMapaSuccess>
    implements _$$_VerNoMapaSuccessCopyWith<$Res> {
  __$$_VerNoMapaSuccessCopyWithImpl(
      _$_VerNoMapaSuccess _value, $Res Function(_$_VerNoMapaSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerNoMapaSuccess implements _VerNoMapaSuccess {
  const _$_VerNoMapaSuccess();

  @override
  String toString() {
    return 'SolicitacaoActorState.verNoMapaSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerNoMapaSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return verNoMapaSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return verNoMapaSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (verNoMapaSuccess != null) {
      return verNoMapaSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return verNoMapaSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return verNoMapaSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (verNoMapaSuccess != null) {
      return verNoMapaSuccess(this);
    }
    return orElse();
  }
}

abstract class _VerNoMapaSuccess implements SolicitacaoActorState {
  const factory _VerNoMapaSuccess() = _$_VerNoMapaSuccess;
}

/// @nodoc
abstract class _$$_VerNoMapaFailureCopyWith<$Res> {
  factory _$$_VerNoMapaFailureCopyWith(
          _$_VerNoMapaFailure value, $Res Function(_$_VerNoMapaFailure) then) =
      __$$_VerNoMapaFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SolicitacaoFailure failure});

  $SolicitacaoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_VerNoMapaFailureCopyWithImpl<$Res>
    extends _$SolicitacaoActorStateCopyWithImpl<$Res, _$_VerNoMapaFailure>
    implements _$$_VerNoMapaFailureCopyWith<$Res> {
  __$$_VerNoMapaFailureCopyWithImpl(
      _$_VerNoMapaFailure _value, $Res Function(_$_VerNoMapaFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_VerNoMapaFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SolicitacaoFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SolicitacaoFailureCopyWith<$Res> get failure {
    return $SolicitacaoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_VerNoMapaFailure implements _VerNoMapaFailure {
  const _$_VerNoMapaFailure(this.failure);

  @override
  final SolicitacaoFailure failure;

  @override
  String toString() {
    return 'SolicitacaoActorState.verNoMapaFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerNoMapaFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerNoMapaFailureCopyWith<_$_VerNoMapaFailure> get copyWith =>
      __$$_VerNoMapaFailureCopyWithImpl<_$_VerNoMapaFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return verNoMapaFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return verNoMapaFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (verNoMapaFailure != null) {
      return verNoMapaFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return verNoMapaFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return verNoMapaFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (verNoMapaFailure != null) {
      return verNoMapaFailure(this);
    }
    return orElse();
  }
}

abstract class _VerNoMapaFailure implements SolicitacaoActorState {
  const factory _VerNoMapaFailure(final SolicitacaoFailure failure) =
      _$_VerNoMapaFailure;

  SolicitacaoFailure get failure;
  @JsonKey(ignore: true)
  _$$_VerNoMapaFailureCopyWith<_$_VerNoMapaFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CriarSolicitacaoSuccessCopyWith<$Res> {
  factory _$$_CriarSolicitacaoSuccessCopyWith(_$_CriarSolicitacaoSuccess value,
          $Res Function(_$_CriarSolicitacaoSuccess) then) =
      __$$_CriarSolicitacaoSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CriarSolicitacaoSuccessCopyWithImpl<$Res>
    extends _$SolicitacaoActorStateCopyWithImpl<$Res,
        _$_CriarSolicitacaoSuccess>
    implements _$$_CriarSolicitacaoSuccessCopyWith<$Res> {
  __$$_CriarSolicitacaoSuccessCopyWithImpl(_$_CriarSolicitacaoSuccess _value,
      $Res Function(_$_CriarSolicitacaoSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CriarSolicitacaoSuccess implements _CriarSolicitacaoSuccess {
  const _$_CriarSolicitacaoSuccess();

  @override
  String toString() {
    return 'SolicitacaoActorState.criarSolicitacaoSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CriarSolicitacaoSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (criarSolicitacaoSuccess != null) {
      return criarSolicitacaoSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (criarSolicitacaoSuccess != null) {
      return criarSolicitacaoSuccess(this);
    }
    return orElse();
  }
}

abstract class _CriarSolicitacaoSuccess implements SolicitacaoActorState {
  const factory _CriarSolicitacaoSuccess() = _$_CriarSolicitacaoSuccess;
}

/// @nodoc
abstract class _$$_CriarSolicitacaoFailureCopyWith<$Res> {
  factory _$$_CriarSolicitacaoFailureCopyWith(_$_CriarSolicitacaoFailure value,
          $Res Function(_$_CriarSolicitacaoFailure) then) =
      __$$_CriarSolicitacaoFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SolicitacaoFailure failure});

  $SolicitacaoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CriarSolicitacaoFailureCopyWithImpl<$Res>
    extends _$SolicitacaoActorStateCopyWithImpl<$Res,
        _$_CriarSolicitacaoFailure>
    implements _$$_CriarSolicitacaoFailureCopyWith<$Res> {
  __$$_CriarSolicitacaoFailureCopyWithImpl(_$_CriarSolicitacaoFailure _value,
      $Res Function(_$_CriarSolicitacaoFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_CriarSolicitacaoFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SolicitacaoFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SolicitacaoFailureCopyWith<$Res> get failure {
    return $SolicitacaoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CriarSolicitacaoFailure implements _CriarSolicitacaoFailure {
  const _$_CriarSolicitacaoFailure(this.failure);

  @override
  final SolicitacaoFailure failure;

  @override
  String toString() {
    return 'SolicitacaoActorState.criarSolicitacaoFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CriarSolicitacaoFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CriarSolicitacaoFailureCopyWith<_$_CriarSolicitacaoFailure>
      get copyWith =>
          __$$_CriarSolicitacaoFailureCopyWithImpl<_$_CriarSolicitacaoFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() acaoEmProgresso,
    required TResult Function() verNoMapaSuccess,
    required TResult Function(SolicitacaoFailure failure) verNoMapaFailure,
    required TResult Function() criarSolicitacaoSuccess,
    required TResult Function(SolicitacaoFailure failure)
        criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? acaoEmProgresso,
    TResult? Function()? verNoMapaSuccess,
    TResult? Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult? Function()? criarSolicitacaoSuccess,
    TResult? Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? acaoEmProgresso,
    TResult Function()? verNoMapaSuccess,
    TResult Function(SolicitacaoFailure failure)? verNoMapaFailure,
    TResult Function()? criarSolicitacaoSuccess,
    TResult Function(SolicitacaoFailure failure)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (criarSolicitacaoFailure != null) {
      return criarSolicitacaoFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AcaoEmProgresso value) acaoEmProgresso,
    required TResult Function(_VerNoMapaSuccess value) verNoMapaSuccess,
    required TResult Function(_VerNoMapaFailure value) verNoMapaFailure,
    required TResult Function(_CriarSolicitacaoSuccess value)
        criarSolicitacaoSuccess,
    required TResult Function(_CriarSolicitacaoFailure value)
        criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult? Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult? Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult? Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult? Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
  }) {
    return criarSolicitacaoFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AcaoEmProgresso value)? acaoEmProgresso,
    TResult Function(_VerNoMapaSuccess value)? verNoMapaSuccess,
    TResult Function(_VerNoMapaFailure value)? verNoMapaFailure,
    TResult Function(_CriarSolicitacaoSuccess value)? criarSolicitacaoSuccess,
    TResult Function(_CriarSolicitacaoFailure value)? criarSolicitacaoFailure,
    required TResult orElse(),
  }) {
    if (criarSolicitacaoFailure != null) {
      return criarSolicitacaoFailure(this);
    }
    return orElse();
  }
}

abstract class _CriarSolicitacaoFailure implements SolicitacaoActorState {
  const factory _CriarSolicitacaoFailure(final SolicitacaoFailure failure) =
      _$_CriarSolicitacaoFailure;

  SolicitacaoFailure get failure;
  @JsonKey(ignore: true)
  _$$_CriarSolicitacaoFailureCopyWith<_$_CriarSolicitacaoFailure>
      get copyWith => throw _privateConstructorUsedError;
}
