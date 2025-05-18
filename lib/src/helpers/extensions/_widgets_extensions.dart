import 'package:flutter/material.dart';

extension FitKitSpacingExtension on Widget {
  // Padding a widget on all side
  Widget fPaddingAll(double all) {
    return Padding(padding: EdgeInsetsDirectional.all(all), child: this);
  }

  // Padding a widget from Left Top Right & Bottom side
  Widget fPaddingLTRB(double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(left, top, right, bottom),
      child: this,
    );
  }

  // Padding a widget on any side
  Widget fPaddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: left,
        top: top,
        end: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  // Padding a widget horizontally & vertically
  Widget fPaddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }

  // Margin a widget on all side
  Widget fMarginAll(double all) {
    return Container(margin: EdgeInsetsDirectional.all(all), child: this);
  }

  // Margin a widget from Left Top Right & Bottom side
  Widget fMarginLTRB(double left, double top, double right, double bottom) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(left, top, right, bottom),
      child: this,
    );
  }

  // Margin a widget on any side
  Widget fMarginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        start: left,
        top: top,
        end: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  // Margin a widget horizontally & vertically
  Widget fMarginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(
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
