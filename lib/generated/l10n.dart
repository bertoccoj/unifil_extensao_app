// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Aguarde`
  String get aguarde {
    return Intl.message(
      'Aguarde',
      name: 'aguarde',
      desc: '',
      args: [],
    );
  }

  /// `dd/MM/yyyy hh:mm`
  String get shortDateFormat {
    return Intl.message(
      'dd/MM/yyyy hh:mm',
      name: 'shortDateFormat',
      desc: '',
      args: [],
    );
  }

  /// `Tentar Novamente`
  String get failureRetry {
    return Intl.message(
      'Tentar Novamente',
      name: 'failureRetry',
      desc: '',
      args: [],
    );
  }

  /// `Utilizar minha localização atual`
  String get locationUseCurrentPosition {
    return Intl.message(
      'Utilizar minha localização atual',
      name: 'locationUseCurrentPosition',
      desc: '',
      args: [],
    );
  }

  /// `Selecionar no mapa`
  String get locationSelectOnMap {
    return Intl.message(
      'Selecionar no mapa',
      name: 'locationSelectOnMap',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get locationLatitude {
    return Intl.message(
      'Latitude',
      name: 'locationLatitude',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get locationLongitude {
    return Intl.message(
      'Longitude',
      name: 'locationLongitude',
      desc: '',
      args: [],
    );
  }

  /// `Erro ao star posição atual`
  String get locationErrorCurrentPosition {
    return Intl.message(
      'Erro ao star posição atual',
      name: 'locationErrorCurrentPosition',
      desc: '',
      args: [],
    );
  }

  /// `Posição não selecionada`
  String get locationErrorPositionNotSelected {
    return Intl.message(
      'Posição não selecionada',
      name: 'locationErrorPositionNotSelected',
      desc: '',
      args: [],
    );
  }

  /// `Selecionar filtros`
  String get filterPageTitle {
    return Intl.message(
      'Selecionar filtros',
      name: 'filterPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Todos`
  String get filterPageAllOption {
    return Intl.message(
      'Todos',
      name: 'filterPageAllOption',
      desc: '',
      args: [],
    );
  }

  /// `Tipo`
  String get filterPageType {
    return Intl.message(
      'Tipo',
      name: 'filterPageType',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get filterPageStatus {
    return Intl.message(
      'Status',
      name: 'filterPageStatus',
      desc: '',
      args: [],
    );
  }

  /// `localização`
  String get filterPageLocation {
    return Intl.message(
      'localização',
      name: 'filterPageLocation',
      desc: '',
      args: [],
    );
  }

  /// `Apenas solicitações abertas por min`
  String get filterPageOnlyCUrrentUser {
    return Intl.message(
      'Apenas solicitações abertas por min',
      name: 'filterPageOnlyCUrrentUser',
      desc: '',
      args: [],
    );
  }

  /// `Lista de solicitações`
  String get listaSolicitacaoHeader {
    return Intl.message(
      'Lista de solicitações',
      name: 'listaSolicitacaoHeader',
      desc: '',
      args: [],
    );
  }

  /// `Criado em:`
  String get listaSolicitacaoCriadoEm {
    return Intl.message(
      'Criado em:',
      name: 'listaSolicitacaoCriadoEm',
      desc: '',
      args: [],
    );
  }

  /// `Previsão:`
  String get listaSolicitacaoPrevisao {
    return Intl.message(
      'Previsão:',
      name: 'listaSolicitacaoPrevisao',
      desc: '',
      args: [],
    );
  }

  /// `Status:`
  String get listaSolicitacaoStatus {
    return Intl.message(
      'Status:',
      name: 'listaSolicitacaoStatus',
      desc: '',
      args: [],
    );
  }

  /// `Descrição:`
  String get listaSolicitacaoDescricao {
    return Intl.message(
      'Descrição:',
      name: 'listaSolicitacaoDescricao',
      desc: '',
      args: [],
    );
  }

  /// `Ver detalhes`
  String get listaSolicitacaoVerDetalhes {
    return Intl.message(
      'Ver detalhes',
      name: 'listaSolicitacaoVerDetalhes',
      desc: '',
      args: [],
    );
  }

  /// `Detalhes da solicitação`
  String get detalhesSolicitacaoHeader {
    return Intl.message(
      'Detalhes da solicitação',
      name: 'detalhesSolicitacaoHeader',
      desc: '',
      args: [],
    );
  }

  /// `Criar solicitação`
  String get criarSolicitacaoHeader {
    return Intl.message(
      'Criar solicitação',
      name: 'criarSolicitacaoHeader',
      desc: '',
      args: [],
    );
  }

  /// `Buraco`
  String get eTipoSolicitacaoBuraco {
    return Intl.message(
      'Buraco',
      name: 'eTipoSolicitacaoBuraco',
      desc: '',
      args: [],
    );
  }

  /// `Iluminação Pública`
  String get eTipoSolicitacaoIluminacaoPublica {
    return Intl.message(
      'Iluminação Pública',
      name: 'eTipoSolicitacaoIluminacaoPublica',
      desc: '',
      args: [],
    );
  }

  /// `Esgoto`
  String get eTipoSolicitacaoEsgoto {
    return Intl.message(
      'Esgoto',
      name: 'eTipoSolicitacaoEsgoto',
      desc: '',
      args: [],
    );
  }

  /// `Outros`
  String get eTipoSolicitacaoOutros {
    return Intl.message(
      'Outros',
      name: 'eTipoSolicitacaoOutros',
      desc: '',
      args: [],
    );
  }

  /// `Aguardando análise`
  String get eStatusSolicitacaoAguardandoAnalise {
    return Intl.message(
      'Aguardando análise',
      name: 'eStatusSolicitacaoAguardandoAnalise',
      desc: '',
      args: [],
    );
  }

  /// `Aguardando reparo`
  String get eStatusSolicitacaoAguardandoReparo {
    return Intl.message(
      'Aguardando reparo',
      name: 'eStatusSolicitacaoAguardandoReparo',
      desc: '',
      args: [],
    );
  }

  /// `Reparo resusado`
  String get eStatusSolicitacaoReparoRecusado {
    return Intl.message(
      'Reparo resusado',
      name: 'eStatusSolicitacaoReparoRecusado',
      desc: '',
      args: [],
    );
  }

  /// `Concluído`
  String get eStatusSolicitacaoConcluido {
    return Intl.message(
      'Concluído',
      name: 'eStatusSolicitacaoConcluido',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
