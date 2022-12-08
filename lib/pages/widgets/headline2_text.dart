import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline2Text extends StatelessWidget {
  final String text;
  final double? fontSize;
  const Headline2Text({
    required this.text,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.oswald(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: fontSize ?? 18,
      ),
    );
  }
}
