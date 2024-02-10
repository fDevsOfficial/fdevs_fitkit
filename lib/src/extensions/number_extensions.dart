part of '../rendering/fitkit.dart';

///[FitKitReponsiveNumbers] Extension for adaptively scaling numeric values based on screen size.
extension FitKitReponsiveNumbers on num {
  /// Calculates the ratio between the design height and actual screen height.
  double get _heightFactor => _designSize.height / _mediaQueryData.size.height;

  /// Calculates the ratio between the design width and actual screen width.
  double get _widthFactor => _designSize.width / _mediaQueryData.size.width;

  /// [fHeight] Scales the number based on the height factor for adaptive layout.
  double get fHeight => this * _heightFactor;

  /// [fWidth] Scales the number based on the width factor for adaptive layout.
  double get fWidth => this * _widthFactor;
}
