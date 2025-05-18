import 'package:flutter/material.dart';

import '../../widgets.dart';

Future<T> showAsyncLoadingOverlay<T>(
  BuildContext ctx, {
  required Future<T> Function() asyncFunction,
  Widget? label,
  Widget? loadingWidget,
  Color? overlayColor,
}) async {
  loadingWidget ??= Material(
    type: MaterialType.transparency,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: 50,
          child: CoolLoader.image(color: Theme.of(ctx).colorScheme.primary),
        ),
        const SizedBox.square(dimension: 8),
        if (label != null) label,
      ],
    ),
  );

  final overlay = OverlayEntry(
    builder: (context) => Stack(
      children: [
        Positioned.fill(
          child: ModalBarrier(
            dismissible: false,
            color: overlayColor ?? Colors.black.withValues(alpha: 0.5),
          ),
        ),
        Positioned.fill(child: loadingWidget!),
      ],
    ),
  );
  final overlayState = Overlay.of(ctx, rootOverlay: true);

  try {
    overlayState.insert(overlay);
    return await asyncFunction();
  } finally {
    overlay.remove();
  }
}
