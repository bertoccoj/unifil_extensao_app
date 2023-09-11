import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:map_launcher/map_launcher.dart' as m;
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao_failure.dart';

@lazySingleton
class MapLauncher {
  Future<Either<SolicitacaoFailure, Unit>> launch(Posicao posicao, {String? title}) async {
    try {
      final availableMaps = await m.MapLauncher.installedMaps;

      if (availableMaps.isEmpty) {
        return left(SolicitacaoFailure.erroAoAbrirSolicitacaoNoMapa());
      }

      await availableMaps.first.showMarker(
        coords: m.Coords(posicao.latitude, posicao.longitude),
        title: title ?? "Localização da solicitação",
      );

      return right(unit);
    } catch (e) {
      return left(SolicitacaoFailure.unexpected());
    }
  }
}
