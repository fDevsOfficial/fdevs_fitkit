part of '../rendering/fitkit.dart';

extension CoolResponsiveMarginPadding on Widget {
  Widget marginAll(double all) => Container(
        margin: EdgeInsets.all(all),
        child: this,
      );

  Widget marginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Container(
        margin: EdgeInsets.only(
          left: left.fWidth,
          top: top.fHeight,
          right: right.fWidth,
          bottom: bottom.fHeight,
        ),
        child: this,
      );

  Widget marginfromLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) =>
      Container(
        margin: EdgeInsets.fromLTRB(
          left.fWidth,
          top.fHeight,
          right.fWidth,
          bottom.fHeight,
        ),
        child: this,
      );

  Widget marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: horizontal.fWidth,
          vertical: vertical.fHeight,
        ),
        child: this,
      );

  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: left.fWidth,
          top: top.fHeight,
          right: right.fWidth,
          bottom: bottom.fHeight,
        ),
        child: this,
      );

  Widget paddingfromLTRB({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding: EdgeInsets.fromLTRB(
          left.fWidth,
          top.fHeight,
          right.fWidth,
          bottom.fHeight,
        ),
        child: this,
      );

  Widget paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal.fWidth,
          vertical: vertical.fHeight,
        ),
        child: this,
      );
}
