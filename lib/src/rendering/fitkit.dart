// ignore_for_file: unused_element

import 'dart:ui';
import 'package:flutter/widgets.dart';

part '../extensions/widget_extensions.dart';
part '../extensions/number_extensions.dart';

late MediaQueryData _mediaQueryData;

late Size _designSize;

class FitKit {
  FitKit._();

  static Widget init({
    /// This [view] takes the Device Screen Size from The Current Platform
    FlutterView? view,

    /// This [context] takes the Device Screen Size from The Current Viewport

    BuildContext? context,

    /// Takes Material or Cupertino App
    required Widget child,

    /// This [designSize] takes the Design Screen Size from base design (i.e: Figma, Sketch, etc)
    Size designSize = const Size(375, 812),
  }) {
    // Throw error if both context and view are null
    assert(
      context != null || view != null,
      'Either context or view must be provided, but not both.',
    );

    /// Initialize MediaQueryData
    _mediaQueryData = context != null
        ? MediaQuery.of(context)
        : MediaQueryData.fromView(view!);
    _designSize = designSize;

    /// Finally return the child
    return child;
  }
}
