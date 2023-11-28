// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bairro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bairro _$BairroFromJson(Map<String, dynamic> json) {
  return _Bairro.fromJson(json);
}

/// @nodoc
mixin _$Bairro {
  int get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BairroCopyWith<Bairro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BairroCopyWith<$Res> {
  factory $BairroCopyWith(Bairro value, $Res Function(Bairro) then) =
      _$BairroCopyWithImpl<$Res, Bairro>;
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class _$BairroCopyWithImpl<$Res, $Val extends Bairro>
    implements $BairroCopyWith<$Res> {
  _$BairroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BairroCopyWith<$Res> implements $BairroCopyWith<$Res> {
  factory _$$_BairroCopyWith(_$_Bairro value, $Res Function(_$_Bairro) then) =
      __$$_BairroCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class __$$_BairroCopyWithImpl<$Res>
    extends _$BairroCopyWithImpl<$Res, _$_Bairro>
    implements _$$_BairroCopyWith<$Res> {
  __$$_BairroCopyWithImpl(_$_Bairro _value, $Res Function(_$_Bairro) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
  }) {
    return _then(_$_Bairro(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bairro implements _Bairro {
  const _$_Bairro({required this.id, required this.nome});

  factory _$_Bairro.fromJson(Map<String, dynamic> json) =>
      _$$_BairroFromJson(json);

  @override
  final int id;
  @override
  final String nome;

  @override
  String toString() {
    return 'Bairro(id: $id, nome: $nome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bairro &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BairroCopyWith<_$_Bairro> get copyWith =>
      __$$_BairroCopyWithImpl<_$_Bairro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BairroToJson(
      this,
    );
  }
}

abstract class _Bairro implements Bairro {
  const factory _Bairro({required final int id, required final String nome}) =
      _$_Bairro;

  factory _Bairro.fromJson(Map<String, dynamic> json) = _$_Bairro.fromJson;

  @override
  int get id;
  @override
  String get nome;
  @override
  @JsonKey(ignore: true)
  _$$_BairroCopyWith<_$_Bairro> get copyWith =>
      throw _privateConstructorUsedError;
}
