import 'package:elberte_com/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData makeAppTheme() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    primaryColorDark: kPrimaryColor,
    highlightColor: kSecondaryColor,
    canvasColor: kBackgroundColor,
    backgroundColor: kBackgroundColor,
    colorScheme: const ColorScheme.dark(primary: kPrimaryColor),
    scaffoldBackgroundColor: kBackgroundColor,
    textTheme: GoogleFonts.latoTextTheme(),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
    ),
  );
}
