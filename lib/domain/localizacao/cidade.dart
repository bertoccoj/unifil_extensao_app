import 'package:freezed_annotation/freezed_annotation.dart';

part 'cidade.freezed.dart';
part 'cidade.g.dart';

@freezed
class Cidade with _$Cidade {
  const factory Cidade({
    required int id,
    required String nome,
  }) = _Cidade;

  factory Cidade.fromJson(Map<String, dynamic> json) => _$CidadeFromJson(json);
}
