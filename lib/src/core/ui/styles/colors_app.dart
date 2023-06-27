import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => Colors.purple;
  Color get secondary => Colors.purple[400]!;
  Color get black => const Color(0XFF151717);
  // Color get black => const Color(0XFF140E0E);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
