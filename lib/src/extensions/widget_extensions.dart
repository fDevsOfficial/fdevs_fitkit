part of '../rendering/fitkit.dart';

extension FitKitSpacingExtension on Widget {
  static final _fitInstance = FitKit.instance;

  // Padding a widget on all side with responsive value
  Widget paddingAll(double all) {
    return Padding(padding: EdgeInsets.all(all), child: this);
  }

  // Padding a widget from Left Top Right & Bottom side with responsive value
  Widget paddingLTRB(double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  // Padding a widget on any side with responsive value
  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  // Padding a widget horizontally & vertically with responsive value
  Widget paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }

  // Margin a widget on all side with responsive value
  Widget marginAll(double all) {
    return Container(margin: EdgeInsets.all(all), child: this);
  }

  // Margin a widget from Left Top Right & Bottom side with responsive value
  Widget marginLTRB(double left, double top, double right, double bottom) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  // Margin a widget on any side with responsive value
  Widget marginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  // Margin a widget horizontally & vertically with responsive value
  Widget marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }
}
