import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';

class ModalContactItem extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String contact;

  const ModalContactItem({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/contact/$imageAsset.png',
              width: 30,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 15),
            Text(
              title.toUpperCase(),
              style: GoogleFonts.oswald(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            if (title == 'WhatsApp') {
              html.window.open(
                kWhatsAppLink,
                '_blank',
              );
            } else {
              html.window.open(
                kMailTo,
                '_blank',
              );
            }
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              contact,
              style: const TextStyle(
                color: kCaptionColor,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
