// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtro_solicitacoes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FiltroSolicidacoes {
  ETipoSolicitacao? get tipo => throw _privateConstructorUsedError;
  EStatusSolicitacao? get status => throw _privateConstructorUsedError;
  Posicao? get posicao => throw _privateConstructorUsedError;
  Bairro? get bairro => throw _privateConstructorUsedError;
  Cidade? get cidade => throw _privateConstructorUsedError;
  Estado? get estado => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  bool? get onlyCurrentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FiltroSolicidacoesCopyWith<FiltroSolicidacoes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltroSolicidacoesCopyWith<$Res> {
  factory $FiltroSolicidacoesCopyWith(
          FiltroSolicidacoes value, $Res Function(FiltroSolicidacoes) then) =
      _$FiltroSolicidacoesCopyWithImpl<$Res, FiltroSolicidacoes>;
  @useResult
  $Res call(
      {ETipoSolicitacao? tipo,
      EStatusSolicitacao? status,
      Posicao? posicao,
      Bairro? bairro,
      Cidade? cidade,
      Estado? estado,
      int? userId,
      bool? onlyCurrentUser});

  $PosicaoCopyWith<$Res>? get posicao;
  $BairroCopyWith<$Res>? get bairro;
  $CidadeCopyWith<$Res>? get cidade;
  $EstadoCopyWith<$Res>? get estado;
}

/// @nodoc
class _$FiltroSolicidacoesCopyWithImpl<$Res, $Val extends FiltroSolicidacoes>
    implements $FiltroSolicidacoesCopyWith<$Res> {
  _$FiltroSolicidacoesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipo = freezed,
    Object? status = freezed,
    Object? posicao = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? estado = freezed,
    Object? userId = freezed,
    Object? onlyCurrentUser = freezed,
  }) {
    return _then(_value.copyWith(
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EStatusSolicitacao?,
      posicao: freezed == posicao
          ? _value.posicao
          : posicao // ignore: cast_nullable_to_non_nullable
              as Posicao?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as Bairro?,
      cidade: freezed == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as Cidade?,
      estado: freezed == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as Estado?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyCurrentUser: freezed == onlyCurrentUser
          ? _value.onlyCurrentUser
          : onlyCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PosicaoCopyWith<$Res>? get posicao {
    if (_value.posicao == null) {
      return null;
    }

    return $PosicaoCopyWith<$Res>(_value.posicao!, (value) {
      return _then(_value.copyWith(posicao: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BairroCopyWith<$Res>? get bairro {
    if (_value.bairro == null) {
      return null;
    }

    return $BairroCopyWith<$Res>(_value.bairro!, (value) {
      return _then(_value.copyWith(bairro: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CidadeCopyWith<$Res>? get cidade {
    if (_value.cidade == null) {
      return null;
    }

    return $CidadeCopyWith<$Res>(_value.cidade!, (value) {
      return _then(_value.copyWith(cidade: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EstadoCopyWith<$Res>? get estado {
    if (_value.estado == null) {
      return null;
    }

    return $EstadoCopyWith<$Res>(_value.estado!, (value) {
      return _then(_value.copyWith(estado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FiltroSolicidacoesCopyWith<$Res>
    implements $FiltroSolicidacoesCopyWith<$Res> {
  factory _$$_FiltroSolicidacoesCopyWith(_$_FiltroSolicidacoes value,
          $Res Function(_$_FiltroSolicidacoes) then) =
      __$$_FiltroSolicidacoesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ETipoSolicitacao? tipo,
      EStatusSolicitacao? status,
      Posicao? posicao,
      Bairro? bairro,
      Cidade? cidade,
      Estado? estado,
      int? userId,
      bool? onlyCurrentUser});

  @override
  $PosicaoCopyWith<$Res>? get posicao;
  @override
  $BairroCopyWith<$Res>? get bairro;
  @override
  $CidadeCopyWith<$Res>? get cidade;
  @override
  $EstadoCopyWith<$Res>? get estado;
}

/// @nodoc
class __$$_FiltroSolicidacoesCopyWithImpl<$Res>
    extends _$FiltroSolicidacoesCopyWithImpl<$Res, _$_FiltroSolicidacoes>
    implements _$$_FiltroSolicidacoesCopyWith<$Res> {
  __$$_FiltroSolicidacoesCopyWithImpl(
      _$_FiltroSolicidacoes _value, $Res Function(_$_FiltroSolicidacoes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipo = freezed,
    Object? status = freezed,
    Object? posicao = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? estado = freezed,
    Object? userId = freezed,
    Object? onlyCurrentUser = freezed,
  }) {
    return _then(_$_FiltroSolicidacoes(
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EStatusSolicitacao?,
      posicao: freezed == posicao
          ? _value.posicao
          : posicao // ignore: cast_nullable_to_non_nullable
              as Posicao?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as Bairro?,
      cidade: freezed == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as Cidade?,
      estado: freezed == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as Estado?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyCurrentUser: freezed == onlyCurrentUser
          ? _value.onlyCurrentUser
          : onlyCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FiltroSolicidacoes implements _FiltroSolicidacoes {
  const _$_FiltroSolicidacoes(
      {this.tipo,
      this.status,
      this.posicao,
      this.bairro,
      this.cidade,
      this.estado,
      this.userId,
      this.onlyCurrentUser});

  @override
  final ETipoSolicitacao? tipo;
  @override
  final EStatusSolicitacao? status;
  @override
  final Posicao? posicao;
  @override
  final Bairro? bairro;
  @override
  final Cidade? cidade;
  @override
  final Estado? estado;
  @override
  final int? userId;
  @override
  final bool? onlyCurrentUser;

  @override
  String toString() {
    return 'FiltroSolicidacoes(tipo: $tipo, status: $status, posicao: $posicao, bairro: $bairro, cidade: $cidade, estado: $estado, userId: $userId, onlyCurrentUser: $onlyCurrentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltroSolicidacoes &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.posicao, posicao) || other.posicao == posicao) &&
            (identical(other.bairro, bairro) || other.bairro == bairro) &&
            (identical(other.cidade, cidade) || other.cidade == cidade) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.onlyCurrentUser, onlyCurrentUser) ||
                other.onlyCurrentUser == onlyCurrentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tipo, status, posicao, bairro,
      cidade, estado, userId, onlyCurrentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltroSolicidacoesCopyWith<_$_FiltroSolicidacoes> get copyWith =>
      __$$_FiltroSolicidacoesCopyWithImpl<_$_FiltroSolicidacoes>(
          this, _$identity);
}

abstract class _FiltroSolicidacoes implements FiltroSolicidacoes {
  const factory _FiltroSolicidacoes(
      {final ETipoSolicitacao? tipo,
      final EStatusSolicitacao? status,
      final Posicao? posicao,
      final Bairro? bairro,
      final Cidade? cidade,
      final Estado? estado,
      final int? userId,
      final bool? onlyCurrentUser}) = _$_FiltroSolicidacoes;

  @override
  ETipoSolicitacao? get tipo;
  @override
  EStatusSolicitacao? get status;
  @override
  Posicao? get posicao;
  @override
  Bairro? get bairro;
  @override
  Cidade? get cidade;
  @override
  Estado? get estado;
  @override
  int? get userId;
  @override
  bool? get onlyCurrentUser;
  @override
  @JsonKey(ignore: true)
  _$$_FiltroSolicidacoesCopyWith<_$_FiltroSolicidacoes> get copyWith =>
      throw _privateConstructorUsedError;
}
