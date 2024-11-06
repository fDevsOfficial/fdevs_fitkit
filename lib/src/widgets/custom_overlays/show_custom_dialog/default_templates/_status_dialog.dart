import 'package:flutter/material.dart';

import '../../../../helpers/helpers.dart';
import '../../types/overlay_types.dart';
import '../../../cool_loader/cool_loader.dart';

class StatusDialog extends StatelessWidget {
  const StatusDialog({
    super.key,
    this.type = CustomOverlayType.custom,
    this.showLoader = false,
    this.center,
  });

  final CustomOverlayType type;

  /// Infinite Loader
  final bool showLoader;

  /// Widget to show on top of the splash shape
  final Widget? center;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/shapes/circle_splash_effect.png',
                  color: type.backgroundColor,
                ),
              ),
              if (center != null) Center(child: center),
            ],
          ).fSizedBox(size: const Size.square(105)).fMarginOnly(bottom: 30),
          Text(
            'Congratulations!',
            style: _theme.textTheme.headlineSmall,
          ).fMarginOnly(bottom: 8.fH),
          Text(
            'Your account is ready to use. You will be redirected to the Login page in a few seconds.',
            textAlign: TextAlign.center,
            style: _theme.textTheme.bodyLarge?.copyWith(
              color: const Color(0xff686868),
            ),
          ).fMarginOnly(bottom: 30),

          /// Infinite Loader
          if (showLoader)
            CoolLoader.image(
              color: type.backgroundColor,
            ).fSizedBox(size: const Size.square(60)),
        ],
      ),
    );
  }
}
