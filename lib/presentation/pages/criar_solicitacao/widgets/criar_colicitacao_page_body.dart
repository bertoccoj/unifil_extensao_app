import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:minha_cidade/core/contants.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/domain/solicitacao/criar_solicitacao_payload.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/generated/assets.gen.dart';
import 'package:minha_cidade/injection.dart';
import 'package:minha_cidade/presentation/core/widgets/loader.dart';
import 'package:minha_cidade/presentation/core/widgets/outline_button.dart';
import 'package:minha_cidade/presentation/core/widgets/snack_bar.dart';
import 'package:minha_cidade/presentation/core/widgets/text.dart';
import 'package:minha_cidade/presentation/router/app_router.gr.dart';

import '../../../../application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import '../../../../infrastructure/core/image_service.dart';
import '../../../../infrastructure/core/location_service.dart';
import '../../../core/widgets/full_button.dart';

class CriarSolicitacaoPageBody extends StatefulWidget {
  const CriarSolicitacaoPageBody({Key? key}) : super(key: key);

  @override
  State<CriarSolicitacaoPageBody> createState() => _CriarSolicitacaoPageBodyState();
}

class _CriarSolicitacaoPageBodyState extends State<CriarSolicitacaoPageBody> with SnackBarHelper, Loader {
  final ImageService imageService = getIt<ImageService>();
  final LocationService locationService = getIt<LocationService>();
  ETipoSolicitacao? tipo = ETipoSolicitacao.buraco;
  String? descricao = '';
  Posicao posicao = const Posicao(latitude: 0, longitude: 0);
  ImageResult? foto;

  bool get valid {
    return descricao != '' && posicao.latitude != 0 && posicao.longitude != 0 && foto != null && tipo != null;
  }

  void salvar() {
    final payload = CriarSolicitacaoPayload(
      tipo: tipo!,
      descricao: descricao!,
      latitude: posicao.latitude,
      longitude: posicao.longitude,
      imagePath: foto!.path,
    );
    BlocProvider.of<SolicitacaoActorBloc>(context).add(SolicitacaoActorEvent.criarSolicitacao(payload));
  }

  void setPosicao(Either<String, Posicao> result, String message) {
    setState(() {
      result.fold(
        (l) {
          foto = null;
          return showSnackBar(text: message);
        },
        (r) => posicao = r,
      );
    });
  }

  void setarPosicaoAtual() async {
    showWaitLoading();
    final result = await locationService.getPosicaoAtual();
    hideWaitLoading();
    setPosicao(result, 'Erro ao setar posição atual');
  }

  void selecionarPosicaoNoMapa() async {
    final result = await locationService.selecionarPosicaoNoMapa(context, initial: posicao);
    setPosicao(result, 'Posição não selecionada');
  }

  void getImate(ImageSource source) async {
    final result = await imageService.getImage(source);
    setState(() {
      result.fold(
        (l) {
          foto = null;
          return showSnackBar(text: 'Erro ao carregar imagem');
        },
        (r) => foto = r,
      );
    });
  }

  void verImagem() {
    if (foto == null) {
      showSnackBar(text: 'Selecione uma imagem antes');
      return;
    }
    AutoRouter.of(context).push(VerFotoPageRoute(provider: MemoryImage(foto!.raw)));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        FormBuilder(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText('Localização'),
              const SizedBox(height: 16),
              GreyTextJustify('Latitude: ${posicao.latitude}'),
              GreyTextJustify('Longitude: ${posicao.longitude}'),
              const SizedBox(height: 16),
              OutlineButton(onPressed: setarPosicaoAtual, label: 'Utilizar minha localização atual'),
              const SizedBox(height: 16),
              OutlineButton(onPressed: selecionarPosicaoNoMapa, label: 'Selecionar no mapa'),
              const SizedBox(height: 16),
              const HeaderText('Tipo'),
              FormBuilder(
                child: FormBuilderRadioGroup<ETipoSolicitacao>(
                  onChanged: (value) => setState(() {
                    tipo = value;
                  }),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  name: 'tipo',
                  options: ETipoSolicitacao.values.map((e) => FormBuilderFieldOption(value: e, child: Text(tipoSolicitacaoText[e]!))).toList(),
                ),
              ),
              const HeaderText('Descrição'),
              FormBuilder(
                child: FormBuilderTextField(
                  onChanged: (value) => setState(() {
                    descricao = value;
                  }),
                  name: 'descricao',
                ),
              ),
              const SizedBox(height: 16),
              const HeaderText('Foto'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48) / 2,
                    child: GestureDetector(
                      onTap: verImagem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: foto == null ? Assets.images.placeholder.image(fit: BoxFit.contain) : Image.memory(foto!.raw),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48) / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlineButton(
                          onPressed: () => getImate(ImageSource.camera),
                          label: 'Tirar com a câmera',
                        ),
                        const SizedBox(height: 16),
                        OutlineButton(
                          onPressed: () => getImate(ImageSource.gallery),
                          label: 'Selecionar da galeria',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              FullButton(
                onPressed: valid ? salvar : null,
                label: 'Salvar',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
