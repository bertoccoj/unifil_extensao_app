import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minha_cidade/core/config_reader.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';
import 'package:minha_cidade/domain/auth/user.dart';
import 'package:minha_cidade/domain/solicitacao/criar_solicitacao_payload.dart';
import 'package:minha_cidade/domain/solicitacao/filtro_solicitacoes.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao_failure.dart';
import 'package:minha_cidade/infrastructure/core/apis/solicitacao/models/solicitacao_raw.dart';
import 'package:minha_cidade/infrastructure/core/apis/solicitacao/solicitacao_api.dart';
import 'package:minha_cidade/infrastructure/solicitacao/solicitacao_repository.dart';
import 'package:mocktail/mocktail.dart';

expectRight<L, R>(Either<L, R> result, [R? value]) {
  expect(result.isRight(), isTrue);
  expect((result as Right<L, R>).value, equals(value ?? unit));
}

class SolicitacaoApiMock extends Mock implements SolicitacaoApi {}

class IAuthFacadeMock extends Mock implements IAuthFacade {}

class MockResponse<T> extends Mock implements Response<T> {}

void main() {
  late SolicitacaoApiMock solicitacaoApiMock;
  late IAuthFacadeMock iAuthFacadeMock;
  late SolicitacaoRepository repository;

  const mockUser = User(id: 1, email: 'email', name: 'name');
  final mockSolicitacaoRaw = SolicitacaoRaw(
    id: 1,
    createdAt: DateTime.now().toIso8601String(),
    tipo: ETipoSolicitacao.buraco.value,
    status: EStatusSolicitacao.aguardandoAnalise.value,
    userId: mockUser.id,
    descricao: 'descricao',
    latitude: 1,
    longitude: 1,
    cidade: {
      'id': 1,
      'nome': '',
    },
    estado: {
      'id': 1,
      'nome': '',
    },
    extensaoArquivo: 'extensaoArquivo',
  );

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    solicitacaoApiMock = SolicitacaoApiMock();
    iAuthFacadeMock = IAuthFacadeMock();

    repository = SolicitacaoRepository(solicitacaoApiMock, iAuthFacadeMock);

    when(iAuthFacadeMock.getUser).thenAnswer((_) async => right(mockUser));
    ConfigReader.initialize();
  });

  group('getAll', () {
    test(
      'deve retornar erro quando algum problema durante a requisição',
      () async {
        when(() => solicitacaoApiMock.index()).thenThrow(Error());

        final result = await repository.getAll(const FiltroSolicidacoes());

        expect(result, equals(left(SolicitacaoFailure.erroAoCarregarLista())));
      },
    );

    test(
      'deve retornar vazio caso o retorno da requisição for nulo',
      () async {
        final mockResponse = MockResponse<List<SolicitacaoRaw>>();
        when(solicitacaoApiMock.index).thenAnswer((_) async => mockResponse);
        when(() => mockResponse.isSuccessful).thenReturn(true);
        when(() => mockResponse.body).thenReturn(null);

        final result = await repository.getAll(null);

        expectRight(result, []);
      },
    );

    test(
      'deve retornar a listagem de solicitações quando sucesso',
      () async {
        final mockResponse = MockResponse<List<SolicitacaoRaw>>();
        when(solicitacaoApiMock.index).thenAnswer((_) async => mockResponse);
        when(() => mockResponse.isSuccessful).thenReturn(true);
        when(() => mockResponse.body).thenReturn([mockSolicitacaoRaw]);

        final result = await repository.getAll(null);

        expectRight(result, [mockSolicitacaoRaw.toDomain()]);
      },
    );
  });

  group('getById', () {
    test(
      'deve retornar erro quando algum problema durante a requisição',
      () async {
        when(() => solicitacaoApiMock.details(1)).thenThrow(Error());

        final result = await repository.getById(1);

        expect(result, equals(left(SolicitacaoFailure.erroAoCarregarDetalhes())));
        verify(() => solicitacaoApiMock.details(1)).called(1);
      },
    );

    test(
      'deve retornar erro caso o retorno da requisição for nulo',
      () async {
        final mockResponse = MockResponse<SolicitacaoRaw?>();
        when(() => solicitacaoApiMock.details(1)).thenAnswer((_) async => mockResponse);
        when(() => mockResponse.isSuccessful).thenReturn(true);
        when(() => mockResponse.body).thenReturn(null);

        final result = await repository.getById(1);

        expect(result, equals(left(SolicitacaoFailure.erroAoCarregarDetalhes())));
        verify(() => solicitacaoApiMock.details(1)).called(1);
      },
    );

    test(
      'deve retornar a solicitação quando sucesso',
      () async {
        final mockResponse = MockResponse<SolicitacaoRaw?>();
        when(() => solicitacaoApiMock.details(1)).thenAnswer((_) async => mockResponse);
        when(() => mockResponse.isSuccessful).thenReturn(true);
        when(() => mockResponse.body).thenReturn(mockSolicitacaoRaw);

        final result = await repository.getById(1);

        expectRight(result, mockSolicitacaoRaw.toDomain());
        verify(() => solicitacaoApiMock.details(1)).called(1);
      },
    );
  });

  group('create', () {
    const mockPayload = CriarSolicitacaoPayload(
      tipo: ETipoSolicitacao.buraco,
      descricao: 'descricao',
      latitude: 1,
      longitude: 1,
      imagePath: 'imagePath',
    );
    addCall() => solicitacaoApiMock.add(
          mockPayload.tipo.value,
          mockPayload.descricao,
          mockPayload.latitude,
          mockPayload.longitude,
          mockPayload.imagePath,
        );

    test(
      'deve retornar erro quando algum problema durante a requisição',
      () async {
        when(addCall).thenThrow(Error());

        final result = await repository.create(mockPayload);

        expect(result, equals(left(SolicitacaoFailure.erroAoCriarSolicitacao())));
        verify(addCall).called(1);
      },
    );

    test(
      'deve retornar sem erro caso sucesso',
      () async {
        final mockResponse = MockResponse();
        when(addCall).thenAnswer((_) async => mockResponse);
        when(() => mockResponse.isSuccessful).thenReturn(true);

        final result = await repository.create(mockPayload);

        expectRight(result);
        verify(addCall).called(1);
      },
    );
  });
}
