import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'image_service.freezed.dart';

@freezed
class ImageResult with _$ImageResult {
  const factory ImageResult({
    required Uint8List raw,
    required String base64,
    required String path,
  }) = _ImageResult;
}

@lazySingleton
class ImageService {
  Future<Either<Unit, ImageResult>> getImage(ImageSource source) async {
    try {
      final result = await ImagePicker().getImage(source: source);
      if (result != null) {
        final raw = await result.readAsBytes();
        return right(
          ImageResult(
            raw: raw,
            base64: const Base64Encoder().convert(raw),
            path: result.path,
          ),
        );
      }
      return left(unit);
    } catch (e) {
      print(e);
      return left(unit);
    }
  }
}
