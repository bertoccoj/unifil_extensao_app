import 'package:chopper/chopper.dart';

import '../../../../core/config_reader.dart';
import '../../interceptors/token_interceptor.dart';
import '../converter.dart';
import 'models/solicitacao_raw.dart';

part 'solicitacao_api.chopper.dart';

@ChopperApi(baseUrl: '/solicitacao')
abstract class SolicitacaoApi extends ChopperService {
  @Get()
  Future<Response<List<SolicitacaoRaw>>> index({
    @Query() int? tipo,
    @Query() int? status,
    @Query() double? latitude,
    @Query() double? longitude,
    @Query() int? bairroId,
    @Query() int? cidadeId,
    @Query() int? estadoId,
    @Query() int? userId,
  });

  @Get(path: '/{id}')
  Future<Response<SolicitacaoRaw?>> details(@Path('id') int id);

  @Post(headers: {
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  @Multipart()
  Future<Response> add(
    @Part('tipo') int tipo,
    @Part('descricao') String descricao,
    @Part('latitude') double latitude,
    @Part('longitude') double longitude,
    @PartFile('image') String image,
  );

  static SolicitacaoApi create([ChopperClient? client]) {
    final chopper = ChopperClient(
      baseUrl: Uri.parse(ConfigReader.apiUrl()),
      services: [
        _$SolicitacaoApi(),
      ],
      converter: const JsonSerializableConverter({
        SolicitacaoRaw: SolicitacaoRaw.fromJson,
      }),
      interceptors: [
        HttpLoggingInterceptor(),
        TokenInterceptor(),
      ],
    );
    return chopper.getService<SolicitacaoApi>();
  }
}
