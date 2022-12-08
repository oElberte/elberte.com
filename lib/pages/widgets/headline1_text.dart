import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline1Text extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;

  const Headline1Text(
    this.text, {
    this.fontSize,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.oswald(
        color: color ?? Colors.white,
        fontWeight: FontWeight.w900,
        fontSize: fontSize ?? 40,
        height: 1.3,
      ),
    );
  }
}
