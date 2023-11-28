// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'criar_solicitacao_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CriarSolicitacaoPayload {
  ETipoSolicitacao get tipo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CriarSolicitacaoPayloadCopyWith<CriarSolicitacaoPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CriarSolicitacaoPayloadCopyWith<$Res> {
  factory $CriarSolicitacaoPayloadCopyWith(CriarSolicitacaoPayload value,
          $Res Function(CriarSolicitacaoPayload) then) =
      _$CriarSolicitacaoPayloadCopyWithImpl<$Res, CriarSolicitacaoPayload>;
  @useResult
  $Res call(
      {ETipoSolicitacao tipo,
      String descricao,
      double latitude,
      double longitude,
      String imagePath});
}

/// @nodoc
class _$CriarSolicitacaoPayloadCopyWithImpl<$Res,
        $Val extends CriarSolicitacaoPayload>
    implements $CriarSolicitacaoPayloadCopyWith<$Res> {
  _$CriarSolicitacaoPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipo = null,
    Object? descricao = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CriarSolicitacaoPayloadCopyWith<$Res>
    implements $CriarSolicitacaoPayloadCopyWith<$Res> {
  factory _$$_CriarSolicitacaoPayloadCopyWith(_$_CriarSolicitacaoPayload value,
          $Res Function(_$_CriarSolicitacaoPayload) then) =
      __$$_CriarSolicitacaoPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ETipoSolicitacao tipo,
      String descricao,
      double latitude,
      double longitude,
      String imagePath});
}

/// @nodoc
class __$$_CriarSolicitacaoPayloadCopyWithImpl<$Res>
    extends _$CriarSolicitacaoPayloadCopyWithImpl<$Res,
        _$_CriarSolicitacaoPayload>
    implements _$$_CriarSolicitacaoPayloadCopyWith<$Res> {
  __$$_CriarSolicitacaoPayloadCopyWithImpl(_$_CriarSolicitacaoPayload _value,
      $Res Function(_$_CriarSolicitacaoPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipo = null,
    Object? descricao = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? imagePath = null,
  }) {
    return _then(_$_CriarSolicitacaoPayload(
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as ETipoSolicitacao,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CriarSolicitacaoPayload implements _CriarSolicitacaoPayload {
  const _$_CriarSolicitacaoPayload(
      {required this.tipo,
      required this.descricao,
      required this.latitude,
      required this.longitude,
      required this.imagePath});

  @override
  final ETipoSolicitacao tipo;
  @override
  final String descricao;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'CriarSolicitacaoPayload(tipo: $tipo, descricao: $descricao, latitude: $latitude, longitude: $longitude, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CriarSolicitacaoPayload &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tipo, descricao, latitude, longitude, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CriarSolicitacaoPayloadCopyWith<_$_CriarSolicitacaoPayload>
      get copyWith =>
          __$$_CriarSolicitacaoPayloadCopyWithImpl<_$_CriarSolicitacaoPayload>(
              this, _$identity);
}

abstract class _CriarSolicitacaoPayload implements CriarSolicitacaoPayload {
  const factory _CriarSolicitacaoPayload(
      {required final ETipoSolicitacao tipo,
      required final String descricao,
      required final double latitude,
      required final double longitude,
      required final String imagePath}) = _$_CriarSolicitacaoPayload;

  @override
  ETipoSolicitacao get tipo;
  @override
  String get descricao;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_CriarSolicitacaoPayloadCopyWith<_$_CriarSolicitacaoPayload>
      get copyWith => throw _privateConstructorUsedError;
}
