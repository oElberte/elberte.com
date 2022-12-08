import 'dart:html' as html;

import 'package:elberte_com/utils/constants.dart';

void htmlOpen(String link) {
  html.window.open(
    'https://$link',
    '_blank',
  );
}

void mailTo() {
  html.window.open(
    kMailTo,
    '_blank',
  );
}