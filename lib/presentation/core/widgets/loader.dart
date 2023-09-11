import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../generated/l10n.dart';

class WaitLoadingOverlay extends StatelessWidget {
  final BuildContext context;
  final String? text;

  const WaitLoadingOverlay({
    super.key,
    required this.context,
    this.text,
  });

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Theme.of(context).primaryColor,
      height: MediaQuery.of(this.context).size.height,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text ?? S.current.aguarde,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const SpinKitCircle(
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

mixin Loader<T extends StatefulWidget> on State<T> {
  showWaitLoading({String? text}) {
    context.loaderOverlay.show(
      widget: WaitLoadingOverlay(
        text: text,
        context: context,
      ),
    );
  }

  hideWaitLoading() {
    if (context.loaderOverlay.visible && context.loaderOverlay.overlayWidgetType == WaitLoadingOverlay) {
      context.loaderOverlay.hide();
    }
  }
}
