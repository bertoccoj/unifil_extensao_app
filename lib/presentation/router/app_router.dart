import 'package:auto_route/annotations.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/presentation/pages/detalhes_solicitacao/detalhes_solicitacao_page.dart';
import 'package:minha_cidade/presentation/pages/profile/profile_page.dart';

import '../core/widgets/ver_foto.dart';
import '../pages/criar_solicitacao/criar_soliciatacao_page.dart';
import '../pages/criar_solicitacao/widgets/selecionar_localizacao.dart';
import '../pages/lista_solicitacao/lista_solicitacao_page.dart';
import '../pages/login/login_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: ListaSolicitacaoPage,
    ),
    CustomRoute(
      page: DetalhesSolicitacaoPage,
    ),
    CustomRoute(
      page: CriarSolicitacaoPage,
    ),
    CustomRoute(
      page: VerFotoPage,
    ),
    CustomRoute(
      page: ProfilePage,
    ),
    CustomRoute(
      initial: true,
      page: LoginPage,
    ),
    AutoRoute<Posicao>(
      page: SelecionarLocalizacaoPage,
    ),
  ],
)
class $AppRouter {}
