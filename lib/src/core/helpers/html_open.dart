import 'dart:html' as html;

import 'package:flutter/material.dart';

extension HtmlOpen on BuildContext {
  void openLinkedin() {
    html.window.open(
      'https://www.linkedin.com/in/oelberte/',
      '_blank',
    );
  }
}
