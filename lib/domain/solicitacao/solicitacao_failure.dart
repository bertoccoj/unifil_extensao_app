import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/i_failure.dart';

part 'solicitacao_failure.freezed.dart';

@freezed
abstract class SolicitacaoFailure with _$SolicitacaoFailure implements IFailure {
  SolicitacaoFailure._();

  factory SolicitacaoFailure.erroAoCarregarLista() = ErroAoCarregarLista;
  factory SolicitacaoFailure.erroAoCarregarDetalhes() = ErroAoCarregarDetalhes;
  factory SolicitacaoFailure.erroAoAbrirSolicitacaoNoMapa() = ErroAoAbrirSolicitacaoNoMapa;
  factory SolicitacaoFailure.erroAoCriarSolicitacao() = ErroAoCriarSolicitacao;
  factory SolicitacaoFailure.unexpected() = Unexpedted;

  @override
  String get titulo {
    return {
      _$ErroAoCarregarLista: 'Erro ao carregar a lista de solicitações',
      _$ErroAoCarregarDetalhes: 'Erro ao carregar os detalhes da solicitação',
      _$ErroAoAbrirSolicitacaoNoMapa: 'Erro ao abrir a solicitação no mapa',
      _$Unexpedted: 'Erro inexperado no aplicativo',
      _$ErroAoCriarSolicitacao: 'Erro ao cirar solicitação',
    }[runtimeType]!;
  }

  @override
  String get descricao {
    return '';
  }
}
