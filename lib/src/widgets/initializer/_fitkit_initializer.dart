import 'package:flutter/material.dart';

class Fitkit extends InheritedWidget {
  const Fitkit._({super.key, Widget? child})
      : super(child: child ?? const SizedBox.shrink());

  static late final Size size;

  factory Fitkit.init({required WidgetBuilder builder}) {
    return Fitkit._(child: Builder(builder: builder));
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
