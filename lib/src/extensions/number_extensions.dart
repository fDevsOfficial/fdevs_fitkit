part of '../rendering/fitkit.dart';

///[FitKitExtension] Extension for adaptively scaling numeric values based on screen size.

extension FitKitExtension on num {
  static final _fitInstance = FitKit.instance;

  double get h {
    return _fitInstance.heightScaleRatio * this;
  }

  double get w {
    return _fitInstance.widthScaleRatio * this;
  }

  double get sp {
    return this * _fitInstance._scaleFactor;
  }
}
