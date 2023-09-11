// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cidade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cidade _$CidadeFromJson(Map<String, dynamic> json) {
  return _Cidade.fromJson(json);
}

/// @nodoc
mixin _$Cidade {
  int get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CidadeCopyWith<Cidade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CidadeCopyWith<$Res> {
  factory $CidadeCopyWith(Cidade value, $Res Function(Cidade) then) =
      _$CidadeCopyWithImpl<$Res, Cidade>;
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class _$CidadeCopyWithImpl<$Res, $Val extends Cidade>
    implements $CidadeCopyWith<$Res> {
  _$CidadeCopyWithImpl(this._value, this._then);

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
abstract class _$$_CidadeCopyWith<$Res> implements $CidadeCopyWith<$Res> {
  factory _$$_CidadeCopyWith(_$_Cidade value, $Res Function(_$_Cidade) then) =
      __$$_CidadeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class __$$_CidadeCopyWithImpl<$Res>
    extends _$CidadeCopyWithImpl<$Res, _$_Cidade>
    implements _$$_CidadeCopyWith<$Res> {
  __$$_CidadeCopyWithImpl(_$_Cidade _value, $Res Function(_$_Cidade) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
  }) {
    return _then(_$_Cidade(
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
class _$_Cidade implements _Cidade {
  const _$_Cidade({required this.id, required this.nome});

  factory _$_Cidade.fromJson(Map<String, dynamic> json) =>
      _$$_CidadeFromJson(json);

  @override
  final int id;
  @override
  final String nome;

  @override
  String toString() {
    return 'Cidade(id: $id, nome: $nome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cidade &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CidadeCopyWith<_$_Cidade> get copyWith =>
      __$$_CidadeCopyWithImpl<_$_Cidade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CidadeToJson(
      this,
    );
  }
}

abstract class _Cidade implements Cidade {
  const factory _Cidade({required final int id, required final String nome}) =
      _$_Cidade;

  factory _Cidade.fromJson(Map<String, dynamic> json) = _$_Cidade.fromJson;

  @override
  int get id;
  @override
  String get nome;
  @override
  @JsonKey(ignore: true)
  _$$_CidadeCopyWith<_$_Cidade> get copyWith =>
      throw _privateConstructorUsedError;
}
