import 'package:flutter/material.dart';
import 'package:minha_cidade/generated/l10n.dart';

import '../../../core/i_failure.dart';

class FailureViewer extends StatelessWidget {
  final IFailure failure;
  final VoidCallback? onRetry;
  final String? onRetryLabel;

  const FailureViewer({Key? key, required this.failure, this.onRetry, this.onRetryLabel}) : super(key: key);

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
          if (onRetry != null)
            TextButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(
                onRetryLabel ?? S.current.failureRetry,
              ),
            ),
        ],
      ),
    );
  }
}
