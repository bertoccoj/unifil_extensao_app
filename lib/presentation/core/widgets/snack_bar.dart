import 'package:flutter/material.dart';

mixin SnackBarHelper<T extends StatefulWidget> on State<T> {
  showSnackBar({
    required String text,
    Duration duration = const Duration(seconds: 2),
  }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
          duration: duration,
        ),
      );
    });
  }
}
