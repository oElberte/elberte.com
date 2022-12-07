import 'dart:html' as html;

import 'package:elberte_com/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/intro_item.dart';
import '../../../utils/constants.dart';

IntroItemModel introItem = IntroItemModel(
  text: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "MOBILE DEVELOPER",
        style: GoogleFonts.oswald(
          color: kPrimaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 18),
      Text(
        'ELBERTE\nPLINIO',
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w900,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 10),
      const Text(
        'Flutter como linguagem principal para desenvolvimento.',
        style: TextStyle(
          color: kCaptionColor,
          fontSize: 15,
          height: 1,
        ),
      ),
      const SizedBox(height: 5),
      Wrap(
        children: [
          const Text(
            'Precisa de um aplicativo? ',
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15,
              height: 1.5,
            ),
          ),
          GestureDetector(
            onTap: () => Globals().scrollToIndex(4),
            child: const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'Fale comigo.',
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 25),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: TextButton(
            onPressed: () => html.window.open(
              kLinkedinLink,
              '_blank',
            ),
            child: const Text(
              'SAIBA MAIS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )
    ],
  ),
  image: Image.asset(
    'assets/elberte.png',
    fit: BoxFit.contain,
    width: 400,
    height: 400,
  ),
);
