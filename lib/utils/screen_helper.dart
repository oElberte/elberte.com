import 'package:flutter/material.dart';

class ScreenHelper extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const ScreenHelper({
    required this.desktop,
    required this.tablet,
    required this.mobile,
    super.key,
  });

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1200) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
