import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:minha_cidade/core/contants.dart';
import 'package:minha_cidade/domain/solicitacao/filtro_solicitacoes.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/generated/l10n.dart';
import 'package:minha_cidade/infrastructure/core/location_service.dart';
import 'package:minha_cidade/injection.dart';
import 'package:minha_cidade/presentation/core/widgets/loader.dart';
import 'package:minha_cidade/presentation/core/widgets/outline_button.dart';
import 'package:minha_cidade/presentation/core/widgets/snack_bar.dart';
import 'package:minha_cidade/presentation/core/widgets/text.dart';

import '../../../domain/localizacao/posicao.dart';

class FilterPage extends StatefulWidget {
  final FiltroSolicidacoes? initial;

  const FilterPage({Key? key, this.initial}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class FilterResult {
  final FiltroSolicidacoes filtro;
  final bool delete;

  FilterResult(this.filtro, this.delete);
}

class _FilterPageState extends State<FilterPage> with SnackBarHelper, Loader {
  late FiltroSolicidacoes filtro;
  final LocationService locationService = getIt<LocationService>();
  bool locationFilterEnabled = false;

  @override
  void initState() {
    filtro = widget.initial ?? const FiltroSolicidacoes();
    super.initState();
  }

  applyFilter() {
    context.router.pop(FilterResult(filtro, false));
  }

  removeFilter() {
    context.router.pop(FilterResult(filtro, true));
  }

  FormBuilder buildSelect<T>({
    required T? initialValue,
    required String name,
    required List<T> entries,
    required Map textEntries,
    required void Function(T?) onChanged,
  }) {
    return FormBuilder(
      child: FormBuilderRadioGroup<T?>(
        onChanged: (value) => setState(() {
          onChanged(value);
        }),
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        name: name,
        initialValue: initialValue,
        options: [
          ...entries.map(
            (e) => FormBuilderFieldOption(
              value: e,
              child: Text(textEntries[e]!),
            ),
          ),
          FormBuilderFieldOption(
            value: null,
            child: Text(S.current.filterPageAllOption),
          ),
        ],
      ),
    );
  }

  void setPosicao(Either<String, Posicao> result, String message) {
    setState(() {
      result.fold(
        (l) {
          return showSnackBar(text: message);
        },
        (r) => filtro = filtro.copyWith(posicao: r),
      );
    });
  }

  void setarPosicaoAtual() async {
    showWaitLoading();
    final result = await locationService.getPosicaoAtual();
    hideWaitLoading();
    setPosicao(result, S.current.locationErrorCurrentPosition);
  }

  void selecionarPosicaoNoMapa() async {
    final result = await locationService.selecionarPosicaoNoMapa(
      context,
      initial: filtro.posicao ?? const Posicao(latitude: 0, longitude: 0),
    );
    setPosicao(result, S.current.locationErrorPositionNotSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.filterPageTitle),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (widget.initial != null)
            FloatingActionButton(
              onPressed: removeFilter,
              backgroundColor: Colors.red,
              child: const Icon(Icons.delete),
            ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: applyFilter,
            backgroundColor: Colors.green,
            child: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FormBuilder(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(S.current.filterPageType),
                  buildSelect(
                    initialValue: filtro.tipo,
                    name: 'tipo',
                    entries: ETipoSolicitacao.values,
                    textEntries: tipoSolicitacaoText,
                    onChanged: (v) => filtro = filtro.copyWith(tipo: v),
                  ),
                  const Divider(height: 16),
                  HeaderText(S.current.filterPageStatus),
                  buildSelect(
                    initialValue: filtro.status,
                    name: 'status',
                    entries: EStatusSolicitacao.values,
                    textEntries: solicitacaoStatusText,
                    onChanged: (v) => filtro = filtro.copyWith(status: v),
                  ),
                  const Divider(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeaderText(S.current.filterPageLocation),
                      Switch(
                        value: locationFilterEnabled,
                        onChanged: (value) {
                          setState(() {
                            locationFilterEnabled = !locationFilterEnabled;
                            if (!locationFilterEnabled) {
                              filtro = filtro.copyWith(posicao: null);
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  if (locationFilterEnabled)
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        if (filtro.posicao != null) GreyTextJustify('${S.current.locationLatitude}: ${filtro.posicao?.latitude}'),
                        if (filtro.posicao != null) GreyTextJustify('${S.current.locationLongitude}: ${filtro.posicao?.longitude}'),
                        const SizedBox(height: 16),
                        OutlineButton(onPressed: setarPosicaoAtual, label: S.current.locationUseCurrentPosition),
                        const SizedBox(height: 16),
                        OutlineButton(onPressed: selecionarPosicaoNoMapa, label: S.current.locationSelectOnMap),
                        const Divider(height: 16),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeaderText(S.current.filterPageOnlyCUrrentUser),
                      Switch(
                        value: filtro.onlyCurrentUser ?? false,
                        onChanged: (value) {
                          setState(() {
                            filtro = filtro.copyWith(
                              onlyCurrentUser: !(filtro.onlyCurrentUser ?? false),
                            );
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
