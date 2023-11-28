// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posicao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Posicao _$PosicaoFromJson(Map<String, dynamic> json) {
  return _Posicao.fromJson(json);
}

/// @nodoc
mixin _$Posicao {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosicaoCopyWith<Posicao> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosicaoCopyWith<$Res> {
  factory $PosicaoCopyWith(Posicao value, $Res Function(Posicao) then) =
      _$PosicaoCopyWithImpl<$Res, Posicao>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$PosicaoCopyWithImpl<$Res, $Val extends Posicao>
    implements $PosicaoCopyWith<$Res> {
  _$PosicaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PosicaoCopyWith<$Res> implements $PosicaoCopyWith<$Res> {
  factory _$$_PosicaoCopyWith(
          _$_Posicao value, $Res Function(_$_Posicao) then) =
      __$$_PosicaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_PosicaoCopyWithImpl<$Res>
    extends _$PosicaoCopyWithImpl<$Res, _$_Posicao>
    implements _$$_PosicaoCopyWith<$Res> {
  __$$_PosicaoCopyWithImpl(_$_Posicao _value, $Res Function(_$_Posicao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_Posicao(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posicao implements _Posicao {
  const _$_Posicao({required this.latitude, required this.longitude});

  factory _$_Posicao.fromJson(Map<String, dynamic> json) =>
      _$$_PosicaoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Posicao(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posicao &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PosicaoCopyWith<_$_Posicao> get copyWith =>
      __$$_PosicaoCopyWithImpl<_$_Posicao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosicaoToJson(
      this,
    );
  }
}

abstract class _Posicao implements Posicao {
  const factory _Posicao(
      {required final double latitude,
      required final double longitude}) = _$_Posicao;

  factory _Posicao.fromJson(Map<String, dynamic> json) = _$_Posicao.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PosicaoCopyWith<_$_Posicao> get copyWith =>
      throw _privateConstructorUsedError;
}
