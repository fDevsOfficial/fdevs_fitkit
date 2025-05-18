import 'package:flutter/material.dart';

export 'default_templates/default_templates.dart';

Future<T?> showCustomDialog<T>({
  required BuildContext context,

  /// Use [child] for default color overlay
  Widget? child,
  CustomDialogWrapperProperty? decoration,

  /// Use [builder] for custom widget return
  Widget Function(BuildContext ctx)? builder,
  bool barrierDismissible = true,
  bool useSafeArea = true,
  bool useRootNavigator = false,
  RouteSettings? routeSettings,
  Offset? anchorPoint,
  TraversalEdgeBehavior? traversalEdgeBehavior,
}) async {
  assert(
    (child != null) ^ (builder != null),
    'Either `child` or `builder` must be provided, not both.',
  );
  assert(
    decoration == null || child != null,
    'The `decoration` can only be used when `child` is provided.',
  );

  return await showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    useSafeArea: useSafeArea,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    anchorPoint: anchorPoint,
    traversalEdgeBehavior: traversalEdgeBehavior,
    builder: (ctx) {
      return builder?.call(ctx) ??
          _CustomDialogWrapper(
            decoration: decoration ?? CustomDialogWrapperProperty(),
            child: child!,
          );
    },
  );
}

class _CustomDialogWrapper extends StatelessWidget {
  const _CustomDialogWrapper({
    // ignore: unused_element_parameter
    super.key,
    required this.child,
    required this.decoration,
  });
  final CustomDialogWrapperProperty decoration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      key: key,
      insetPadding: decoration.margin,
      shape: decoration.shape,
      alignment: decoration.alignment,
      backgroundColor: decoration.backgroundColor,
      clipBehavior: decoration.clipBehavior,
      insetAnimationCurve: decoration.insetAnimationCurve,
      insetAnimationDuration: decoration.insetAnimationDuration,
      surfaceTintColor: decoration.surfaceTintColor,
      child: Stack(
        children: [
          Positioned.fill(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/shapes/green_yellow_dialog_overlay.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: decoration.padding ?? EdgeInsets.zero,
            child: child,
          )
        ],
      ),
    );
  }
}

final class CustomDialogWrapperProperty {
  EdgeInsets? margin;
  EdgeInsetsGeometry? padding;
  Color? backgroundColor;
  Color? surfaceTintColor;
  Duration insetAnimationDuration;
  Curve insetAnimationCurve;
  Clip? clipBehavior;
  ShapeBorder? shape;
  AlignmentGeometry? alignment;

  CustomDialogWrapperProperty({
    this.margin = const EdgeInsets.all(16),
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor,
    this.surfaceTintColor,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
    this.clipBehavior,
    this.shape,
    this.alignment,
  });
}
