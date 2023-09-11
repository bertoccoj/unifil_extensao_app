import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class VerFotoPage extends StatelessWidget {
  final ImageProvider provider;

  const VerFotoPage({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foto'),
      ),
      body: PhotoView(
        imageProvider: provider,
      ),
    );
  }
}
