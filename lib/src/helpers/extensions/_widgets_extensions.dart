import 'package:flutter/material.dart';

extension FitKitSpacingExtension on Widget {
  // Padding a widget on all side with responsive value
  Widget fPaddingAll(double all) {
    return Padding(padding: EdgeInsets.all(all), child: this);
  }

  // Padding a widget from Left Top Right & Bottom side with responsive value
  Widget fPaddingLTRB(double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  // Padding a widget on any side with responsive value
  Widget fPaddingOnly({
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
  Widget fPaddingSymmetric({
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
  Widget fMarginAll(double all) {
    return Container(margin: EdgeInsets.all(all), child: this);
  }

  // Margin a widget from Left Top Right & Bottom side with responsive value
  Widget fMarginLTRB(double left, double top, double right, double bottom) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  // Margin a widget on any side with responsive value
  Widget fMarginOnly({
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
  Widget fMarginSymmetric({
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

  Widget fSizedBox({Size? size}) {
    return SizedBox.fromSize(
      size: size,
      child: this,
    );
  }
}

extension FDevsHandyWidgetExtensions on Widget {
  // Unfocuses on tap outside
  Widget unfocusPrimary() {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: this,
    );
  }
}
