import 'package:freezed_annotation/freezed_annotation.dart';

part 'bairro.freezed.dart';
part 'bairro.g.dart';

@freezed
class Bairro with _$Bairro {
  const factory Bairro({
    required int id,
    required String nome,
  }) = _Bairro;

  factory Bairro.fromJson(Map<String, dynamic> json) => _$BairroFromJson(json);
}
