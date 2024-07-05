import 'package:flutter/widgets.dart';

part '../extensions/number_extensions.dart';
part '../extensions/widget_extensions.dart';

class FitKit {
  /// Singleton Instance
  FitKit._();
  static FitKit? _instance;
  static FitKit get instance => _instance ??= FitKit._();

  /// Toolkit initializer
  static Widget init({
    required BuildContext context,
    required WidgetBuilder builder,
    Size designSize = const Size(375, 812),
  }) {
    final _mq = MediaQuery.of(context);
    instance._calculateValues(_mq, designSize);
    return builder(context);
  }

  /// Required Value Provider
  void _calculateValues(MediaQueryData mq, Size designSize) {
    _heightScaleRatio = mq.size.height / designSize.height;
    _widthScaleRatio = mq.size.width / designSize.width;

    _scaleFactor = (mq.size.width + mq.size.height) /
        (designSize.width + designSize.height);

    screenSize = mq.size;
  }

  Size? screenSize;
  double _heightScaleRatio = 0;
  double _widthScaleRatio = 0;
  double _scaleFactor = 0;

  double get heightScaleRatio => _heightScaleRatio;
  double get widthScaleRatio => _widthScaleRatio;
  double get scaleFactor => _scaleFactor;
}
