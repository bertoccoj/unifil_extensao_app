import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final void Function()? onClick;

  const CachedImage({Key? key, this.onClick, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      clipBehavior: Clip.hardEdge,
      fit: BoxFit.cover,
      child: GestureDetector(
        onTap: onClick,
        child: CachedNetworkImage(imageUrl: url),
      ),
    );
  }
}
