import 'package:flutter/material.dart';

class DSizeUtils {
  static Size? _deviceSize;
  static Size _designSize = const Size(375, 812);

  static Widget init(
    BuildContext context, {
    required WidgetBuilder builder,
    Size? designSize,
  }) {
    final _mq = MediaQuery.of(context);
    final _mqSize = _mq.size;

    _designSize = designSize ?? _designSize;

    _deviceSize = (_deviceSize == null ||
            _deviceSize!.height != _mqSize.height - _mq.viewPadding.top)
        ? _mqSize
        : _deviceSize;

    return builder(context);
  }

  static Size get deviceSize => _deviceSize!;

  static double get heightFactor {
    return deviceSize.height / _designSize.height;
  }

  static double get widthFactor {
    return deviceSize.width / _designSize.width;
  }

  static double get scaleFactor {
    return deviceSize.aspectRatio / _designSize.aspectRatio;
  }
}

extension DSizeExtensions on num {
  double get fH => this * DSizeUtils.heightFactor;
  double get fW => this * DSizeUtils.widthFactor;
  double get fScaleFactor => this * DSizeUtils.scaleFactor;
}
