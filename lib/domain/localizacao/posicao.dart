import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlng/latlng.dart';

part 'posicao.freezed.dart';
part 'posicao.g.dart';

@freezed
class Posicao with _$Posicao {
  const factory Posicao({
    required double latitude,
    required double longitude,
  }) = _Posicao;

  factory Posicao.fromJson(Map<String, dynamic> json) => _$PosicaoFromJson(json);
}

extension PosicaoX on Posicao {
  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}
