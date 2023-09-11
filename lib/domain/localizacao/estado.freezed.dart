// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Estado _$EstadoFromJson(Map<String, dynamic> json) {
  return _Estado.fromJson(json);
}

/// @nodoc
mixin _$Estado {
  int get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstadoCopyWith<Estado> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstadoCopyWith<$Res> {
  factory $EstadoCopyWith(Estado value, $Res Function(Estado) then) =
      _$EstadoCopyWithImpl<$Res, Estado>;
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class _$EstadoCopyWithImpl<$Res, $Val extends Estado>
    implements $EstadoCopyWith<$Res> {
  _$EstadoCopyWithImpl(this._value, this._then);

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
abstract class _$$_EstadoCopyWith<$Res> implements $EstadoCopyWith<$Res> {
  factory _$$_EstadoCopyWith(_$_Estado value, $Res Function(_$_Estado) then) =
      __$$_EstadoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nome});
}

/// @nodoc
class __$$_EstadoCopyWithImpl<$Res>
    extends _$EstadoCopyWithImpl<$Res, _$_Estado>
    implements _$$_EstadoCopyWith<$Res> {
  __$$_EstadoCopyWithImpl(_$_Estado _value, $Res Function(_$_Estado) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
  }) {
    return _then(_$_Estado(
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
class _$_Estado implements _Estado {
  const _$_Estado({required this.id, required this.nome});

  factory _$_Estado.fromJson(Map<String, dynamic> json) =>
      _$$_EstadoFromJson(json);

  @override
  final int id;
  @override
  final String nome;

  @override
  String toString() {
    return 'Estado(id: $id, nome: $nome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Estado &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EstadoCopyWith<_$_Estado> get copyWith =>
      __$$_EstadoCopyWithImpl<_$_Estado>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstadoToJson(
      this,
    );
  }
}

abstract class _Estado implements Estado {
  const factory _Estado({required final int id, required final String nome}) =
      _$_Estado;

  factory _Estado.fromJson(Map<String, dynamic> json) = _$_Estado.fromJson;

  @override
  int get id;
  @override
  String get nome;
  @override
  @JsonKey(ignore: true)
  _$$_EstadoCopyWith<_$_Estado> get copyWith =>
      throw _privateConstructorUsedError;
}
