import 'package:freezed_annotation/freezed_annotation.dart';

part 'estado.freezed.dart';
part 'estado.g.dart';

@freezed
class Estado with _$Estado {
  const factory Estado({
    required int id,
    required String nome,
  }) = _Estado;

  factory Estado.fromJson(Map<String, dynamic> json) => _$EstadoFromJson(json);
}
