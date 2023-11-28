// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageResult {
  Uint8List get raw => throw _privateConstructorUsedError;
  String get base64 => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageResultCopyWith<ImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResultCopyWith<$Res> {
  factory $ImageResultCopyWith(
          ImageResult value, $Res Function(ImageResult) then) =
      _$ImageResultCopyWithImpl<$Res, ImageResult>;
  @useResult
  $Res call({Uint8List raw, String base64, String path});
}

/// @nodoc
class _$ImageResultCopyWithImpl<$Res, $Val extends ImageResult>
    implements $ImageResultCopyWith<$Res> {
  _$ImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? base64 = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageResultCopyWith<$Res>
    implements $ImageResultCopyWith<$Res> {
  factory _$$_ImageResultCopyWith(
          _$_ImageResult value, $Res Function(_$_ImageResult) then) =
      __$$_ImageResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List raw, String base64, String path});
}

/// @nodoc
class __$$_ImageResultCopyWithImpl<$Res>
    extends _$ImageResultCopyWithImpl<$Res, _$_ImageResult>
    implements _$$_ImageResultCopyWith<$Res> {
  __$$_ImageResultCopyWithImpl(
      _$_ImageResult _value, $Res Function(_$_ImageResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? base64 = null,
    Object? path = null,
  }) {
    return _then(_$_ImageResult(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageResult implements _ImageResult {
  const _$_ImageResult(
      {required this.raw, required this.base64, required this.path});

  @override
  final Uint8List raw;
  @override
  final String base64;
  @override
  final String path;

  @override
  String toString() {
    return 'ImageResult(raw: $raw, base64: $base64, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResult &&
            const DeepCollectionEquality().equals(other.raw, raw) &&
            (identical(other.base64, base64) || other.base64 == base64) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(raw), base64, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageResultCopyWith<_$_ImageResult> get copyWith =>
      __$$_ImageResultCopyWithImpl<_$_ImageResult>(this, _$identity);
}

abstract class _ImageResult implements ImageResult {
  const factory _ImageResult(
      {required final Uint8List raw,
      required final String base64,
      required final String path}) = _$_ImageResult;

  @override
  Uint8List get raw;
  @override
  String get base64;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ImageResultCopyWith<_$_ImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}
