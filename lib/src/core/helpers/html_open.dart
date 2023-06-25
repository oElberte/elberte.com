import 'dart:html' as html;

import 'package:flutter/material.dart';

extension HtmlOpen on BuildContext {
  void openLinkedin() {
    html.window.open(
      'https://linkedin.com/in/oelberte/',
      '_blank',
    );
  }

  void openGithub() {
    html.window.open(
      'https://github.com/oElberte',
      '_blank',
    );
  }

  void openWhatsApp() {
    html.window.open(
      'https://wa.me/5534991355629',
      '_blank',
    );
  }

  void openMailTo() {
    html.window.open(
      'mailto:contato@elberte.com',
      '_blank',
    );
  }

  void openApp(String link) {
    html.window.open(
      link,
      '_blank',
    );
  }
}
