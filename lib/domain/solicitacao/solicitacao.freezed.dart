// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'solicitacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Solicitacao _$SolicitacaoFromJson(Map<String, dynamic> json) {
  return _Solicitacao.fromJson(json);
}

/// @nodoc
mixin _$Solicitacao {
  int get id => throw _privateConstructorUsedError;
  ETipoSolicitacao get tipo => throw _privateConstructorUsedError;
  EStatusSolicitacao get status => throw _privateConstructorUsedError;
  String get urlFoto => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  Posicao get posicao => throw _privateConstructorUsedError;
  Cidade get cidade => throw _privateConstructorUsedError;
  Estado get estado => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get dataPrevistaReparo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolicitacaoCopyWith<Solicitacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolicitacaoCopyWith<$Res> {
  factory $SolicitacaoCopyWith(
          Solicitacao value, $Res Function(Solicitacao) then) =
      _$SolicitacaoCopyWithImpl<$Res, Solicitacao>;
  @useResult
  $Res call(
      {int id,
      ETipoSolicitacao tipo,
      EStatusSolicitacao status,
      String urlFoto,
      String descricao,
      Posicao posicao,
      Cidade cidade,
      Estado estado,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? dataPrevistaReparo});

  $PosicaoCopyWith<$Res> get posicao;
  $CidadeCopyWith<$Res> get cidade;
  $EstadoCopyWith<$Res> get estado;
}

/// @nodoc
class _$SolicitacaoCopyWithImpl<$Res, $Val extends Solicitacao>
    implements $SolicitacaoCopyWith<$Res> {
  _$SolicitacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tipo = null,
    Object? status = null,
    Object? urlFoto = null,
    Object? descricao = null,
    Object? posicao = null,
    Object? cidade = null,
    Object? estado = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? dataPrevistaReparo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EStatusSolicitacao,
      urlFoto: null == urlFoto
          ? _value.urlFoto
          : urlFoto // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      posicao: null == posicao
          ? _value.posicao
          : posicao // ignore: cast_nullable_to_non_nullable
              as Posicao,
      cidade: null == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as Cidade,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as Estado,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataPrevistaReparo: freezed == dataPrevistaReparo
          ? _value.dataPrevistaReparo
          : dataPrevistaReparo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PosicaoCopyWith<$Res> get posicao {
    return $PosicaoCopyWith<$Res>(_value.posicao, (value) {
      return _then(_value.copyWith(posicao: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CidadeCopyWith<$Res> get cidade {
    return $CidadeCopyWith<$Res>(_value.cidade, (value) {
      return _then(_value.copyWith(cidade: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EstadoCopyWith<$Res> get estado {
    return $EstadoCopyWith<$Res>(_value.estado, (value) {
      return _then(_value.copyWith(estado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SolicitacaoCopyWith<$Res>
    implements $SolicitacaoCopyWith<$Res> {
  factory _$$_SolicitacaoCopyWith(
          _$_Solicitacao value, $Res Function(_$_Solicitacao) then) =
      __$$_SolicitacaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ETipoSolicitacao tipo,
      EStatusSolicitacao status,
      String urlFoto,
      String descricao,
      Posicao posicao,
      Cidade cidade,
      Estado estado,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? dataPrevistaReparo});

  @override
  $PosicaoCopyWith<$Res> get posicao;
  @override
  $CidadeCopyWith<$Res> get cidade;
  @override
  $EstadoCopyWith<$Res> get estado;
}

/// @nodoc
class __$$_SolicitacaoCopyWithImpl<$Res>
    extends _$SolicitacaoCopyWithImpl<$Res, _$_Solicitacao>
    implements _$$_SolicitacaoCopyWith<$Res> {
  __$$_SolicitacaoCopyWithImpl(
      _$_Solicitacao _value, $Res Function(_$_Solicitacao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tipo = null,
    Object? status = null,
    Object? urlFoto = null,
    Object? descricao = null,
    Object? posicao = null,
    Object? cidade = null,
    Object? estado = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? dataPrevistaReparo = freezed,
  }) {
    return _then(_$_Solicitacao(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EStatusSolicitacao,
      urlFoto: null == urlFoto
          ? _value.urlFoto
          : urlFoto // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      posicao: null == posicao
          ? _value.posicao
          : posicao // ignore: cast_nullable_to_non_nullable
              as Posicao,
      cidade: null == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as Cidade,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as Estado,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataPrevistaReparo: freezed == dataPrevistaReparo
          ? _value.dataPrevistaReparo
          : dataPrevistaReparo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Solicitacao implements _Solicitacao {
  const _$_Solicitacao(
      {required this.id,
      required this.tipo,
      required this.status,
      required this.urlFoto,
      required this.descricao,
      required this.posicao,
      required this.cidade,
      required this.estado,
      required this.createdAt,
      this.updatedAt,
      this.dataPrevistaReparo});

  factory _$_Solicitacao.fromJson(Map<String, dynamic> json) =>
      _$$_SolicitacaoFromJson(json);

  @override
  final int id;
  @override
  final ETipoSolicitacao tipo;
  @override
  final EStatusSolicitacao status;
  @override
  final String urlFoto;
  @override
  final String descricao;
  @override
  final Posicao posicao;
  @override
  final Cidade cidade;
  @override
  final Estado estado;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? dataPrevistaReparo;

  @override
  String toString() {
    return 'Solicitacao(id: $id, tipo: $tipo, status: $status, urlFoto: $urlFoto, descricao: $descricao, posicao: $posicao, cidade: $cidade, estado: $estado, createdAt: $createdAt, updatedAt: $updatedAt, dataPrevistaReparo: $dataPrevistaReparo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Solicitacao &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urlFoto, urlFoto) || other.urlFoto == urlFoto) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.posicao, posicao) || other.posicao == posicao) &&
            (identical(other.cidade, cidade) || other.cidade == cidade) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.dataPrevistaReparo, dataPrevistaReparo) ||
                other.dataPrevistaReparo == dataPrevistaReparo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tipo,
      status,
      urlFoto,
      descricao,
      posicao,
      cidade,
      estado,
      createdAt,
      updatedAt,
      dataPrevistaReparo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SolicitacaoCopyWith<_$_Solicitacao> get copyWith =>
      __$$_SolicitacaoCopyWithImpl<_$_Solicitacao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SolicitacaoToJson(
      this,
    );
  }
}

abstract class _Solicitacao implements Solicitacao {
  const factory _Solicitacao(
      {required final int id,
      required final ETipoSolicitacao tipo,
      required final EStatusSolicitacao status,
      required final String urlFoto,
      required final String descricao,
      required final Posicao posicao,
      required final Cidade cidade,
      required final Estado estado,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? dataPrevistaReparo}) = _$_Solicitacao;

  factory _Solicitacao.fromJson(Map<String, dynamic> json) =
      _$_Solicitacao.fromJson;

  @override
  int get id;
  @override
  ETipoSolicitacao get tipo;
  @override
  EStatusSolicitacao get status;
  @override
  String get urlFoto;
  @override
  String get descricao;
  @override
  Posicao get posicao;
  @override
  Cidade get cidade;
  @override
  Estado get estado;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get dataPrevistaReparo;
  @override
  @JsonKey(ignore: true)
  _$$_SolicitacaoCopyWith<_$_Solicitacao> get copyWith =>
      throw _privateConstructorUsedError;
}
