import 'package:injectable/injectable.dart';

import 'apis/solicitacao/solicitacao_api.dart';

@module
abstract class CoreModule {
  @lazySingleton
  SolicitacaoApi get solicitacaoApi => SolicitacaoApi.create();
}
