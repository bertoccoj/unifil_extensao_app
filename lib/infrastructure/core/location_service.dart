import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:location/location.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/presentation/router/app_router.gr.dart';

@lazySingleton
class LocationService {
  final location = Location();

  Future<Either<String, Posicao>> getPosicaoAtual() async {
    var serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return left('Não foi possível coletar a localização');
      }
    }
    final data = await location.getLocation();
    return right(Posicao(latitude: data.latitude!, longitude: data.longitude!));
  }

  Future<Either<String, Posicao>> selecionarPosicaoNoMapa(BuildContext context, {Posicao? initial}) async {
    Posicao? posicao;
    if (initial != null) {
      posicao = initial;
    } else {
      final result = await getPosicaoAtual();
      posicao = result.fold((l) => null, (r) => r);
    }
    // ignore: use_build_context_synchronously
    final result = await AutoRouter.of(context).push<Posicao>(
      SelecionarLocalizacaoPageRoute(posicao: posicao),
    );

    if (result == null) {
      return left('Não foi possível coletar a localização');
    }
    return right(result);
  }
}
