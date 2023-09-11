import 'package:flutter/material.dart';

import '../../../core/i_failure.dart';

class FailureViewer extends StatelessWidget {
  final IFailure failure;

  const FailureViewer({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
            size: 100,
          ),
          const SizedBox(height: 20),
          Text(
            failure.titulo,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
