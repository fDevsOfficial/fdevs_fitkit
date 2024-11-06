import 'package:flutter/material.dart';

import '../types/overlay_types.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showCustomSnackBar(
  BuildContext context, {
  Text? content,
  SnackBarAction? action,
  CustomSnackBar? snackBar,
  CustomOverlayType customSnackBarType = CustomOverlayType.success,
  AnimationStyle? snackBarAnimationStyle,
}) {
  assert(
    snackBar != null || content != null,
    'Must use snackBar or content',
  );

  final _theme = Theme.of(context);
  final _holder = ScaffoldMessenger.of(context);
  _holder.clearSnackBars();

  SnackBar _defaultSnackBar() {
    final _styledContent = content?.style == null
        ? Text(
            content!.data!,
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: customSnackBarType.foregroundColor,
            ),
          )
        : content;

    return (snackBar ?? const CustomSnackBar(content: SizedBox.shrink()))
        .copyWith(
      content: _styledContent!,
      action: action,
      backgroundColor: customSnackBarType.backgroundColor,
    );
  }

  return _holder.showSnackBar(
    snackBar ?? _defaultSnackBar(),
    snackBarAnimationStyle: snackBarAnimationStyle,
  );
}

class CustomSnackBar extends SnackBar {
  const CustomSnackBar({
    super.key,
    required super.content,
    super.action,
    super.actionOverflowThreshold,
    super.animation,
    super.backgroundColor,
    super.behavior,
    super.clipBehavior,
    super.closeIconColor,
    super.dismissDirection,
    super.duration,
    super.elevation,
    super.hitTestBehavior,
    super.margin,
    super.onVisible,
    super.padding,
    super.shape,
    super.showCloseIcon,
    super.width,
  });

  CustomSnackBar copyWith({
    Key? key,
    Widget? content,
    SnackBarAction? action,
    double? actionOverflowThreshold,
    Animation<double>? animation,
    Color? backgroundColor,
    SnackBarBehavior? behavior,
    Clip? clipBehavior,
    Color? closeIconColor,
    DismissDirection? dismissDirection,
    Duration? duration,
    double? elevation,
    HitTestBehavior? hitTestBehavior,
    EdgeInsetsGeometry? margin,
    void Function()? onVisible,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    bool? showCloseIcon,
    double? width,
  }) {
    return CustomSnackBar(
      key: key ?? this.key,
      content: content ?? this.content,
      action: action ?? this.action,
      actionOverflowThreshold:
          actionOverflowThreshold ?? this.actionOverflowThreshold,
      animation: animation ?? this.animation,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      behavior: behavior ?? this.behavior,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      closeIconColor: closeIconColor ?? this.closeIconColor,
      dismissDirection: dismissDirection ?? this.dismissDirection,
      duration: duration ?? this.duration,
      elevation: elevation ?? this.elevation,
      hitTestBehavior: hitTestBehavior ?? this.hitTestBehavior,
      margin: margin ?? this.margin,
      onVisible: onVisible ?? this.onVisible,
      padding: padding ?? this.padding,
      shape: shape ?? this.shape,
      showCloseIcon: showCloseIcon ?? this.showCloseIcon,
      width: width ?? this.width,
    );
  }
}
