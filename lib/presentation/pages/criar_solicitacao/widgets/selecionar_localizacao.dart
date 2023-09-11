import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';

import '../../../../domain/localizacao/posicao.dart';

String google(int z, int x, int y) {
  final url =
      'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

  return url;
}

double clamp(double x, double min, double max) {
  if (x < min) x = min;
  if (x > max) x = max;

  return x;
}

class SelecionarLocalizacaoPage extends StatefulWidget {
  final Posicao? posicao;
  const SelecionarLocalizacaoPage({
    Key? key,
    this.posicao,
  }) : super(key: key);

  @override
  State<SelecionarLocalizacaoPage> createState() => _SelecionarLocalizacaoPageState();
}

class _SelecionarLocalizacaoPageState extends State<SelecionarLocalizacaoPage> {
  late MapController controller;
  LatLng? posicao;

  List<LatLng> markers = [];

  @override
  void initState() {
    controller = MapController(
      location: widget.posicao?.toLatLng() ?? const LatLng(0, 0),
    );
    if (widget.posicao != null) {
      markers.add(widget.posicao!.toLatLng());
    }
    super.initState();
  }

  void _onDoubleTap(MapTransformer transformer, Offset position) {
    const delta = 0.5;
    final zoom = clamp(controller.zoom + delta, 2, 18);

    transformer.setZoomInPlace(zoom, position);
    setState(() {});
  }

  void _onTap(MapTransformer transformer, Offset position) {
    posicao = transformer.toLatLng(position);
    markers = [posicao!];

    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;
  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details, MapTransformer transformer) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      setState(() {});
    } else {
      final now = details.focalPoint;
      final diff = now - _dragStart!;
      _dragStart = now;
      transformer.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  Widget _buildMarkerWidget(Offset pos, Color color, [IconData icon = Icons.location_on]) {
    return Positioned(
      left: pos.dx - 24,
      top: pos.dy - 24,
      width: 48,
      height: 48,
      child: GestureDetector(
        child: Icon(
          icon,
          color: color,
          size: 48,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              content: Text('You have clicked a marker!'),
            ),
          );
        },
      ),
    );
  }

  finish() {
    AutoRouter.of(context).pop(posicao != null ? Posicao(latitude: posicao!.latitude, longitude: posicao!.longitude) : null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Markers'),
        ),
        body: MapLayout(
          controller: controller,
          builder: (context, transformer) {
            final markerPositions = markers
                .map(
                  (e) => transformer.toOffset(e),
                )
                .toList();

            final markerWidgets = markerPositions.map(
              (pos) => _buildMarkerWidget(pos, Colors.red),
            );

            final homeLocation = transformer.toOffset(const LatLng(35.68, 51.42));

            final homeMarkerWidget = _buildMarkerWidget(homeLocation, Colors.black, Icons.home);

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onDoubleTapDown: (details) => _onDoubleTap(
                transformer,
                details.localPosition,
              ),
              onTapDown: (details) => _onTap(
                transformer,
                details.localPosition,
              ),
              onScaleStart: _onScaleStart,
              onScaleUpdate: (details) => _onScaleUpdate(details, transformer),
              child: Listener(
                behavior: HitTestBehavior.opaque,
                onPointerSignal: (event) {
                  if (event is PointerScrollEvent) {
                    final delta = event.scrollDelta.dy / -1000.0;
                    final zoom = clamp(controller.zoom + delta, 2, 18);

                    transformer.setZoomInPlace(zoom, event.localPosition);
                    setState(() {});
                  }
                },
                child: Stack(
                  children: [
                    TileLayer(
                      builder: (context, x, y, z) {
                        final tilesInZoom = pow(2.0, z).floor();

                        while (x < 0) {
                          x += tilesInZoom;
                        }
                        while (y < 0) {
                          y += tilesInZoom;
                        }

                        x %= tilesInZoom;
                        y %= tilesInZoom;

                        return CachedNetworkImage(
                          imageUrl: google(z, x, y),
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    homeMarkerWidget,
                    ...markerWidgets,
                    // centerMarkerWidget,
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: finish,
          child: const Icon(Icons.check),
        ));
  }
}
