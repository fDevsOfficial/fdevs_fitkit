import 'dart:ui';

enum CustomOverlayType {
  success(
    backgroundColor: Color(0xff00A551),
    foregroundColor: Color(0xFFFFFFFF),
  ),
  error(
    backgroundColor: Color(0xffe35a2b),
    foregroundColor: Color(0xFFFFFFFF),
  ),
  info(
    backgroundColor: Color(0xff2563EB),
    foregroundColor: Color(0xFFFFFFFF),
  ),
  warning(
    backgroundColor: Color(0xffF59E0B),
    foregroundColor: Color(0xFFFFFFFF),
  ),
  custom;

  final Color? backgroundColor;
  final Color? foregroundColor;

  const CustomOverlayType({this.backgroundColor, this.foregroundColor});
}
