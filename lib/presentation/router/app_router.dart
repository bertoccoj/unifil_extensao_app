import 'package:auto_route/auto_route.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/presentation/pages/detalhes_solicitacao/detalhes_solicitacao_page.dart';
import 'package:minha_cidade/presentation/pages/filter/filter_page.dart';
import 'package:minha_cidade/presentation/pages/lista_solicitacao/lista_solicitacao_page.dart';
import 'package:minha_cidade/presentation/pages/profile/profile_page.dart';

import '../core/widgets/ver_foto.dart';
import '../pages/criar_solicitacao/criar_soliciatacao_page.dart';
import '../pages/criar_solicitacao/widgets/selecionar_localizacao.dart';
import '../pages/login/login_page.dart';

class Route<T> extends CustomRoute<T> {
  const Route({
    super.initial,
    required super.page,
    super.transitionsBuilder = TransitionsBuilders.fadeIn,
    super.durationInMilliseconds = 100,
    super.reverseDurationInMilliseconds = 100,
  });
}

@MaterialAutoRouter(
  routes: <AutoRoute>[
    Route(
      initial: true,
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route(
      page: ListaSolicitacaoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route<FilterResult>(
      page: FilterPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route(
      page: DetalhesSolicitacaoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route(
      page: CriarSolicitacaoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route(
      page: VerFotoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route(
      page: ProfilePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    Route<Posicao>(
      page: SelecionarLocalizacaoPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
